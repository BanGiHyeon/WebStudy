package com.sist.model;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import com.sist.dao.*;
public class FoodModel {
	public void foodDetailData(HttpServletRequest reuquest)
	{
		/*try
		{
			reuquest.setCharacterEncoding("UTF-8");
		}catch(Exception ex) {}*/
		String fd=reuquest.getParameter("fd");
		String ss=reuquest.getParameter("ss");
		String fno=reuquest.getParameter("fno");
		
		FoodDAO dao=FoodDAO.newInstance();
		FoodVO vo=dao.foodDetailData(Integer.parseInt(fno));
		
		reuquest.setAttribute("vo", vo);
		reuquest.setAttribute("fd", fd);
		reuquest.setAttribute("ss", ss);
	}
}
