package com.yc.carrun.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.yc.carrun.bean.User;

public interface UserDao {
	@Select("select * from tb_users where uname='${uname} 'and upass='${upass}'")
	  public User select(User user);
	@Insert("insert into  tb_users values(null,#{uname},#{upass},#{type},#{regtime},#{email},#{name},#{idcard})")
     public void  reg(User user);
	@Select("select email from tb_users where uname='${uname}'")
	  public String selectEmail(User user); 
	@Update("update tb_users set upass='${upass}'  where uname='${uname}'")
	public void updatepwd(User user);
}
