package com.websocketchat.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.websocketchat.beans.RoomInfo;
import com.websocketchat.dao.RoomDao;

@Service
public class RoomService {

	@Resource
	private RoomDao dao;
	/**
	 * ��ȡ�����б�
	 * 
	 * @return
	 */
	public PageInfo<RoomInfo> getRooms(String pageNum, String pageSize) {
		int num = 1;
		int size = 8;
		if (pageNum != null && !"".equals(pageNum)) {
			num = Integer.parseInt(pageNum);
		}
		if (pageSize != null && !"".equals(pageSize)) {
			size = Integer.parseInt(pageSize);
		}

		PageHelper.startPage(num, size);
		List<RoomInfo> tabOne = dao.getRooms();
		PageInfo<RoomInfo> page = new PageInfo<RoomInfo>(tabOne);

		return page;
		
	}
	/**
	 * �����·���
	 * 
	 * @return
	 */
	public int createRoom(String chatname){
		return dao.creatRoom(chatname);
	}
	/**
	 * ɾ������
	 * 
	 * @return
	 */
	public int deleteRoom(String chatname){
		return dao.deleteRoom(chatname);
	}
	/**
	 * �޸ķ���
	 * 
	 * @return
	 */
	public int updateRoom(String chatname,String chatids){
		
		RoomInfo roomInfo =new RoomInfo();
		roomInfo.setChat_id(Integer.parseInt(chatids));
		roomInfo.setChatname(chatname);
		return dao.updateRoom(roomInfo);
	}
}
