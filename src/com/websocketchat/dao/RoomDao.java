package com.websocketchat.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.websocketchat.beans.RoomInfo;

@Repository
public interface RoomDao {
	/**
	 * ��������
	 * @param 
	 * @return
	 */
	public int creatRoom(String chatname);
	/**
	 * ɾ������
	 * @param 
	 * @return
	 */
	public int deleteRoom(String chatname);
	/**
	 * �޸ķ���
	 * @param 
	 * @return
	 */
	public int updateRoom(RoomInfo roomInfo);
	/**
	 * ���ҷ���
	 * @param 
	 * @return
	 */
	public List<RoomInfo> getRooms();
	
}
