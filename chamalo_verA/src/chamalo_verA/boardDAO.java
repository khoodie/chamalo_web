package chamalo_verA;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class boardDAO {
	Connection con;
	Statement st;
	PreparedStatement ps;
	ResultSet rs;

	//MySQL
	String driverName="com.mysql.jdbc.Driver"; 
	String url ="jdbc:mysql://127.0.0.1:3306/chamalo?useSSL=false";
	
	
	public boardDAO(){
		
	try {
        //로드
        Class.forName(driverName);
       
        //연결
        con = DriverManager.getConnection(url,"root","dk0851");      
       
    } catch (ClassNotFoundException e1) {
       
        System.out.println(e1+"=> 로드 실패");
       
    } catch (SQLException e) {
       
        System.out.println(e+"=> 연결 실패");
    }
}
	
	public void db_close(){
	       
        try {
           
            if (rs != null ) rs.close();
            if (ps != null ) ps.close();      
            if (st != null ) st.close();
       
        } catch (SQLException e) {
            System.out.println(e+"=> 닫기 오류");
        }      
       
    } //db_close

	/**
     * user테이블에 insert하는 메소드 작성
     */
    public int boardInsert(boardVo vo){
        int result = 0;
       
        try{
        //실행
     String sql = "INSERT INTO notice_board(board_usr_id,board_usr_name,board_subject,board_content) VALUES(?,?,?,?)";
           
  
            ps = con.prepareStatement(sql);
            ps.setString(1, vo.getId());
            ps.setString(2, vo.getName());
            ps.setString(3, vo.getSubject());
            ps.setString(4, vo.getContent());
            result = ps.executeUpdate();
           
        }catch (Exception e){
           
            System.out.println(e + "=> boardInsert fail");
           
        }finally{
            db_close();
        }
       
        return result;
    }//boardInsert
    
    



}




