package _01_register.controller;

import java.io.File;
import java.sql.Blob;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import _00_init.util.GlobalService;
import _01_register.model.MemberBean;
import _01_register.service.MemberService;
import _01_register.validator.MemberBeanValidator;


@Controller
@RequestMapping("/_01_register")

public class RegisterController {
	
	String rootDirectory = "d:\\images";
	String inputDataForm = "registerForm"; 
	String inputDataForm2 = "registerForm2"; 
	
	@Autowired
	MemberService memberService;
	
	@GetMapping("/register")
	public String sendingEmptyForm(Model model) {
		MemberBean memberBean = new MemberBean();
		memberBean.setName("" );
		memberBean.setPassword("");
		memberBean.setPassword1("");
		memberBean.setMemberId("");
		memberBean.setAddress("");
		memberBean.setTel("");
		memberBean.setEmail("");
		model.addAttribute("memberBean", memberBean);
		return inputDataForm;
	}

	@PostMapping("/register")
	public String processFormData(
			@ModelAttribute("memberBean") MemberBean bean,
			BindingResult result, Model model,
			HttpServletRequest request
			) {
		MemberBeanValidator validator = new MemberBeanValidator();
		validator.validate(bean, result);
		if (result.hasErrors()) {
//          下列敘述可以理解Spring MVC如何處理錯誤			
//			List<ObjectError> list = result.getAllErrors();
//			for (ObjectError error : list) {
//				System.out.println("有錯誤：" + error);
//			}
			return inputDataForm;
		}
		
		MultipartFile picture = bean.getMemberMultipartFile();
		String originalFilename = picture.getOriginalFilename();
		
		String ext = "";
		if (originalFilename.lastIndexOf(".") > -1) {
			ext = originalFilename.substring(originalFilename.lastIndexOf("."));
		}
		
		if (originalFilename.length() > 0 && originalFilename.lastIndexOf(".") > -1) {
			bean.setFileName(originalFilename);
		}
		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (picture != null && !picture.isEmpty()) {
			try {
				byte[] b = picture.getBytes();
				Blob blob = new SerialBlob(b);
				bean.setMemberImage(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
		String password = bean.getPassword();
		password = GlobalService.getMD5Endocing(
				GlobalService.encryptString(password));
		bean.setPassword(password);
		Timestamp registerTime = new Timestamp(System.currentTimeMillis());
		bean.setRegisterTime(registerTime);
		// 檢查 memberId是否重複
		if (memberService.idExists(bean.getMemberId())) {
			result.rejectValue("memberId", "", "帳號已存在，請重新輸入");
			return inputDataForm;
		}
		
		try {
			memberService.saveMember(bean);
		} 
//		catch (org.hibernate.exception.ConstraintViolationException e) {
//			result.rejectValue("memberId", "", "帳號已存在，請重新輸入");
//			return inputDataForm;
//		} 
		catch (Exception ex) {
			System.out.println(ex.getClass().getName() + ", ex.getMessage()=" + ex.getMessage());
			result.rejectValue("memberId", "", "發生異常，請通知系統人員..." + ex.getMessage());
			return inputDataForm;
		}
		// 將上傳的檔案移到指定的資料夾, 目前註解此功能
		try {
			File imageFolder = new File(rootDirectory, "images");
			if (!imageFolder.exists())
				imageFolder.mkdirs();
			File file = new File(imageFolder, "MemberImage_" + bean.getMemberId() + ext);
			picture.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
		}
		return "redirect: " + request.getContextPath();
		
	}
	@ModelAttribute
	public MemberBean prepareMemberBean(HttpServletRequest req) {
		MemberBean memberBean = new MemberBean();
		return memberBean;
	}
	@GetMapping(value = "/mem/{pkey}")
	public String showDataForm(@PathVariable("pkey") Integer pkey, Model model) {
		MemberBean memberBean = memberService.get(pkey);
		model.addAttribute(memberBean);
		return inputDataForm2;
	}
	@PostMapping("/mem/{pkey}")
	// BindingResult 參數必須與@ModelAttribute修飾的參數連續編寫，中間不能夾其他參數
	// 
	public String modify(
			@ModelAttribute("memberBean") MemberBean memberBean, 
			BindingResult result, 
			Model model,
			@PathVariable Integer pkey, 
			HttpServletRequest request) {
//		MemberBeanValidator validator = new MemberBeanValidator();
//		validator.validate(mb, result);
//		if (result.hasErrors()) {
//			System.out.println("result hasErrors(), member=" + mb);
//			List<ObjectError> list = result.getAllErrors();
//			for (ObjectError error : list) {
//				System.out.println("有錯誤：" + error);
//			}
//			return inputDataForm2;
//		}

		// 找到對應的Hobby物件
//		Hobby hobby = hobbyService.getHobby(member.getHobby().getId());
//		member.setHobby(hobby);
//		
//		// 找到對應的Category物件
//		Category category = categoryService.getCategory(member.getCategory().getId());
//		member.setCategory(category);
//		Timestamp adminTime = new Timestamp(System.currentTimeMillis());
//		member.setAdmissionTime(adminTime);
//
//		MultipartFile picture = member.getProductImage();
//
//		if (picture.getSize() == 0) {
//			// 表示使用者並未挑選圖片
////			Member original = memberService.get(id);
////			member.setImage(original.getImage());
//		} else {
//			String originalFilename = picture.getOriginalFilename();
//			if (originalFilename.length() > 0 && originalFilename.lastIndexOf(".") > -1) {
//				member.setFileName(originalFilename);
//			}
//
//			// 建立Blob物件
//			if (picture != null && !picture.isEmpty()) {
//				try {
//					byte[] b = picture.getBytes();
//					Blob blob = new SerialBlob(b);
//					member.setImage(blob);
//				} catch (Exception e) {
//					e.printStackTrace();
//					throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
//				}
//			}
//		}
		
		
		memberService.updateMember(memberBean);
		return "redirect:/_01_register/mem/{pkey}";
	}
	
	@ModelAttribute
	public void getMember(@PathVariable(value="pkey", required = false ) Integer pkey, Model model) {
		System.out.println("@ModelAttribute.getMember()...");
		if (pkey != null) {
			MemberBean memberBean = memberService.get(pkey);
			model.addAttribute("memberBean", memberBean);
		} else {
			MemberBean memberBean = new MemberBean();
			memberBean.setLogin("false");
			model.addAttribute("memberBean", memberBean);
		}
	}
}
