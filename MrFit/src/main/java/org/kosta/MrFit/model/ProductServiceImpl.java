package org.kosta.MrFit.model;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {
	@Resource
	private ProductDAO productDAO;
	
	// 주석샘플
	/** 1. 메소드 주석은 꼭 구현 완료 후 작성한다.
	 *  2. 다른 사람이 작성한 코드를 변경해야 할 경우, 원본은 주석처리 후 복사하여 사용한다.
	 *  3. 다른 기능/메소드로 매개변수를 던지는 경우, 해당 문서에 매개변수를 명시해준다.
	 *  4. 하루 작업한 것은 꼭 push를 한다.
	 *  
	 * @return
	 */
	public String findProductById(){
		System.out.println("            ProductServiceImpl/findProductById()/시작");
		System.out.println("    		ProductServiceImpl/findProductById()/진행");
		System.out.println("      		ProductServiceImpl/findProductById()/종료");
		return null;
	}
	/*
	 * [유정현][2017.11.17][ProductList생성]
	 * @see org.kosta.MrFit.model.ProductService#ProductList()
	 */
	@Override
	public List<ProductVO> ProductList(PagingBean pb) {
		System.out.println("            ProductServiceImpl/ProductList()/시작");
		List<ProductVO> ProductList=productDAO.ProductList(pb);
		System.out.println("    		ProductServiceImpl/ProductList()/진행"+ProductList);
		
		System.out.println("      		ProductServiceImpl/ProductList()/종료");
		// TODO Auto-generated method stub
		return ProductList;
	}
	
	

	@Override
	public List<ProductVO> findProductByName(String keyword) {
		return productDAO.findProductByName(keyword);
	}
	@Override
	public ProductVO findProductDtailByPno(String pno) {	

		return productDAO.findProductDtailByPno(pno);
	}
	@Override
	public int getTotalProductCount() {		
		return productDAO.getTotalProductCount();
	}
		
		
}
