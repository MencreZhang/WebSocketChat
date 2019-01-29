package com.websocketchat.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.websocketchat.beans.Users;


@Repository
public interface UserDao {
	/**
	 * ����û�
	 * @param user_name
	 * @param password
	 * @param usermail
	 * @return
	 */
	public int addUser(@Param("user_name")String user_name,@Param("password")String password,@Param("user_mail")String user_mail);
	/**
	 * ɾ���û�
	 * @param id
	 * @return
	 */
	public int deleteUser(@Param("id")int id);
	/**
	 * �����û�
	 * @param user_name
	 * @param password
	 * @param usermail
	 * @return
	 */
	public int updateUser(@Param("user_name")String user_name,@Param("user_face")String user_face,@Param("user_qianming")String user_qianming,@Param("user_mail")String user_mail);
	/**
	 * ����Ȩ��
	 * @return
	 */
	public int updataUserPermission(@Param("permission")String permission,@Param("user_name")String user_name);
	/**
	 * ��ʼ���û�����ҳ��
	 * @return
	 */
	 Users getUser(@Param("user_name")String user_name);
	/**
	 * ��ȡ�����û�
	 * @return
	 */
	public List<Users> getUsers();
	/**
	 * �����û�Ȩ��
	 * @return
	 */
	public int updatePermission(@Param("role_name")String role_name,@Param("permission")String permission,@Param("user_mail")String user_mail);
	 /** �����û�Ȩ��
	 * @return
	 */
	public int addUserPermission(@Param("username")String username,@Param("permission")String permission);

}
