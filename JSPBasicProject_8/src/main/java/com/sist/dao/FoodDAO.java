package com.sist.dao;

import java.util.*;
import java.sql.*;
import com.sist.dbcp.*;
import com.sist.vo.*;

public class FoodDAO {
   // 1. 오라클 연결 객체
   private  Connection conn;
   //   2. SQL 송수신
   private PreparedStatement ps;
   // 3. DBCP
   private CreateDBCPConnection dbconn=new CreateDBCPConnection();
   // 4. 싱글턴
   private static FoodDAO dao;
   
   //   기능 => 1. 카테고리 읽기
   public List<FoodCategoryVO> food_category_data()
   {
      List<FoodCategoryVO> list=new ArrayList<FoodCategoryVO>();
      try
      {
         // 1. 주소값 얻기 (오라클 연결)
         conn=dbconn.getConnection();
         //   2. SQL => 문장 설정
         String sql="SELECT cno,title,poster "
               +"FROM food_category "
               +"ORDER BY cno ASC";
         //   3. SQL문장 전송
         ps=conn.prepareStatement(sql);
         
         //   4. 실행 요청 후에 => 결과값 요청
         ResultSet rs=ps.executeQuery();
         //   5. 저장된 값 모아서 => 브라우저로 전송 준비
         while(rs.next()) // rs.next() : 31번째 위치한 커서를 출력한 첫번째 위치로 이동
         {
            FoodCategoryVO vo=new FoodCategoryVO();
            vo.setCno(rs.getInt(1));
            vo.setTitle(rs.getString(2));
            vo.setPoster(rs.getString(3));
            list.add(vo);
            // ROW => 매칭 (VO,Bean) 한줄읽으면 VO, 여러줄 읽으면 list
         }
         rs.close();
         
      }catch(Exception ex)
      {
         ex.printStackTrace();
      }
      finally
      {
         dbconn.disConnection(conn, ps);
      }
      return list;
   }
   //   기능 => 2. 로그인 => session이 이용되는 곳 (*****)
   //   => 메뉴 변경 => session 이용
   //   2. 전체 데이터 읽기
   public List<FoodVO> foodAllData(int page)
   {
      List<FoodVO> list=new ArrayList<FoodVO>();
      try
      {
         conn=dbconn.getConnection();
         String sql="SELECT fno,name,poster,num "
               +"FROM (SELECT fno,name,poster,rownum as num "
               +"FROM (SELECT fno,name,poster "
               +"FROM food_menu_house ORDER BY fno ASC)) "
               +"WHERE num BETWEEN ? AND ?";
         ps=conn.prepareStatement(sql);
         int rowSize=12;
         int start=(rowSize*page)-(rowSize-1);
         int end=rowSize*page;
         
         ps.setInt(1, start);
         ps.setInt(2, end);
         
         ResultSet rs=ps.executeQuery();
         while(rs.next())
         {
            FoodVO vo=new FoodVO();
            vo.setFno(rs.getInt(1));
            vo.setName(rs.getString(2));
            vo.setPoster(rs.getString(3));
            list.add(vo);
         }
      }catch(Exception ex)
      {
         ex.printStackTrace();
      }
      finally
      {
         dbconn.disConnection(conn, ps);
      }
      return list;
   }
   //   3. 전체 데이터 총페이지
   public int foodAllTotalPage()
   {
      int total=0;
      try
      {
         conn=dbconn.getConnection();
         String sql="SELECT CEIL(COUNT(*)/12.0) "
               +"FROM food_menu_house";
         ps=conn.prepareStatement(sql);
         ResultSet rs=ps.executeQuery();
         rs.next();
         total=rs.getInt(1);
         rs.close();
      }catch(Exception ex)
      {
         ex.printStackTrace();
      }
      finally
      {
         dbconn.disConnection(conn, ps);
      }
      return total;
   }
   //   4. 검색 데이터 읽기
   public List<FoodVO> foodFindData(int page,String fs,String ss)
   {
      List<FoodVO> list=new ArrayList<FoodVO>();
      try
      {
         conn=dbconn.getConnection();
         String sql="SELECT fno,name,poster,num "
               +"FROM (SELECT fno,name,poster,rownum as num "
               +"FROM (SELECT fno,name,poster "
               +"FROM food_menu_house WHERE "+fs+" LIKE '%'||?||'%' ORDER BY fno ASC)) "
               +"WHERE num BETWEEN ? AND ?";
         ps=conn.prepareStatement(sql);
         int rowSize=12;
         int start=(rowSize*page)-(rowSize-1);
         int end=rowSize*page;
         
         ps.setString(1, ss);
         ps.setInt(2, start);
         ps.setInt(3, end);
         
         ResultSet rs=ps.executeQuery();
         while(rs.next())
         {
            FoodVO vo=new FoodVO();
            vo.setFno(rs.getInt(1));
            vo.setName(rs.getString(2));
            vo.setPoster(rs.getString(3));
            list.add(vo);
         }
      }catch(Exception ex)
      {
         ex.printStackTrace();
      }
      finally
      {
         dbconn.disConnection(conn, ps);
      }
      return list;
   }
   //   5. 검색 데이터 총페이지
   public int foodFindTotalPage(String fs,String ss)
   {
      int total=0;
      try
      {
         conn=dbconn.getConnection();
         String sql="SELECT CEIL(COUNT(*)/12.0) "
               +"FROM food_menu_house "
               +"WHERE "+fs+" LIKE '%'||?||'%'";
         ps=conn.prepareStatement(sql);
         ps.setString(1, ss);
         ResultSet rs=ps.executeQuery();
         rs.next();
         total=rs.getInt(1);
         rs.close();
      }catch(Exception ex)
      {
         ex.printStackTrace();
      }
      finally
      {
         dbconn.disConnection(conn, ps);
      }
      return total;
   }
}