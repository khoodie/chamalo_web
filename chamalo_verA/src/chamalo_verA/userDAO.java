package chamalo_verA;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
//import java.util.ArrayList;
import chamalo_verA.userVo;

public class userDAO {
	Connection con;
	Statement st;
	PreparedStatement ps;
	ResultSet rs;

	//MySQL
	String driverName="com.mysql.jdbc.Driver"; 
	String url ="jdbc:mysql://127.0.0.1:3306/chamalo?useSSL=false";
	
	
	public userDAO(){
		
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
}//JDBC_memberDAO()
	
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
    public int userInsert(userVo vo){
        int result = 0;
       
        try{
        //실행
            String sql = "INSERT INTO user VALUES(?,?,?)";
           
            ps = con.prepareStatement(sql);
            ps.setString(1, vo.getId());
            ps.setString(2, vo.getPwd());
            ps.setString(3, vo.getName());
          
            result = ps.executeUpdate();
           
        }catch (Exception e){
           
            System.out.println(e + "=> userInsert fail");
           
        }finally{
            db_close();
        }
       
        return result;
    }//userInsert
    
    public int userLogin(userVo vo){
    	int result=0;
    	
    	try{
        
                String sql = "SELECT * FROM user WHERE usr_id='"+vo.getId()+"'AND usr_pwd='"+vo.getPwd()+"'";
               
                ps = con.prepareStatement(sql);
                int check=0;
                if(ps.execute()){
                	check=1;
                	}else{
                	check=0;	
                	}
                result = check;
               
            }catch (Exception e){
               
                System.out.println(e + "=> userLoginProcess fail");
               
            }finally{
                db_close();
            }
           
            return result;
        }//memberInsert



}



