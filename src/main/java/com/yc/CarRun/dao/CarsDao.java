package com.yc.CarRun.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.yc.CarRun.bean.Cars;
import com.yc.CarRun.bean.CheXi;
import com.yc.CarRun.bean.CheXing;

public interface CarsDao {

	@Insert("insert into tb_cars values(null,#{name},#{time},#{createman},#{logo})")
	@Options( useGeneratedKeys=true ,keyColumn="id", keyProperty="id")
	public void insert(Cars car);

	@Select("select * from tb_cars")
	public List<Cars> SelectAllpinpai();

	@Insert("insert into tb_chexi values(null,#{name},#{homo},#{baojia1},#{time},#{createman},#{baojia2})")
	@Options( useGeneratedKeys=true ,keyColumn="id", keyProperty="id")
	public void insertChexi(CheXi chexi);

	@Select("select * from tb_chexi where homo=#{homo}")
	public List<CheXi> selectChexiByhomo(@Param("homo")Integer homo);

	@Insert("insert into tb_chexing values(null,#{name},#{homo1},#{homo2},#{image},#{createman},#{price},#{time})")
	@Options( useGeneratedKeys=true ,keyColumn="id", keyProperty="id")
	public void insertCars(CheXing chexing);

	@Select("select * from tb_chexing where homo1=#{homo1} and homo2=#{homo2}")
	public List<CheXing> selectCars(@Param("homo1")Integer homo1, @Param("homo2")Integer homo2);

	
	@Select("select a.*,b.name pname from tb_chexi a,tb_cars b where a.Homo=b.ID")
	public  List<CheXi> selectAllchexi();

	
}
