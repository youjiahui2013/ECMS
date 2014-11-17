package com.cqedu.maintenance.user.service;






import java.util.List;

import com.cqedu.bean.User;

public interface UserService {
	public void addUser(User userbean);
	public User checkUser(User userbean);
	public List<User> userList();
	public void deleteUser(User user);
	public List<User> changeUser(User user);
	public void updateUser(User user);
	public List<User> selectDept(User user);
	public List<User> selectPos(User user);
	public List<User> selectRole(User user);
	public List<User> selectFee(User user);
	public List<User> login(User userbean);
	public List<User> list(User userbean);
	public void updateRolePerm(User user);
	public List<User> selectRolePerm(User user);
}
