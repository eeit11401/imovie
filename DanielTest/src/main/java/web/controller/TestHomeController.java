package web.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import web.food.model.HomeBean;
import web.food.service.HomeService;

@Controller
public class TestHomeController {
	@Autowired
	ServletContext context;
	@Autowired
	HomeService homeService;
	
	@GetMapping("/Home")//首頁新增修改畫面
	public String home(Model model) {
		System.out.println("------------------------------");
		Map<Integer, HomeBean> homeMap = homeService.getHome();
		model.addAttribute("homeMap",homeMap);
		HomeBean homeBean = new HomeBean();
		model.addAttribute("homeBean",homeBean);//回傳空表單(foodBean)
		return "Home/HomeUpdata";
	}
	
	@PostMapping("/Home")//更新電影
	public String updataHome(@ModelAttribute("homeBean") HomeBean homeBean, BindingResult result) {
		long sizeInBytes = 0;
		InputStream is = null;
		MultipartFile productImage = homeBean.getProductImage();
		String originalFilename = productImage.getOriginalFilename();
		homeBean.setHomeFileName(originalFilename);
		//  建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage != null && !productImage.isEmpty() ) {
			
			try {
				byte[] b = productImage.getBytes();
				Blob blob = new SerialBlob(b);
				homeBean.setHomeImg(blob);
				sizeInBytes = 1;
			} catch(Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}else {
			sizeInBytes = -1;
		}
		homeService.HomeUpdata(homeBean, sizeInBytes);
		return "redirect:/Home";
	}
	
	@PostMapping("/HomeDelete")//刪除電影測試
	public String HomeDelete(@RequestParam Integer HomeId, Model model) {
		homeService.HomeDelete(HomeId);
		return "redirect:/Home";
	}
	
	@GetMapping("/HomeIn")//新增首頁圖畫面，回傳空表單
	public String homeIn(Model model) {
		HomeBean homeBean = new HomeBean();
		model.addAttribute("homeBean", homeBean);//回傳空表單(foodBean)
		return "Home/Home";
	}
	
	@PostMapping("/HomeIn")//新增首頁圖，送出表單
	public String AddfoodIn(@ModelAttribute("homeBean") HomeBean homeBean, BindingResult result) {
		MultipartFile productImage = homeBean.getProductImage();
		String originalFilename = productImage.getOriginalFilename();
		homeBean.setHomeFileName(originalFilename);
		//  建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage != null && !productImage.isEmpty() ) {
			try {
				byte[] b = productImage.getBytes();
				Blob blob = new SerialBlob(b);
				homeBean.setHomeImg(blob);
			} catch(Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
		homeService.saveHome(homeBean);
		return "redirect:/Home";
	}
	
	@GetMapping("/getHomeImg/{homeId}")//首頁畫面，圖片(資料表內容，二進制轉圖片)
	public ResponseEntity<byte[]> getPicture(HttpServletResponse resp, @PathVariable Integer homeId) {
		String filePath = "/resources/images/NoImage.jpg";
		byte[] media = null;
		HttpHeaders headers = new HttpHeaders();
		String filename = "";
		int len = 0;
		HomeBean bean = homeService.getHomeImg(homeId);
		if (bean != null) {
			Blob blob = bean.getHomeImg();
			filename = bean.getHomeFileName();
			if (blob != null) {
				try {
					len = (int) blob.length();
					media = blob.getBytes(1, len);
				} catch (SQLException e) {
					throw new RuntimeException("ProductController的getPicture()發生SQLException: " + e.getMessage());
				}
			} else {
				media = toByteArray(filePath);
				filename = filePath;
			}
		} else {
			media = toByteArray(filePath);
			filename = filePath;
		}
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(filename);
		MediaType mediaType = MediaType.valueOf(mimeType);
//		System.out.println("mediaType =" + mediaType);
		headers.setContentType(mediaType);
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}

	private byte[] toByteArray(String filepath) {
		byte[] b = null;
		String realPath = context.getRealPath(filepath);
		try {
			File file = new File(realPath);
			long size = file.length();
			b = new byte[(int) size];
			InputStream fis = context.getResourceAsStream(filepath);
			fis.read(b);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return b;
	}
	
}
