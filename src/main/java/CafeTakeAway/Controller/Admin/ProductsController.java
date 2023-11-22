package CafeTakeAway.Controller.Admin;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Dao.SanPhamDao;
import CafeTakeAway.Dto.PageDto;
import CafeTakeAway.Dto.SanPhamDto;
import CafeTakeAway.Entity.SanPham;
import CafeTakeAway.Service.User.HomeServiceImpl;
import CafeTakeAway.Service.User.LoaiSanPhamServiceImpl;
import CafeTakeAway.Service.User.PageServiceImpl;
import static java.nio.charset.StandardCharsets.*;

@Controller
public class ProductsController extends BaseClass {
	@Autowired
	LoaiSanPhamServiceImpl loaiSPService;
	@Autowired
	PageServiceImpl pageService;
	@Autowired
	SanPhamDao spDao;
	@Autowired
	HomeServiceImpl homeservice;

	@RequestMapping("/admin/products")
	public ModelAndView Products(@RequestParam(defaultValue = "1") String page) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/product/products");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}

		int totalData = loaiSPService.GetAllDataSanPham().size();
		PageDto pageDto = pageService.GetAllPages(totalData, 20, Integer.parseInt(page));

		mv.addObject("page", pageDto);
		mv.addObject("totalData", totalData);
		mv.addObject("SanPhamByPage",
				loaiSPService.GetAllDataSanPham_Page(pageDto.getstartPage(), pageDto.getendPage()));
		return mv;
	}

	@RequestMapping("/admin/products/add")
	public ModelAndView AddProduct() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/product/add");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		
		mv.addObject("loaisp", homeservice.GetDataLoaiSanPham());
		mv.addObject("sp", new SanPhamDto());
		return mv;
	}
	
	@RequestMapping(value = "/admin/products/add", method=RequestMethod.POST)
	public String AddProductAction(@ModelAttribute("sanPham") SanPhamDto spDto, @RequestParam(value="file", required = true) MultipartFile file) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		saveFile(file);
		
		SanPham sp = new SanPham();
		int maxId = spDao.GetMaxMaSP();
		maxId++;
		
		sp.setMaSP(String.valueOf(maxId));
		
		byte[] bytes = spDto.getTenSP().getBytes(ISO_8859_1);
		String tenSP = new String(bytes, UTF_8);
		
		sp.setTenSP(tenSP);
		sp.setDonGia(spDto.getDonGia());
		sp.setTinhTrang("Có sẵn");
		
		bytes = spDto.getMieuTa().getBytes(ISO_8859_1);
		String mieuTa = new String(bytes, UTF_8);
		
		sp.setMieuTa(mieuTa);
		sp.setAnh(file.getOriginalFilename());
		sp.setKhuyenMai(false);
		sp.setMoiNhat(true);
		sp.setMaLoai(String.valueOf(spDto.getMaLoai()));
		spDao.ThemSanPham(sp);
		
		return "redirect:/admin/products/";
	}

	@RequestMapping(value = "/admin/products/update/{id}", method = RequestMethod.GET)
	public ModelAndView EditProduct(@PathVariable int id) {
		ModelAndView mv = new ModelAndView("admin/product/update");
		if (!Init()) {
			mv.setViewName("redirect: /CafeTakeAway/login");
		}
		mv.addObject("loaisp", homeservice.GetDataLoaiSanPham());

		SanPham sp = spDao.FindSanPhamById(id);
		mv.addObject("sp", sp);

		return mv;
	}

	@RequestMapping(value = "/admin/products/update/{id}", method=RequestMethod.POST)
	public String EditProductAction(@ModelAttribute("sanPham") SanPhamDto sp, @PathVariable int id, @RequestParam(value="file", required = false) MultipartFile file) {
		saveFile(file);
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		String fileName = file.getOriginalFilename();
		byte[] bytes = sp.getTenSP().getBytes(ISO_8859_1);
		String tenSP = new String(bytes, UTF_8);
		
		sp.setTenSP(tenSP);
		
		bytes = sp.getMieuTa().getBytes(ISO_8859_1);
		String mieuTa = new String(bytes, UTF_8);
		sp.setMieuTa(mieuTa);
		
		spDao.ChinhSuaSanPham(sp, id, fileName);
		return "redirect:/admin/products";
	}

	public void saveFile(MultipartFile file) {
		if (!(file.getSize() == 0)) {
			try {
				byte[] bytes = file.getBytes();
				
				String name = "C:\\Users\\Groot\\eclipse-workspace\\CafeTakeAway\\src\\main\\webapp\\assets\\user\\upload\\" + file.getOriginalFilename();
				
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(name));
				stream.write(bytes);
				stream.close();
				return;
			} catch (IOException e) {
				
				System.out.println("========== Error upload file: " + e.getMessage());
			}
		}
		return;
	}
	
	@RequestMapping(value = "/admin/products/delete/{id}", method = RequestMethod.GET)
	public String DeleteProduct(@PathVariable int id) {
		if (!Init()) {
			return "redirect: /CafeTakeAway/login";
		}
		int maxId = spDao.GetMaxMaSP();
		if (id > 0 && id <= maxId) {
			spDao.XoaSanPham(id);
		}
		return "redirect:/admin/products";
	}
	
}
