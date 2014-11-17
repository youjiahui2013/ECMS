package com.cqedu.maintenance.user.service.impl;









import java.util.List;

import com.cqedu.bean.User;

import com.cqedu.maintenance.user.common.impl.commonServiceImpl;
import com.cqedu.maintenance.user.service.UserService;

public class UserServiceImpl extends commonServiceImpl implements UserService {
    
	


	public User checkUser(User userbean)
	{
		User newUser=null;
		newUser=(User)this.ibatisTemplate.queryForObject("user.select-user",userbean);
		return newUser;
		
	}
	public void addUser(User userbean)
	{
		this.ibatisTemplate.insert("user.insert-user", userbean);
		
	}
	
	public List<User> userList()
	{
		return this.ibatisTemplate.queryForList("user.user-list");
	}
	
	public void deleteUser(User user) {
		this.ibatisTemplate.delete("user.delete-user",user);
		
	}
	
	public List<User> changeUser(User user) {
		return this.ibatisTemplate.queryForList("user.choose-user",user);
		
	}
	
	public void updateUser(User user) {
		this.ibatisTemplate.update("user.update-user",user);
		
	}
	
	public List<User> selectDept(User user) {
		return this.ibatisTemplate.queryForList("user.select-dept", user);
	}
	
	public List<User> selectPos(User user) {
		
		return this.ibatisTemplate.queryForList("user.select-pos", user);
	}

	public List<User> selectRole(User user) {
		return this.ibatisTemplate.queryForList("user.select-role", user);
	}
	
	public List<User> selectFee(User user) {
		return this.ibatisTemplate.queryForList("user.select-fee", user);
	}
	@Override
	public List<User> login(User userbean) {
		return this.ibatisTemplate.queryForList("user.login",userbean);
	}
	@Override
	public List<User> list(User userbean) {
		
		return this.ibatisTemplate.queryForList("user.list",userbean);
		
	}
	@Override
	public void updateRolePerm(User user) {
		this.ibatisTemplate.update("user.insert-role-perm", user);
		
	}
	@Override
	public List<User> selectRolePerm(User user) {
		return this.ibatisTemplate.queryForList("user.slect-role-perm", user);
	}

	
}
