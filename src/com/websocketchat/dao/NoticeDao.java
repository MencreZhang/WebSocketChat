package com.websocketchat.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.websocketchat.beans.Notice;

@Repository
public interface NoticeDao {
	/**
	 * ��ӹ���
	 * @return 
	 */
	public int createNotice(@Param("title")String title,@Param("content")String content,@Param("notice_author")String notice_author);
	/**
	 * ɾ������
	 * @return List
	 */
	public int deleteNotice(@Param("id")int id);
	/**
	 * �޸��û�
	 * @return List
	 */
	public int updateNotice(Notice notice);
	/**
	 * ��ѯ�û�
	 * @return List
	 */
	public List<Notice> getNotices();
}
