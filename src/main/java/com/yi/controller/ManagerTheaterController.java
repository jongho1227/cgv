package com.yi.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.net.ssl.SSLEngineResult.Status;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yi.domain.RunTheater;
import com.yi.domain.RunTime;
import com.yi.domain.Structure;
import com.yi.domain.ThInfo;
import com.yi.service.TheaterServiceHandlerDao;

@Controller
@RequestMapping("/manager")
public class ManagerTheaterController {
	private static final Logger logger = LoggerFactory.getLogger(ManagerTheaterController.class);
	
	@Autowired
	TheaterServiceHandlerDao mService;
	
	@RequestMapping(value="/managerMain", method=RequestMethod.GET)
	public void managerLogin(){
		logger.info("==============================managerLogin");
		
	}          
	@RequestMapping(value="/makeTheater", method=RequestMethod.GET)
	public void makeTheater(){
		logger.info("==============================makeTheater");
		
	}

	@RequestMapping(value="/makeTheater", method=RequestMethod.PUT)
	public ResponseEntity<String> makeTheaterPut(@RequestBody Map<String, Object> map) throws Exception{
		logger.info("==============================makeTheaterPut");
		logger.info("==============================thName = "+map.get("thName"));
		logger.info("==============================thKinds = "+map.get("thKinds"));
		ResponseEntity<String> entity = null;
		String thKind = (String) map.get("thKinds");
		Map<String, Object> nMap = new HashMap<>();
		nMap.put("name", (String) map.get("thName"));
		nMap.put("kind", (String) map.get("thKinds"));
		if(thKind.equals("2D")) {
			nMap.put("price", 0);
		}else if(thKind.equals("3D")) {
			nMap.put("price", 5000);
		}else {
			nMap.put("price", 10000);
		}		
		try {
			mService.reTheater(nMap);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>("fail", HttpStatus.OK);
		}
		return entity;
	}  
	
	
	@RequestMapping(value="/makeTheater", method=RequestMethod.POST)
	public ResponseEntity<String> makeTheaterPost(ThInfo theater) throws Exception{
		logger.info("==============================makeTheaterPost");
		ResponseEntity<String> entity = null;
		ThInfo th = mService.selectNameByAll(theater.getThName());
		if(th!=null) {
			entity = new ResponseEntity<>("exist", HttpStatus.OK);
			return entity;
		}else {
			String kind = theater.getThKinds();
			if(kind.equals("3D")) {
				theater.setThPrice(5000);
			}else if(kind.equals("4D")){
				theater.setThPrice(10000);
			}
			logger.info("==============================theater="+theater.toString());
			
			try {
				mService.insertTheater(theater);
				entity = new ResponseEntity<>("success", HttpStatus.OK);
			}catch (Exception e) {
				e.printStackTrace();
				entity = new ResponseEntity<>("fail", HttpStatus.OK);				
			}
			return entity;
		}
		
	} 
	
	@RequestMapping(value="/deleteTheater", method=RequestMethod.GET)
	public void deleteTheater(Model model) throws Exception{
		logger.info("==============================deleteTheater");
		List<ThInfo> list = mService.theaterList();
		model.addAttribute("list", list);
	} 
	
	@RequestMapping(value="/deleteTheater", method=RequestMethod.POST)
	public ResponseEntity<String> deleteTheaterPost(String name) throws Exception{
		logger.info("==============================deleteTheaterPost="+name);
		ResponseEntity<String> entity = null;
		try {
			mService.delTheater(name);
			entity = new ResponseEntity<>("success", HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>("fail", HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	} 
	
	@RequestMapping(value="/updateTheater/{tname}", method=RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> updateTheater2(@PathVariable String tname) throws Exception{
		logger.info("==============================updateTheater");
		String name = null;
		List<ThInfo> list = mService.theaterList();
		for(ThInfo th : list) {
			if(th.getThName().equals(tname)) {
				name = th.getThName();
			}
		}
		if(tname==null) {
			tname = "1관";         
		}
		List<Structure> stList = mService.select1(tname);
		
		ResponseEntity<Map<String, Object>> entity = null;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("stList", stList);
		
		entity = new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
		
		return entity;
	} 
	

	@RequestMapping(value="/updateTheater", method=RequestMethod.GET)
	public void updateTheater(String tname, Model model) throws Exception{
		logger.info("==============================updateTheater");
		List<ThInfo> list = mService.theaterList();
		
		model.addAttribute("list", list);
		
	}
	
	
	@ResponseBody
	@RequestMapping(value="/updateTheater", method=RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> updateTheaterPost(String tname, String kind, String[] selected) throws Exception{
		logger.info("==============================updateTheaterPost");
		logger.info("==============================tname="+tname);
		logger.info("==============================kind="+kind);
		logger.info("==============================selected="+selected);
		Map<String, Object> map = new HashMap<>();
		map.put("kwan", tname);
		List<RunTime> rList = mService.selectruntheater(map);
		if(rList.size()>0) {
			Map<String, Object> rMap = new HashMap<>();
			rMap.put("result", "fail");
			ResponseEntity<Map<String, Object>> entity = new ResponseEntity<Map<String,Object>>(rMap, HttpStatus.OK);
			return entity;
		}
		
		if(kind.equals("selectedRemove")) {
			for(int i=0; i<selected.length; i++) {
				Map<String, Object> update = new HashMap<>();
				update.put("false", false);
				update.put("thName", tname);
				update.put("seatNumber", selected[i]);
				mService.selectedRemove(update);
			}
			
			return selectList(tname); 
			
		}else if(kind.equals("RowRemove")) {
			for(int i=0; i<selected.length; i++) {
				String row = selected[i];
				Map<String, Object> rowRemove = new HashMap<>();
				rowRemove.put("false", false);
				rowRemove.put("thName", tname);
				rowRemove.put("row", row);
				mService.rowRemove(rowRemove);
			}
			return selectList(tname);
		}else if(kind.equals("colRemove")) {
			for(int i=0; i<selected.length; i++) {
				String col = selected[i];
				Map<String, Object> colRemove = new HashMap<>();
				colRemove.put("false", false);
				colRemove.put("thName", tname);
				colRemove.put("col", col);
				mService.colRemove(colRemove);
			}
			
			return selectList(tname);
		}else if(kind.equals("restore")) {
			mService.restore(tname);
			
			return selectList(tname);
		}
		
		return null;                      
	}
	
	
	private ResponseEntity<Map<String, Object>> selectList(String tname) throws Exception {
		List<Structure> stList = mService.select1(tname);
		ResponseEntity<Map<String, Object>> entity = null;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", tname);
		map.put("stList", stList);
		
		entity = new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
		return entity;
	} 
}









