package com.websocketchat.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.websocketchat.beans.MsgInfo;


@Repository
public interface MessageDao {

	/**
	 * ��Ӽ�¼
	 * @return
	 */
	public int addMessage(MsgInfo msginfo);
	/**
	 * ���Ҽ�¼
	 * @return
	 */
	public List<MsgInfo> getMessage();
	/**
	 * ��������¼
	 * @return
	 */
	public int clearMessage(@Param("chatroom")String chatroom);
	
}
