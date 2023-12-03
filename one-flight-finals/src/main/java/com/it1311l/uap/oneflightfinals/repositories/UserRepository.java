package com.it1311l.uap.oneflightfinals.repositories;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.it1311l.uap.oneflightfinals.models.User;

@Mapper
public interface UserRepository {
	
	@Insert("INSERT INTO users (email, password, birthday, name, phoneNumber, passportDetails, userType) VALUES (#{email}, #{password}, #{birthday}, #{name}, #{phoneNumber}, #{passportDetails}, #{userType})")
	public int create(User user);
	
	@Select("SELECT * FROM users")
	public List<User> findAll();
	
	@Select("SELECT * FROM users WHERE id=#{userId}")
	public User find(@Param("userId") Integer userId);
	
	@Update("UPDATE users SET email=#{email}, password=#{password}, birthday=#{birthday}, name=#{name}, phoneNumber=#{phoneNumber}, passportDetails=#{passportDetails}, userType=#{userType} WHERE id=#{id}")
	public int update(User user);
	
	@Delete("DELETE FROM users WHERE id=#{userId}")
	public int delete(@Param("userId") Integer userId);
	
	@Select("SELECT * FROM users WHERE email=#{email} AND password=#{password} LIMIT 1")
	public User login(@Param("email") String email, @Param("password") String password);
}
