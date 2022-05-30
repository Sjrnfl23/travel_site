package com.helpme.travel.common.util;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.helpme.travel.common.contants.Constants;
import com.helpme.travel.module.admin.Admin;
import com.helpme.travel.module.user.User;

public class UtilUpload {

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
	
	public static void uploadAdmin (MultipartFile multipartFile, String className, Admin dto) throws Exception {
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
		String path = Constants.UPLOAD_PATH_PREFIX2 + "/" + pathModule + "/" + pathDate + "/";	
		
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
	
	// Createpath를 이용해서 날짜별로 폴더가 생성됨
	public static void createPath (String path) {
		File uploadPath = new File(path);
		
		if(!uploadPath.exists()) {
			uploadPath.mkdir();
		} else {
			// by pass
		}
	}
}