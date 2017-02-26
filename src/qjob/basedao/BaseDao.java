package qjob.basedao;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class BaseDao {
	private static SqlSessionFactory sessionFactory;
	private SqlSession session;
	public SqlSession getSession() {
		return session;
	}
	public void setSession(SqlSession session) {
		this.session = session;
	}
	// 块
	static{
		String resource ="mybatis.xml" ;
		InputStream in;
		try {
			in = Resources.getResourceAsStream(resource);
			// 创建session工厂
			sessionFactory = new SqlSessionFactoryBuilder().build(in);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	// 开启
	public void openSession(){
		if(session==null){
			// true 表示事物自动提交    默认是非自动的			
			session = sessionFactory.openSession(true);
		}
	}
	// 关闭
	public void closeSession(){
		if(session!=null){
			session.close();
		}
	}
	
}

