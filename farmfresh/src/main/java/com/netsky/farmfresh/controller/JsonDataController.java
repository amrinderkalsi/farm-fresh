package com.netsky.farmfresh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.netsky.farmbackend.dao.ProduceDAO;
import com.netsky.farmbackend.dao.ProductDAO;
import com.netsky.farmbackend.dto.Produce;
import com.netsky.farmbackend.dto.Product;

@Controller
@RequestMapping("/json/data")
public class JsonDataController {

	@Autowired private ProductDAO productDao;
	@Autowired private ProduceDAO produceDAO;
	
	@RequestMapping("/all/products")
	@ResponseBody
	public List<Produce> getAllProducts(){
		return produceDAO.list(); //productDao.listActiveProducts();
	}
	
	
	@RequestMapping("/category/{id}/products")
	@ResponseBody
	public List<Product> getProductsByCategory(@PathVariable int id){
		return productDao.listActiveProductsByCategory(id);
	}
	
}
