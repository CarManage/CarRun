package com.yc.CarRun.biz;

import java.sql.Timestamp;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.CarRun.bean.Cars;
import com.yc.CarRun.bean.CheXi;
import com.yc.CarRun.bean.CheXing;
import com.yc.CarRun.bean.User;
import com.yc.CarRun.dao.CarsDao;

@Service
public class CarsBiz {
	@Autowired
	private CarsDao cdao;
	
	public void insert(Cars car) {
		
		cdao.insert(car);
	}

	public List<Cars> selectAllPinpai() {
		return cdao.SelectAllpinpai();
	}

	public void insertChexi(CheXi chexi) {
		cdao.insertChexi(chexi);
		
	}

	public  List<CheXi> selectChexiByHomo(Integer homo) {
		return cdao.selectChexiByhomo(homo);
	}

	public void insertCars(CheXing chexing) {
		cdao.insertCars(chexing);
		
	}

	public List<CheXing> selectCars(CheXing chexing) {
		return cdao.selectCars(chexing.getHomo1(),chexing.getHomo2());
	}

	

}
