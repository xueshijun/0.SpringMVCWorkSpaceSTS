package sy.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import sy.model.User;
import sy.service.UserServiceI;

/**
 * http://localhost:8080/SpringMvcSpringMyBatisMaven/userController.do
 * http://localhost:8080/SpringMvcSpringMyBatisMaven/userController/showUser.do
 * */
@Controller
@RequestMapping("/userController")
public class UserController {

	private UserServiceI userService; 
	public UserServiceI getUserService() {
		return userService;
	} 
	@Autowired
	public void setUserService(UserServiceI userService) {
		this.userService = userService;
	}

//	@RequestMapping("/showUserList")
//	public String showUserList() {
//		return "showUserList";
//	}

	/** http://localhost:8080/SpringMvcSpringMyBatisMaven/userControl/showUser.do?id=1  * */
	@RequestMapping("/showUser")
	public String showUserOne(String id, HttpServletRequest request) {
		User u = userService.getUserById(id);
		request.setAttribute("user", u);
		return "showUser";
	} 
	/***  http://localhost:8080/mybatis/userControl/showUser/1.do*/
	@RequestMapping("/showUser/{id}")
	public String showUserTwo(@PathVariable String id, HttpServletRequest request) {
		User u = userService.getUserById(id);
		request.setAttribute("user", u);
		return "showUser";
	}
	/***  http://localhost:8080/mybatis/userControl/showUser/1.do*/
	@RequestMapping("/{id}/showUser")
	public String showUserThree(@PathVariable String id, HttpServletRequest request) {
		User u = userService.getUserById(id);
		request.setAttribute("user", u);
		return "showUser";
	}
}
