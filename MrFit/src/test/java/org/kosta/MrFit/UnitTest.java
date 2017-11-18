package org.kosta.MrFit;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kosta.MrFit.model.MemberDAO;
import org.kosta.MrFit.model.ProductService;
import org.kosta.MrFit.model.MemberService;
import org.kosta.MrFit.model.MemberVO;
//github.com/ho7371/MrFit.git
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring-model.xml","file:src/main/webapp/WEB-INF/spring-security.xml"})
public class UnitTest {
	@Resource
	 private MemberDAO memberDAO;
	 @Resource
	 private MemberService memberService;
	@Resource
	private ProductService pservice;
	
	 @Test
	 public void unitTest() {
		 	MemberVO memberVO=new MemberVO();
		 	memberVO.setId("mrfit");
		 	memberVO.setName("hotsix");
		 	memberVO.setEmail("mrfit@gmail.com");
		 
		 System.out.println(memberService.findMemberByQna(memberVO));
		 	
	 }
	 

}
