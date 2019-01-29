package com.websocketchat.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.websocketchat.beans.Users;
import com.websocketchat.dao.UserDao;

@Service
public class UserService {
	@Resource
	private UserDao dao;

	/**
	 * ��ȡ��¼���û���Ϣ
	 * @param user_name
	 */
	public Users getAUser(String user_name){
		return dao.getUser(user_name);
	}
	/**
	 * ��ȡ�����û�
	 * @return
	 */
	 public PageInfo<Users> getUsers(String pageNum,String pageSize){
		 int num = 1;
			int size = 5;
			if (pageNum != null && !"".equals(pageNum)) {
				num = Integer.parseInt(pageNum);
			}
			if (pageSize != null && !"".equals(pageSize)) {
				size = Integer.parseInt(pageSize);
			}

			PageHelper.startPage(num, size);
			List<Users> tabOne = dao.getUsers();
			PageInfo<Users> page = new PageInfo<Users>(tabOne);

			return page;
	}
	/**
		* ��ȡ�����û�
		* @return
		*/
	public List<Users> get7Users(){
			  
		return dao.getUsers();
	}
	/**
		* ɾ���û�
		* @return
		*/
	public int deleteUsers(int id){
		return dao.deleteUser(id);
	}
	 public int updateUser(String user_name,String user_face,String user_qianming,String user_mail){
//		 response.addHeader("Access-Control-Allow-Origin", "*");//解决跨域问�
		 return dao.updateUser(user_name, user_face, user_qianming,user_mail);
	 }
	 public int updatePermission(String role_name,String permission,String user_mail){
		 return dao.updatePermission(role_name,permission,user_mail);
	 }
	 /**����û�*/
	 public int addUser(String user_name,String password,String user_mail){
		 return dao.addUser(user_name, password, user_mail);
	 }
	 public int addUserPermission(String username,String permission){
		 return dao.addUserPermission(username, permission);
	 }
}
