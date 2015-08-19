package sy.test;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import sy.model.User;
import sy.service.UserServiceI;

/**********Method 1************
public class SpringTestDemo extends SpringJUnit4ClassRunner {

}
************/
/*********Method 2***************/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring.xml","classpath:spring-mybatis.xml"})
public class SpringTestDemo { 
	
	private UserServiceI userService;
	public UserServiceI getUserService() {
		return userService;
	}
	@Autowired
	public void setUserService(UserServiceI userService) {
		this.userService = userService;
	}

	@Test
	public void test1(){
		User user=userService.getUserById("1");
		System.out.print(user);
	}
	@Test
	public void test2(){
		User user=userService.getUserById("1");
		System.out.print(user);
	}
}

