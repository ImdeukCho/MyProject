package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.ClassDAO;
import com.dto.ClassDTO;

public class ClassService {
	
	private ClassDAO dao;
	
	public ClassService() {
		dao = new   ClassDAO();
	}

	public ClassDTO login(String userId) {
		SqlSession session = MySqlSessionFactory.getSession();
		ClassDTO dto = null;
		 try {
			 dto = dao.login(session,userId);
	    	 session.commit();
//	      }catch(Exception e) {
//	    	  e.printStackTrace();
	      }finally {
			session.close();
	      }
	      return dto;
		}//end select
	
	public List<ClassDTO> select() {
	 SqlSession session = MySqlSessionFactory.getSession();
	 List<ClassDTO> list = null; 
	 try {
      list = dao.select(session);
    	  
//      }catch(Exception e) {
//    	  e.printStackTrace();
      }finally {
		session.close();
      }
      return list;
	}//end select
	
	public int memberAdd(ClassDTO dto) {
		 SqlSession session = MySqlSessionFactory.getSession();
		 int n = 0; 
		 try {
	      n = dao.memberAdd(session, dto);
	       session.commit();	  
//	      }catch(Exception e) {
//	    	  e.printStackTrace();
	      }finally {
			session.close();
	      }
	      return n;
	}
	
	public int delete(String prodId) {
		 SqlSession session = MySqlSessionFactory.getSession();
		int n = 0;
		 try {
	      n = dao.delete(session,prodId);
	    	 session.commit();
//	      }catch(Exception e) {
//	    	  e.printStackTrace();
	      }finally {
			session.close();
	      }
	      return n;
		}//end select
	
	public int deleteAll(List<String> list) {
		 SqlSession session = MySqlSessionFactory.getSession();
		int n = 0;
		 try {
	      n = dao.deleteAll(session,list);
	    	 session.commit();
//	      }catch(Exception e) {
//	    	  e.printStackTrace();
	      }finally {
			session.close();
	      }
	      return n;
		}//end select
	

	
}
