package com.helpme.travel.common.util;

import java.io.File;
import java.util.UUID;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import com.helpme.travel.common.contants.Constants;
import com.helpme.travel.module.admin.Admin;
import com.helpme.travel.module.host.Host;
import com.helpme.travel.module.host.HostDao;
import com.helpme.travel.module.host.HostVo;
import com.helpme.travel.module.user.User;

public class UtilUpload {
	 private static HostDao staticDao;
	 
	  @Autowired
	  private HostDao dao;
	 
	  @PostConstruct     
	  private void initStaticDao () {
	     staticDao = this.dao;
	  }
	public static void upload (MultipartFile multipartFile, String className, User dto) throws Exception {
		String fileName = multipartFile.getOriginalFilename();
		System.out.println("fileName::::::::::::: "+fileName);
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		String uuid = UUID.randomUUID().toString();
		String uuidFileName = uuid + "." + ext;
		String pathModule = className;
		String nowString = UtilDateTime.nowString();
		String year = nowString.substring(0,4);
		String month = nowString.substring(5,7);
		String day = nowString.substring(8,10);
		String pathDate = year + "/" + month + "/" + day;
		String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";	
		
		createPath(path);
		
		multipartFile.transferTo(new File(path + uuidFileName));
		
		System.out.println("year::::::::::::::::" +year );
		System.out.println("month::::::::::::::::" +month );
		System.out.println("day::::::::::::::::" +day);
		
		dto.setYear(year);
		dto.setMonth(month);
		dto.setDay(day);
		
		
		dto.setOriginalName(fileName);
		dto.setUuidName(uuidFileName);
		dto.setExt(ext);
		dto.setSize(multipartFile.getSize());
		
		/*
		 * dto.setYear(); dto.setMonth(); dto.setDay(pathDate);
		 */
	}
	
	public static void uploadAdminMember (MultipartFile multipartFile, Admin dto) throws Exception {
		String fileName = multipartFile.getOriginalFilename();
		System.out.println("fileName::::::::::::: "+fileName);
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		String uuid = UUID.randomUUID().toString();
		String uuidFileName = uuid + "." + ext;
		String pathModule = "member";
		String nowString = UtilDateTime.nowString();
		String year = nowString.substring(0,4);
		String month = nowString.substring(5,7);
		String day = nowString.substring(8,10);
		String pathDate = year + "/" + month + "/" + day;
		String path = Constants.UPLOAD_PATH_PREFIX2 + "/" + pathModule + "/" + pathDate + "/";	
		
		createPath(path);
		
		multipartFile.transferTo(new File(path + uuidFileName));
		
		System.out.println("year::::::::::::::::" +year );
		System.out.println("month::::::::::::::::" +month );
		System.out.println("day::::::::::::::::" +day);
		
		System.out.println("fileName: " + fileName);
		System.out.println("ext: " + ext);
		System.out.println("uuid: " + uuid);
		System.out.println("uuidFileName: " + uuidFileName);
		System.out.println("pathModule: " + pathModule);
		System.out.println("nowString: " + nowString);
		System.out.println("pathDate: " + pathDate);
		System.out.println("path: " + path);
		
		dto.setYear(year);
		dto.setMonth(month);
		dto.setDay(day);
		
		
		dto.setOriginalName(fileName);
		dto.setUuidName(uuidFileName);
		dto.setExt(ext);
		dto.setSize(multipartFile.getSize());
		
		/*
		 * dto.setYear(); dto.setMonth(); dto.setDay(pathDate);
		 */
	}
	
	public static void uploadAdminLodging (MultipartFile multipartFile, Admin dto) throws Exception {
		String fileName = multipartFile.getOriginalFilename();
		System.out.println("fileName::::::::::::: "+fileName);
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		String uuid = UUID.randomUUID().toString();
		String uuidFileName = uuid + "." + ext;
		String pathModule = "lodging";
		String nowString = UtilDateTime.nowString();
		String year = nowString.substring(0,4);
		String month = nowString.substring(5,7);
		String day = nowString.substring(8,10);
		String pathDate = year + "/" + month + "/" + day;
		String path = Constants.UPLOAD_PATH_PREFIX2 + "/" + pathModule + "/" + pathDate + "/";	
		
		createPath(path);
		
		multipartFile.transferTo(new File(path + uuidFileName));
		
		System.out.println("year::::::::::::::::" +year );
		System.out.println("month::::::::::::::::" +month );
		System.out.println("day::::::::::::::::" +day);
		
		System.out.println("fileName: " + fileName);
		System.out.println("ext: " + ext);
		System.out.println("uuid: " + uuid);
		System.out.println("uuidFileName: " + uuidFileName);
		System.out.println("pathModule: " + pathModule);
		System.out.println("nowString: " + nowString);
		System.out.println("pathDate: " + pathDate);
		System.out.println("path: " + path);
		
		dto.setYear(year);
		dto.setMonth(month);
		dto.setDay(day);
		
		
		dto.setOriginalName(fileName);
		dto.setUuidName(uuidFileName);
		dto.setExt(ext);
		dto.setSize(multipartFile.getSize());
		
		/*
		 * dto.setYear(); dto.setMonth(); dto.setDay(pathDate);
		 */
	}
	public static void uploadHostMember (MultipartFile multipartFile, Host dto) throws Exception {
		String fileName = multipartFile.getOriginalFilename();
		System.out.println("fileName::::::::::::: "+fileName);
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		String uuid = UUID.randomUUID().toString();
		String uuidFileName = uuid + "." + ext;
		String pathModule = "member";
		String nowString = UtilDateTime.nowString();
		String year = nowString.substring(0,4);
		String month = nowString.substring(5,7);
		String day = nowString.substring(8,10);
		String pathDate = year + "/" + month + "/" + day;
		String path = Constants.UPLOAD_PATH_PREFIX2 + "/" + pathModule + "/" + pathDate + "/";	
		
		createPath(path);
		
		multipartFile.transferTo(new File(path + uuidFileName));
		
		System.out.println("year::::::::::::::::" +year);
		System.out.println("month::::::::::::::::" +month);
		System.out.println("day::::::::::::::::" +day);
		
		dto.setYear(year);
		dto.setMonth(month);
		dto.setDay(day);
		
		
		dto.setOriginalName(fileName);
		dto.setUuidName(uuidFileName);
		dto.setExt(ext);
		dto.setSize(multipartFile.getSize());
		
		/*
		 * dto.setYear(); dto.setMonth(); dto.setDay(pathDate);
		 */
	}
	public static void uploadHostLodging (MultipartFile multipartFile, Host dto) throws Exception {
		String fileName = multipartFile.getOriginalFilename();
		System.out.println("fileName::::::::::::: "+fileName);
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		String uuid = UUID.randomUUID().toString();
		String uuidFileName = uuid + "." + ext;
		String pathModule = "lodging";
		String nowString = UtilDateTime.nowString();
		String year = nowString.substring(0,4);
		String month = nowString.substring(5,7);
		String day = nowString.substring(8,10);
		String pathDate = year + "/" + month + "/" + day;
		String path = Constants.UPLOAD_PATH_PREFIX2 + "/" + pathModule + "/" + pathDate + "/";	
		
		createPath(path);
		
		multipartFile.transferTo(new File(path + uuidFileName));
		
		System.out.println("year::::::::::::::::" +year);
		System.out.println("month::::::::::::::::" +month);
		System.out.println("day::::::::::::::::" +day);
		
		dto.setYear(year);
		dto.setMonth(month);
		dto.setDay(day);
		
		
		dto.setOriginalName(fileName);
		dto.setUuidName(uuidFileName);
		dto.setExt(ext);
		dto.setSize(multipartFile.getSize());
		
		/*
		 * dto.setYear(); dto.setMonth(); dto.setDay(pathDate);
		 */
	}
	
	// Createpath를 이용해서 날짜별로 폴더가 생성됨
	public static void createPath (String path) {
		File uploadPath = new File(path);
		
		if(!uploadPath.exists()) {
			uploadPath.mkdir();
		} else {
			// by pass
		}
	}
	
	public static int selectOneCountUploaded(Host dto) {
		return staticDao.selectCountUploaded(dto);
	}
}