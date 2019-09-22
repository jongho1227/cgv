package com.yi.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.Movie;
import com.yi.domain.RunTime;
import com.yi.domain.ThInfo;
import com.yi.dpseudo.Showtimes;
import com.yi.dpseudo.ShowtimesMovie;
import com.yi.dpseudo.Showtimeskwan;
import com.yi.service.ReservationServiceHandlerImpl;

@Controller
@RequestMapping("/reserve")
public class ReserveController {
	private static final Logger logger = LoggerFactory.getLogger(ReserveController.class);
	
	@Autowired
	ReservationServiceHandlerImpl rService;
	@RequestMapping(value ="/showTimes", method = RequestMethod.GET)
	public void showTimes(Model model) throws Exception {
		logger.info("=================showTimes");
		// 상영중인 영화 정보를 넘겨야함.
		// 여기 들어올때 현재시간 이랑 비교해서 시작시간이 15분 안쪽이면 마감시킴. 0
		// 상영되는 영화가 있는 날짜, 각 날짜에 상영되는 영화리스트.
		// 각 리스트에서 영화정보를 가지고옴.
		// 필요한 정보 : 영화제목, 등급, 장르, 상영시간, 개봉일, 상영하는 영화관, 관종류, 총좌석수, 현재남은 좌석수, 영화시작시간
		
		
		//1. 마감시킬영화 마감.
		
		List<RunTime> rList = rService.selectAll(); // 현재 상영중인 영화
		for(RunTime r : rList) {
			logger.info("===========상영중 영화 :"+r.toString());
			Date cDate = new Date(); // 현재시간.
			Date rDate = r.getThStart(); // 시작시간.
			
			int a = (int) ((rDate.getTime()-cDate.getTime())/(1000*60));
			logger.info("===========분 :"+a);
			
			if(a<16) { // 15분 안쪽이면 마감.
				logger.info("===========마감되는영화 :"+r.getRtName());
				rService.endRmovie(r);
			}
		}
		// 상영되는 영화가 있는 날짜, 각 날짜에 상영되는 영화리스트.
		// 각 리스트에서 영화정보를 가지고옴.
		// 필요한 정보 : 영화제목, 등급, 장르, 상영시간, 개봉일, 
		//           영화시작시간, 상영하는 영화관, 관종류, 총좌석수, 현재남은 좌석수
		SimpleDateFormat st = new SimpleDateFormat("yyyy-MM-dd kk:mm E");
		rList = rService.selectAll();
		
		List<String> stM = new ArrayList<>(); // 영화 상영되는 날짜
		for(RunTime r : rList) { 
			Date sDate = r.getThStart();
			String startMovie = st.format(sDate);
			stM.add(startMovie);
			if(stM.size()>1 && (stM.get(stM.size()-1)).substring(0, 10).equals((stM.get(stM.size()-2)).substring(0, 10))) {
				stM.remove(stM.size()-1);
			}
		}
		
		RunTime closeOne = rService.selectOneClose(); // 마감시키고 난 후 상영중인 영화 중 가장 빠른 날꺼.
		Date closeDate = closeOne.getThStart();
		st = new SimpleDateFormat("yyyy-MM-dd");
		List<RunTime> cList = rService.selectDateClose(st.format(closeDate));  // 최근 상영되는 날짜의 영화들
		
		
		
		List<ShowtimesMovie> ShowtimesMovieList = new ArrayList<>();
		List<Showtimeskwan> ShowtimeskwanList = new ArrayList<>();
		List<Showtimes> showtimesList = new ArrayList<>();
		List<Movie> mvlist = new ArrayList<>();
		List<String> kwanName = new ArrayList<>(); //관이름.
		
		
		st = new SimpleDateFormat("yyyy-MM-dd kk:mm E");
		int a = 1;
		for(RunTime r : cList) { // 최근 상영되는 영화들이 영화이름, 영화관, 시간 순으로 들어옴.
			Movie mv = rService.selectMovie(r.getMvNumber());
			logger.info("===========동작 순차 :"+a);
			mvlist.add(mv);
			
			
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("no", r.getRtNumber());	
			map.put("kwan", r.getThName().getThName());
			String all = rService.selectAllSeat(map).size()+"석"; // 총 좌석수
			String remain = rService.selectUnReserve(map).size()+"석"; // 남은 좌석수.	
			
			ThInfo info = rService.selectName(r.getThName().getThName()); // 관 정보
			
			Date sDate = r.getThStart();
			String startMovie = st.format(sDate).substring(11, 16);// 영화 시작시간. yyyy-MM-dd kk:mm
			
			kwanName.add(info.getThName()); // 관이름.
			
			Showtimes show = null;
			show = new Showtimes();
			show.setRemainSeat(remain);
			show.setStart(startMovie);
			
			showtimesList.add(show); // 시간과 좌석을 리스트에 추가함. 이건 반복할때마다 들어가야함. 영화이름과 관이 같으면 들어감.
			logger.info("===========showtimesList:"+showtimesList.toString()); 
			
			Showtimeskwan showtimeskwan = null;
			showtimeskwan = new Showtimeskwan();
			showtimeskwan.setKwanKind(info.getThKinds());
			showtimeskwan.setKwanName(info.getThName());
			showtimeskwan.setAllSeat(all);
			
			List<Showtimes> showList = new ArrayList<>();
			showList.addAll(showtimesList);
			
			showtimeskwan.setShowtimes(showList);
			logger.info("===========관:"+showtimeskwan.toString()); 
			ShowtimeskwanList.add(showtimeskwan);	// 관에 시간표를 붙임.
			logger.info("===========관/시간:"+ShowtimeskwanList.toString()); 
			
			
			if(a==cList.size() && mvlist.get(mvlist.size()-1).getMvNumber()==mvlist.get(mvlist.size()-2).getMvNumber()) {
				logger.info("===========마지막 순차 : 영화이름이 같음:"); 
				mvlist.remove(mvlist.size()-1);
				ShowtimesMovie ShowtimesMovie = new ShowtimesMovie();
				logger.info("===========추가되는영화:"+mv.getMvTitle()); 
				ShowtimesMovie.setMovie(mv);
				
				List<Showtimeskwan> kwanList = new ArrayList<>();
				kwanList.addAll(ShowtimeskwanList);
				logger.info("===========kwanList:"+kwanList.toString()); // 마지막에 중복되어서 들어감.
				
				ShowtimesMovie.setShowtimeskwan(kwanList);
				ShowtimesMovieList.add(ShowtimesMovie);
				break;
			}else if(a==cList.size() && mvlist.get(mvlist.size()-1).getMvNumber()!=mvlist.get(mvlist.size()-2).getMvNumber()) {
				logger.info("===========마지막 순차 : 영화이름이 다름:");
				ShowtimesMovie ShowtimesMovie = new ShowtimesMovie();
				logger.info("===========추가되는영화:"+mvlist.get(mvlist.size()-2).getMvTitle()+mv.getMvTitle()); 
				ShowtimesMovie.setMovie(mvlist.get(mvlist.size()-2));
				ShowtimeskwanList.remove(ShowtimeskwanList.size()-1);
				
				List<Showtimeskwan> kwanList = new ArrayList<>();
				kwanList.addAll(ShowtimeskwanList);
				
				ShowtimesMovie.setShowtimeskwan(kwanList);
				ShowtimesMovieList.add(ShowtimesMovie);
				
				ShowtimeskwanList = new ArrayList<>();
				showtimesList = new ArrayList<>();
				showtimesList.add(show);
				showtimeskwan.setShowtimes(showtimesList);
				ShowtimeskwanList.add(showtimeskwan);
				
				ShowtimesMovie = new ShowtimesMovie();
				ShowtimesMovie.setMovie(mv);
				ShowtimesMovie.setShowtimeskwan(ShowtimeskwanList);
				ShowtimeskwanList.add(showtimeskwan);
				ShowtimesMovieList.add(ShowtimesMovie);
				break;
			}
			
			
		
			if(mvlist.size()>1 && mvlist.get(mvlist.size()-1).getMvNumber()==mvlist.get(mvlist.size()-2).getMvNumber()) {
				logger.info("===========영화이름이 같음:"); 
				mvlist.remove(mvlist.size()-1);
				
				if(kwanName.get(kwanName.size()-1).equals(kwanName.get(kwanName.size()-2)) ) {// 최근 두개 영화이름이 같고, 관이름도 같으면
					logger.info("===========영화관이름도 같음:"); 
						logger.info(ShowtimeskwanList.toString());
						ShowtimeskwanList.remove(ShowtimeskwanList.size()-2); // 중복된 관 중 맨 앞에서 지움.
						logger.info(ShowtimeskwanList.toString());
				}else if(!kwanName.get(kwanName.size()-1).equals(kwanName.get(kwanName.size()-2))) {// 최근 두개 영화이름이 같은데, 관이름은 다르다.
					logger.info("===========영화이름은 같은데 관이름은 다름:");
						Showtimeskwan kwan = ShowtimeskwanList.get(ShowtimeskwanList.size()-1);
						ShowtimeskwanList.remove(ShowtimeskwanList.size()-1);
						Showtimes shows = kwan.getShowtimes().get(kwan.getShowtimes().size()-1);
						List<Showtimes> showL = new ArrayList<>();
						showL.add(shows);
						showtimesList = showL;
						showtimeskwan.setShowtimes(showL);
						ShowtimeskwanList.add(showtimeskwan);
						logger.info("===========관/시간:"+ShowtimeskwanList.toString()); 
						
						
				}
				
				
			}else if(mvlist.size()>1 && mvlist.get(mvlist.size()-1).getMvNumber()!=mvlist.get(mvlist.size()-2).getMvNumber()) {
				logger.info("===========영화이름이 다름:"); 
				ShowtimesMovie ShowtimesMovie = new ShowtimesMovie();
				logger.info("===========추가되는영화:"+mvlist.get(mvlist.size()-2).getMvTitle()); 
				ShowtimesMovie.setMovie(mvlist.get(mvlist.size()-2));
				ShowtimeskwanList.remove(ShowtimeskwanList.size()-1);
				logger.info("===========관/시간:"+ShowtimeskwanList.toString()); 
				
				List<Showtimeskwan> kwanList = new ArrayList<>();
				kwanList.addAll(ShowtimeskwanList);
				
				ShowtimesMovie.setShowtimeskwan(kwanList);
				ShowtimesMovieList.add(ShowtimesMovie);
				
				logger.info("===========ShowtimesMovieList:"+ShowtimesMovieList.toString()); 
				
				ShowtimeskwanList = new ArrayList<>();
				showtimesList = new ArrayList<>();
				showtimesList.add(show);
				logger.info("===========showtimesList:"+showtimesList.toString()); 
				showtimeskwan.setShowtimes(showtimesList);
				ShowtimeskwanList.add(showtimeskwan); 
				logger.info("===========ShowtimeskwanList:"+ShowtimeskwanList.toString()); 		
			}
			
			
			a++;
		}
		logger.info("===========영화목록 :"+mvlist.toString());
		logger.info("===========영화목록 :"+ShowtimesMovieList.toString());
	
		model.addAttribute("stM", stM);
		model.addAttribute("showtimesMovieList", ShowtimesMovieList);
	}
	
	@RequestMapping(value ="/showTimes", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> showTimesPost(@RequestBody Map<String, String> dmap) throws Exception {
		logger.info("=================showTimesPost");
		logger.info("=================showDate="+dmap.get("showDate"));
		ResponseEntity<Map<String, Object>> entity = null;
		String showDate = dmap.get("showDate");
		//1. 마감시킬영화 마감.
		
		List<RunTime> rList = rService.selectAll(); // 현재 상영중인 영화
		for(RunTime r : rList) {
			logger.info("===========상영중 영화 :"+r.toString());
			Date cDate = new Date(); // 현재시간.
			Date rDate = r.getThStart(); // 시작시간.
			
			int a = (int) ((rDate.getTime()-cDate.getTime())/(1000*60));
			logger.info("===========분 :"+a);
			
			if(a<16) { // 15분 안쪽이면 마감.
				logger.info("===========마감되는영화 :"+r.getRtName());
				rService.endRmovie(r);
			}
		}
		// 상영되는 영화가 있는 날짜, 각 날짜에 상영되는 영화리스트.
		// 각 리스트에서 영화정보를 가지고옴.
		// 필요한 정보 : 영화제목, 등급, 장르, 상영시간, 개봉일, 
		//           영화시작시간, 상영하는 영화관, 관종류, 총좌석수, 현재남은 좌석수
		SimpleDateFormat st = new SimpleDateFormat("yyyy-MM-dd kk:mm E");
		rList = rService.selectDateAll(showDate); // 마감시키고 난 후 특정일 상영중인 영화(상영시간순으로) 리스트.
		logger.info("===========특정일 상영중인 영화 갯수 :"+rList.size()); 
		List<String> movieName = new ArrayList<>();
		for(RunTime r : rList) {
			
			Movie mv = rService.selectMovie(r.getMvNumber()); 
			logger.info("===========영화정보 :"+mv.toString()); // 영화제목, 등급, 장르, 상영시간, 개봉일
			movieName.add(mv.getMvTitle());
			if(movieName.size()>1 && movieName.get(movieName.size()-1).equals(movieName.get(movieName.size()-2))) {
				movieName.remove(movieName.size()-1);
			}
			Date sDate = r.getThStart();
			logger.info("===========영화시작시간:"+sDate.getTime()); 
			String startMovie = st.format(sDate);// 영화 시작시간. yyyy-MM-dd kk:mm
			logger.info("===========영화시작시간:"+startMovie); 
			ThInfo info = rService.selectName(r.getThName().getThName());
			logger.info("===========영화관정보 :"+info.toString()); // 상영하는 영화관 정보.
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("no", r.getRtNumber());
			logger.info("===========상영번호 :"+r.getRtNumber()); 
			map.put("kwan", r.getThName().getThName());
			logger.info("===========영화관이름 :"+r.getThName().getThName());	
			int all = rService.selectAllSeat(map).size(); // 총 좌석수
			int remain = rService.selectUnReserve(map).size(); // 남은 좌석수.
			logger.info("===========총좌석수 :"+all);
			logger.info("===========남은좌석수 :"+remain);
		
		}
		Map<String, Object> list = new HashMap<>();
		
		list.put("movieName", movieName);
		entity = new ResponseEntity<Map<String, Object>>(list, HttpStatus.OK);
		
		return entity;
		
	}
	
}









