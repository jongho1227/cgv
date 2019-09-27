package com.yi.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yi.domain.Login;
import com.yi.domain.Reservation;
import com.yi.domain.RunTheater;
import com.yi.domain.RunTime;
import com.yi.domain.ThInfo;
import com.yi.service.ReservationServiceHandlerImpl;

@Controller
@RequestMapping("/reserve")
public class ReserveController {
	private static final Logger logger = LoggerFactory.getLogger(ReserveController.class);
	
	@Autowired
	ReservationServiceHandlerImpl rService;
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping(value="displayFile", method=RequestMethod.GET)
	public @ResponseBody ResponseEntity<byte[]> displayFile(String filename) throws IOException{
		logger.info("===================displayFile, filename="+filename);
		
		String formatName = filename.substring(filename.lastIndexOf(".")+1);//확장자만 뽑아냄
		MediaType mType = null;
		ResponseEntity<byte[]> entity;
		if(formatName.equalsIgnoreCase("jpg")) {
			mType = MediaType.IMAGE_JPEG;
		}else if(formatName.equalsIgnoreCase("gif")) {
			mType = MediaType.IMAGE_GIF;
		}else if(formatName.equalsIgnoreCase("png")) {
			mType = MediaType.IMAGE_PNG;
		}
		InputStream in = null;
		try {
			HttpHeaders headers = new HttpHeaders();
			in = new FileInputStream(uploadPath+"/"+filename);
			headers.setContentType(mType);
		
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);
			
		}catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		}finally {
			in.close();
		}
		return entity;
	}
	
	@RequestMapping(value ="/showTimes", method = RequestMethod.GET)
	public void showTimes() throws Exception {
		logger.info("=================showTimes");
		
	}
	
	@RequestMapping(value ="/showTimesData", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> showTimesData() throws Exception {
		logger.info("=================showTimesData");
		
		// 상영중인 영화 정보를 넘겨야함.
		// 여기 들어올때 현재시간 이랑 비교해서 시작시간이 15분 안쪽이면 마감시킴. 0
		// 상영되는 영화가 있는 날짜, 각 날짜에 상영되는 영화리스트.
		// 각 리스트에서 영화정보를 가지고옴.
		// 필요한 정보 : 영화제목, 등급, 장르, 상영시간, 개봉일, 상영하는 영화관, 관종류, 총좌석수, 현재남은 좌석수, 영화시작시간
		ResponseEntity<Map<String, Object>> entity = null;
		
		//1. 마감시킬영화 마감.
		
		List<RunTime> rList = rService.selectAll(); // 현재 상영중인 영화
		logger.info("===========rList 영화 :"+rList.size());
		if(rList.size()>0) {
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
				if(closeOne==null) {
					Map<String, Object> map = new HashMap<>();
					map.put("no", "no");
					entity = new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
					return entity;
				}
				Date closeDates = closeOne.getThStart();
				st = new SimpleDateFormat("yyyy-MM-dd");
				
				String closeDate = st.format(closeDates);
			
			
			List<RunTime> cList = rService.selectDateClose(closeDate);  // 최근 상영되는 날짜의 영화들의 번호. 중복제거함.
			
			logger.info("cList  :"+cList.toString());
			Map<String, Object> map = new HashMap<>();
			map.put("stM", stM);
			map.put("cList", cList);
			entity = new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
			
			return entity;
			
		}else {
			Map<String, Object> map = new HashMap<>();
			map.put("no", "no");
			entity = new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
			return entity;
		}
		
		
		

	}
	
	@RequestMapping(value ="/showTimes", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> showTimesPost(@RequestBody Map<String, String> dmap) throws Exception {
		logger.info("=================showTimesPost");
		logger.info("=================showDate="+dmap.get("closeDate"));
		ResponseEntity<Map<String, Object>> entity = null;
		String closeDate = dmap.get("closeDate");
		
		List<RunTime> cList = rService.selectDateClose(closeDate);  // 최근 상영되는 날짜의 영화들의 번호. 
		
		logger.info("cList  :"+cList.toString());
		Map<String, Object> map = new HashMap<>();
		map.put("cList", cList);
		entity = new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
		
		return entity;
		
	}
	
	
	@RequestMapping(value ="/selectSeat", method = RequestMethod.GET)
	public void selectSeat(String rtNumber, String reMain, String all,long start, long end, String movie, String img,Model model) throws Exception {
		logger.info("=================selectSeat");
		logger.info("=================rtNumber="+rtNumber);
		List<RunTheater> list = rService.selectUnReserve(rtNumber);
		logger.info("=================list="+list.toString());
		logger.info("=================reMain="+reMain);
		logger.info("=================all="+all);
		logger.info("=================start="+start);
		logger.info("=================end="+end);
		Date startDate = new Date(start);
		Date endDate = new Date(end);
		SimpleDateFormat st = new SimpleDateFormat("yyyy.MM.dd");
		String startDay = st.format(startDate);
		model.addAttribute("startDay", startDay);
		st = new SimpleDateFormat("kk:mm");
		String startTime = st.format(startDate);
		String endTime = st.format(endDate);
		st = new SimpleDateFormat("E");
		String day = st.format(startDate);
		model.addAttribute("startTime", startTime);
		model.addAttribute("day", day);
		model.addAttribute("endTime", endTime);
		model.addAttribute("rtNumber", rtNumber);
		model.addAttribute("reMain", reMain);
		model.addAttribute("all", all);
		model.addAttribute("movie", movie);
		model.addAttribute("img", img);
	}
	
	
	@RequestMapping(value ="/showTimesKwan", method = RequestMethod.GET)
	public ResponseEntity<List<RunTheater>> showTimesKwan(String rtNumber) throws Exception {
		logger.info("=================showTimesKwan");
		logger.info("=================rtNumber="+rtNumber);
		List<RunTheater> list = rService.selectUnReserve(rtNumber);
		ThInfo kwna = rService.selectName(list.get(0).getThName());
		for(RunTheater r : list) {
			r.getStructure().setThName(kwna);
		}
		ResponseEntity<List<RunTheater>> entity = new ResponseEntity<>(list, HttpStatus.OK);
		
		return entity;
	}
	@RequestMapping(value ="/pay", method = RequestMethod.GET)
	public void pay(int rtNumber, String seat, String person, String totalprice, String kwan, HttpServletRequest req) throws Exception {
		logger.info("=================pay");
		logger.info("=================pay = "+rtNumber);
		logger.info("=================pay = "+seat);
		logger.info("=================pay = "+person);
		logger.info("=================pay = "+totalprice.substring(0, totalprice.length()-1));
		String kwan2 = kwan.substring(0, 2);
		// 아이디랑, 상영번호, 인원, 금액
		String[] seatN = seat.split(",");
		int number = seatN.length;
		Login login = (Login) req.getSession().getAttribute("Auth");
		String id = login.getUserid();
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("rtNumber", rtNumber);
		map.put("number", number);
		map.put("totalprice", totalprice.substring(0, totalprice.length()-1));
		map.put("seat", seat);
		map.put("kwan", kwan2);
		/*rService.outReservation(map);*/
		
	}
}









