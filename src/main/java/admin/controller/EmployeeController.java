package admin.controller;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.xml.bind.DatatypeConverter;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ptithcm.entity.NhanVien;
import ptithcm.entity.PhongChieu;
import ptithcm.entity.Quyen;
import ptithcm.entity.TaiKhoan;
import admin.controller.Message;

@Transactional
@Controller
@RequestMapping("admin")
public class EmployeeController {
	@Autowired
	SessionFactory factory;

	public boolean ktTaiKhoan(String tk) {
		Session session = factory.getCurrentSession();
		String hql = "FROM TaiKhoan ";
		Query query = session.createQuery(hql);
		List<TaiKhoan> list = query.list();
		for (TaiKhoan k : list) {
			if (k.getEmail().trim().equals(tk)) {
				return false;
			}
		}
		return true;
	}

	public Quyen ktQuyen() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Quyen ";
		Query query = session.createQuery(hql);
		List<Quyen> list = query.list();
		for (Quyen k : list) {
			if (k.getMaQuyen().trim().equals("NV")) {
				return k;
			}
		}
		return null;
	}

	public List<NhanVien> employee() {
		Session session = factory.getCurrentSession();
		String hql = "FROM NhanVien";
		Query query = session.createQuery(hql);
		List<NhanVien> list = query.list();
		return list;
	}

	public NhanVien getSingleEmployee(Integer maNV) {
		Session session = factory.getCurrentSession();
		String hql = "FROM NhanVien where maNV=:maNV";
		Query query = session.createQuery(hql);
		query.setParameter("maNV", maNV);
		NhanVien n = (NhanVien) query.list().get(0);

		return n;
	}

	@RequestMapping(value = "employee", method = RequestMethod.GET)
	public String getNews(ModelMap model) {
		NhanVien employee = new NhanVien();
		model.addAttribute("employee", employee);
		List<NhanVien> employees = employee();
		model.addAttribute("listEmployee", employees);

		return "admin/employee";
	}

	@RequestMapping(value = "employee/add", method = RequestMethod.POST)
	public String register2(ModelMap model, @ModelAttribute("taikhoan") TaiKhoan tk, BindingResult errors,
			@RequestParam("tenNV") String tenNV, @RequestParam("cmnd") String cmnd,
			@RequestParam("soDT") String sdt, @RequestParam("diaChi") String diaChi,
			@RequestParam("gioiTinh") Boolean gioiTinh, @RequestParam("ngaySinh") String ngaySinh,
			@RequestParam("email") String email, HttpSession ss, HttpServletRequest request, RedirectAttributes redirectAttributes) throws ParseException, NoSuchAlgorithmException {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
		Date ngaySinhDate = formatter.parse(ngaySinh);
		String password = "01234567";
		MessageDigest md = MessageDigest.getInstance("MD5");
		md.update(password.getBytes());
		byte[] digest = md.digest();
	    String myHash = DatatypeConverter.printHexBinary(digest).toLowerCase();
//	    System.out.print(myHash);
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
//		HttpSession session_1 = request.getSession();
		TaiKhoan tkhoan = (TaiKhoan) session.get(TaiKhoan.class, tk.getEmail());
		
		if (tkhoan != null) {
			errors.rejectValue("email", "taikhoan", "TÃ i khoáº£n Ä‘Ã£ tá»“n táº¡i!");
			redirectAttributes.addFlashAttribute("message",
					new Message("error","Thêm mới thất bại do trùng email"));
			return "redirect:/admin/employee.htm";
		}
		if (!errors.hasErrors()) {
			try {
				Quyen q = new Quyen();
				q.setMaQuyen("NV");
				tk.setQuyen(q);
				tk.setEmail(email);
				tk.setPassword(myHash);
				session.save(tk);
				t.commit();
				model.addAttribute("taikhoan", new TaiKhoan());
				NhanVien nv = new NhanVien();
				Transaction ts = session.beginTransaction();
				try {
					
					nv.setTrangThai(true);
					nv.setDstaikhoan(tk);
					nv.setTenNV(tenNV);
					nv.setDiaChi(diaChi);
					nv.setGioiTinh(gioiTinh);
					nv.setSoDT(sdt);
					nv.setNgaySinh(ngaySinhDate);
					nv.setCmnd(cmnd);
					session.save(nv);
					redirectAttributes.addFlashAttribute("message",
							new Message("success","Thêm mới thành công"));
					ts.commit();
					return "redirect:/admin/employee.htm";
				} catch (Exception e) {
					ts.rollback();
					Transaction td = session.beginTransaction();
					try {
						session.delete(tk);
						td.commit();
					} catch (Exception e2) {
						td.rollback();
					}

				}
				redirectAttributes.addFlashAttribute("message",
						new Message("fail","Thêm mới thất bại"));
				return "redirect:/admin/employee.htm";
			} catch (Exception e) {
				t.rollback();
			} finally {
				session.close();
			}
		}
		
		redirectAttributes.addFlashAttribute("message",
				new Message("error","Thêm mới thất bại"));
		return "redirect:/admin/employee.htm";
	}
	
//	@RequestMapping(value = "employee/add", method = RequestMethod.POST)
//	public String register2(ModelMap model, @ModelAttribute("taikhoan") TaiKhoan tk, BindingResult errors,
//			@RequestParam("tenNV") String tenNV, @RequestParam("cmnd") String cmnd,
//			@RequestParam("soDT") String sdt, @RequestParam("diaChi") String diaChi,
//			@RequestParam("gioiTinh") Boolean gioiTinh, @RequestParam("ngaySinh") String ngaySinh,
//			@RequestParam("email") String email, HttpSession ss, HttpServletRequest request) throws ParseException, NoSuchAlgorithmException {
//		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
//		Date ngaySinhDate = formatter.parse(ngaySinh);
//		String password = "01234567";
//		MessageDigest md = MessageDigest.getInstance("MD5");
//		md.update(password.getBytes());
//		byte[] digest = md.digest();
//	    String myHash = DatatypeConverter.printHexBinary(digest).toLowerCase();
////	    System.out.print(myHash);
//		Session session = factory.openSession();
//		Transaction t = session.beginTransaction();
////		HttpSession session_1 = request.getSession();
//		TaiKhoan tkhoan = (TaiKhoan) session.get(TaiKhoan.class, tk.getEmail());
//		
//		if (tkhoan != null) {
//			errors.rejectValue("email", "taikhoan", "TÃ i khoáº£n Ä‘Ã£ tá»“n táº¡i!");
//		}
//		if (!errors.hasErrors()) {
//			try {
//				Quyen q = new Quyen();
//				q.setMaQuyen("NV");
//				tk.setQuyen(q);
//				tk.setEmail(email);
//				tk.setPassword(myHash);
//				session.save(tk);
//				t.commit();
//				model.addAttribute("taikhoan", new TaiKhoan());
//				NhanVien nv = new NhanVien();
//				Transaction ts = session.beginTransaction();
//				try {
//					
//					nv.setTrangThai(true);
//					nv.setDstaikhoan(tk);
//					nv.setTenNV(tenNV);
//					nv.setDiaChi(diaChi);
//					nv.setGioiTinh(gioiTinh);
//					nv.setSoDT(sdt);
//					nv.setNgaySinh(ngaySinhDate);
//					nv.setCmnd(cmnd);
//					session.save(nv);
//					ts.commit();
//					return "redirect:/admin/employee.htm";
//				} catch (Exception e) {
//					ts.rollback();
//					Transaction td = session.beginTransaction();
//					try {
//						session.delete(tk);
//						td.commit();
//					} catch (Exception e2) {
//						td.rollback();
//					}
//
//				}
//
//				return "admin/employee";
//			} catch (Exception e) {
//				t.rollback();
//			} finally {
//				session.close();
//			}
//		}
//		return "admin/employee";
//	} 
//	
	@RequestMapping(value = "employee/update/{id}.htm",  method=RequestMethod.POST)
	public String updateStatusE(ModelMap model,@ModelAttribute("nhanVien") NhanVien nhanVien, @PathVariable("id") String id,RedirectAttributes redirectAttributes) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			int idI = Integer.parseInt(id);
			NhanVien nvnews = this.getSingleEmployee(idI);
			if(nvnews.getTrangThai()) {
				nvnews.setTrangThai(false);
			} else {
				nvnews.setTrangThai(true);
			}
			session.merge(nvnews);
			t.commit();
			
			return "redirect:/admin/employee.htm";
		}
		catch(Exception e) {
			System.out.println(e);
			t.rollback();
		}
		finally {
			session.close();
		}

		List<NhanVien> listNV = employee();
		
		model.addAttribute("nv", listNV);
		return "admin/employee";
	}
}

