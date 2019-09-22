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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yi.domain.Movie;
import com.yi.domain.RunTime;
import com.yi.domain.Structure;
import com.yi.domain.ThInfo;
import com.yi.service.MovieServiceHandlerDao;
import com.yi.service.TheaterServiceHandlerDao;
import com.yi.util.UploadFileUtils;

@Controller
@RequestMapping("/manager")
public class ManagerMovieController {
	private static final Logger logger = LoggerFactory.getLogger(ManagerMovieController.class);
	
	@Autowired
	MovieServiceHandlerDao mService;
	@Autowired
	TheaterServiceHandlerDao tService;
	
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
	
	
	@RequestMapping(value="/insertMovie", method=RequestMethod.GET)
	public void insertMovie() throws Exception{
		logger.info("==============================insertMovie");
		
	}
	
	@RequestMapping(value="/deleteMovie", method=RequestMethod.GET)
	public void deleteMovie(Model model) throws Exception{
		logger.info("==============================deleteMovie");
		List<Movie> mList = mService.selectMovieAll();
		model.addAttribute("mList", mList);
		
	}
	@RequestMapping(value="/insertRuntimeMovie", method=RequestMethod.GET)
	public void insertRuntimeMovie(Model model) throws Exception{
		List<ThInfo> list = tService.theaterList();
		List<Movie> mList = mService.selectMovieAll();
		List<String> slist = new ArrayList<>();
		for(Movie mv : mList) {
			long start = mv.getMvStart().getTime();
			String a = start+"";
			slist.add(a);
		}
		model.addAttribute("list", list);
		model.addAttribute("slist", slist);
		model.addAttribute("mList", mList);
		logger.info("==============================insertRuntimeMovie");
		
	}
	
	
	@RequestMapping(value="/updateMovie", method=RequestMethod.GET)
	public void updateMovie(Model model) throws Exception{
		logger.info("==============================updateMovie");
		List<Movie> mList = mService.selectMovieAll();
		List<String> list = new ArrayList<>();
		for(Movie mv : mList) {
			long start = mv.getMvStart().getTime();
			String a = start+"";
			list.add(a);
		}
		
		model.addAttribute("mList", mList);
		model.addAttribute("list", list);
		
	}
	
	
	
	@RequestMapping(value="/updateRMovie", method=RequestMethod.GET)
	public void updateRMovie(Model model) throws Exception{
		logger.info("==============================updateRMovie");
		Movie mv = mService.selectFirst();
		logger.info("==============================mv :"+mv.toString());
		List<RunTime> list = mService.selectByNN(mv);
		List<RunTime> rList = new ArrayList<RunTime>();
		for(RunTime rt : list) {
			rt.setMvNumber(mv);
			ThInfo info = mService.selectName(rt.getThName().getThName());
			rt.setThName(info);
			rList.add(rt);
			logger.info("==============================rt :"+rt.toString());
		}
		List<Movie> mList = mService.selectMovieAll();
		model.addAttribute("mList", mList);
		model.addAttribute("rList", rList);
		
	}
	
	
	@RequestMapping(value="/updateRMoviePage/{rtNumber}", method=RequestMethod.GET)
	public String updateRMoviePage(@PathVariable int rtNumber, Model model) throws Exception{
		logger.info("==============================updateRMoviePage");
		logger.info("==============================rtNumber : "+ rtNumber);
		RunTime rt = mService.selectByNumber(rtNumber);
		Movie mv =  mService.selectMovie(rt.getMvNumber());
		ThInfo th = mService.selectName(rt.getThName().getThName());
		rt.setMvNumber(mv);
		rt.setThName(th);
		
		long open = mv.getMvStart().getTime();
		
		long start = rt.getThStart().getTime();
		long end = rt.getThEnd().getTime();
		
		List<ThInfo> list = tService.theaterList();
		model.addAttribute("list", list);
		model.addAttribute("runtime", rt);
		model.addAttribute("start", start);
		model.addAttribute("end", end);
		model.addAttribute("open", open);

		return "/manager/updateRMoviePage";
		
	}
	

	
	
	@RequestMapping(value="/insertMovie", method=RequestMethod.POST)
	public String insertMoviePOST(Movie movie,String mvStarts, MultipartFile mvImgs,RedirectAttributes ratt) throws Exception{ 
		logger.info("==============================insertMoviePOST");
		logger.info("영화 :"+movie.getMvTitle());
		logger.info("개봉일 :"+mvStarts);
		logger.info("영화장르 :"+movie.getMvGenre());
		logger.info("상영시간 :"+movie.getMvRuntime());
		logger.info("영화 :"+movie.getMvSummary());
		logger.info("연령제한 :"+movie.getMvAgeLimit());
		logger.info("영화포스터 :"+mvImgs.getOriginalFilename());
		SimpleDateFormat st = new SimpleDateFormat("yyyy-MM-dd");
		Date mvStart = st.parse(mvStarts);
		movie.setMvStart(mvStart);
		String name = UploadFileUtils.uploadFile(uploadPath, mvImgs.getOriginalFilename(), mvImgs.getBytes());
		movie.setMvImg(name);
		mService.insertMovie(movie); // 영화 등록.
		
		ratt.addFlashAttribute("result", "success"); //jsp전달 처음 갈때 전달하고 없어짐!
		
		return "redirect:/manager/insertMovie";
	
	}  
	
	@RequestMapping(value="/insertRuntimeMovie", method=RequestMethod.POST)
	public String insertRuntimeMoviePOST(Movie movie, String[] startDate,String[] endDate,String[] startHour,
								String[] startMinute, String[] endHour,String[] endMinute, String[] thName, RedirectAttributes ratt) throws Exception{ 
		logger.info("==============================insertRuntimeMovie");
		logger.info("영화 :"+movie.getMvNumber());
		logger.info("영화 :"+movie.getMvTitle());
		
		for(int i=0; i<startDate.length; i++) {
			logger.info("영화관 :"+thName[i]);
			logger.info("영화시작날짜  :"+startDate[i]+" "+startHour[i]+":"+startMinute[i]);
			logger.info("영화마감날짜  :"+endDate[i]+" "+endHour[i]+":"+endMinute[i]);
		}
		
		
		
		Movie mv = mService.selectMovie(movie);
		
		logger.info("영화종류 :" +mv.toString());
		SimpleDateFormat st = new SimpleDateFormat("yyyy-MM-dd kk:mm");
		int a = 0;
		for(int i=0; i<startDate.length; i++) {
			ThInfo info = mService.selectName(thName[i]);
			logger.info("영화관종류 :" +info.toString());
			RunTime rt = new RunTime();
			String startTime = startDate[i]+" "+startHour[i]+":"+startMinute[i];
			String endTime = endDate[i]+" "+endHour[i]+":"+endMinute[i];
			Date sDate = st.parse(startTime);
			Date eDate = st.parse(endTime);
			rt.setMvNumber(mv);
			rt.setThName(info);
			rt.setThStart(sDate);
			rt.setThEnd(eDate);
			rt.setRtName(mv.getMvTitle());
			rt.setRtPrice(info.getThPrice()+mv.getMvPrice());
			logger.info("영화종류 :" +rt.toString());
			
			List<RunTime> list = mService.selectByTimeAndThName(rt); // 관과 시간이 겹치면 넣지않고 넘어감.
			if(list.size()!=0) {
				continue;
			}
			
			mService.insertRunMovie(rt); // 상영영화등록.
			a++;
			
			//상영영화관 등록하기.
			
			RunTime recentInsert = tService.recentInsert(); //  방금 등록한 상영영화.
			logger.info("방금 등록한 상영영화 :" +recentInsert.toString());
			String kwan = recentInsert.getThName().getThName();
			List<Structure> kList = tService.selectByKwan(kwan);
			Map<String, Object> rMap = new HashMap<>();
			rMap.put("rtNumber", recentInsert.getRtNumber());
			rMap.put("sList", kList);
			tService.insertRunTheater(rMap);
			

		}
		
		
		logger.info("=======================등록된 영화숫자 : "+a);
		if(a!=startDate.length) {
			ratt.addFlashAttribute("result", "duplicate");
		}else {
			ratt.addFlashAttribute("result", "success");
		}
//		ratt.addAttribute(arg0, arg1) //controller 값 전달
		
		// 아작스 말곤 방법 없나?
		return "redirect:/manager/insertRuntimeMovie";
	
	}
	
	
	@RequestMapping(value="/deleteMovie", method=RequestMethod.POST)
	public String deleteMoviePost(Movie mv, RedirectAttributes ratt) throws Exception{
		logger.info("==============================deleteMoviePost");
		logger.info("==============================영화번호 :"+mv.getMvNumber());
		logger.info("==============================영화이름 :"+mv.getMvTitle());
		List<RunTime> list = mService.selectByNN(mv); // 상영중인 해당 영화 목록.
		logger.info("==============================영화리스트 :"+list.size());
		if(list.size()!=0) {
			ratt.addFlashAttribute("result", "fail");
			return "redirect:/manager/deleteMovie"; // 상영중인 영화가 존재
		}else {
			mService.endMv(mv);
			ratt.addFlashAttribute("result", "success");
			return "redirect:/manager/deleteMovie"; // 상영중인 영화가 없음
		}
		
		
	}
	
	@RequestMapping(value="/updateMovie", method=RequestMethod.POST)
	public String updateMoviePost(Movie mv, String imgs, String mvStarts, MultipartFile mvImgs, RedirectAttributes ratt) throws Exception{
		logger.info("==============================updateMoviePost");
		logger.info("==============================mv :"+mv.toString());
		logger.info("==============================imgs :"+imgs);
		logger.info("==============================mvImgs :"+mvImgs.getOriginalFilename());
	 if(mvImgs.getOriginalFilename().equals("")) {
		 mv.setMvImg(imgs);
	 }else {
		 String name = UploadFileUtils.uploadFile(uploadPath, mvImgs.getOriginalFilename(), mvImgs.getBytes());
		 mv.setMvImg(name);
		 UploadFileUtils.deletefile(uploadPath, imgs);
	 }	
	    SimpleDateFormat st = new SimpleDateFormat("yyyy-MM-dd");
		Date mvStart = st.parse(mvStarts);
		mv.setMvStart(mvStart);
		mService.updateMv(mv);
		ratt.addFlashAttribute("result", "success");
		return "redirect:/manager/updateMovie";
		
	}
	
	@RequestMapping(value="/updateRMovie", method=RequestMethod.POST)
	public ResponseEntity<List<RunTime>> updateRMoviePOST(Movie mv) throws Exception{
		logger.info("==============================updateRMoviePOST");
		ResponseEntity<List<RunTime>> entity = null;
		List<RunTime> list = mService.selectByNN(mv);
		List<RunTime> rList = new ArrayList<RunTime>();
		Movie movie = mService.selectMovie(mv);
		for(RunTime rt : list) {
			rt.setMvNumber(movie);
			ThInfo info = mService.selectName(rt.getThName().getThName());
			rt.setThName(info);
			rList.add(rt);
			logger.info("==============================rt :"+rt.toString());
		}

		entity = new ResponseEntity<List<RunTime>>(rList, HttpStatus.OK);

		return entity;
	}
	
	@RequestMapping(value="/updateRMoviePage", method=RequestMethod.POST)
	public String updateRMoviePagePost(int rtNumber, String startDate,String endDate,String startHour,
										String startMinute, String endHour,String endMinute, String thName, RedirectAttributes ratt) throws Exception{
		logger.info("==============================updateRMoviePagePost");
		logger.info("==============================RunTime : " +rtNumber);
		RunTime rt = mService.selectByNumber(rtNumber);
		ThInfo info = mService.selectName(thName);
		SimpleDateFormat st = new SimpleDateFormat("yyyy-MM-dd kk:mm");
		String startTime = startDate+" "+startHour+":"+startMinute;
		String endTime = endDate+" "+endHour+":"+endMinute;
		Date sDate = st.parse(startTime);
		Date eDate = st.parse(endTime);
		int price = 8000;
		rt.setThStart(sDate);
		rt.setThEnd(eDate);
		rt.setThName(info);
		rt.setRtPrice(info.getThPrice()+price);
		logger.info("==============================rt : " +rt.toString());
		// rt는 바뀐 상영정보임.
		
		// 원래 등록되있는 정보를 가져와야함. 
		
		List<RunTime> list = mService.selectByTimeAndThName(rt); // 바뀐정보로 검색해서 해당 관에 겹치는 시간에 있는 목록을 뽑음.
		logger.info("==============================list : " +list.toString());
	
			if(list.size()!=0) {
				if(list.get(0).getRtNumber()==rt.getRtNumber()) {
					mService.updateRMovie(rt);
					ratt.addFlashAttribute("result", "success"); // 수정하려는시간이 원래꺼랑 겹치면 수정함.
					return "redirect:/manager/updateRMovie";	
				}else {
					ratt.addFlashAttribute("result", "duplicate"); // 수정하려는시간이 다른거랑 겹치면 수정안함.
					return "redirect:/manager/updateRMovie";
				}		
			}
			
			mService.updateRMovie(rt);
			ratt.addFlashAttribute("result", "success");
			return "redirect:/manager/updateRMovie";
	}
	
}









