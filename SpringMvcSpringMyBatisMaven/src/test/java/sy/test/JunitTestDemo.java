package sy.test;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import sy.model.User;
import sy.service.UserServiceI;

public class JunitTestDemo {
	
	private ApplicationContext ac;
	private UserServiceI userService;
	
	@Before
	public void Before(){

		ac=new ClassPathXmlApplicationContext(
				new String[]{"spring.xml","spring-mybatis.xml"});
		userService=(UserServiceI)ac.getBean("userService");
	}
	@Test
	public void test1(){
		User user=userService.getUserById("1");
		System.out.print(user);
	}
	@Test
	public void test2(){
		ac=new ClassPathXmlApplicationContext(
				new String[]{"spring.xml","spring-mybatis.xml"});
		userService=(UserServiceI)ac.getBean("userService");
		User user=userService.getUserById("1");
		System.out.print(user);
	}
}
