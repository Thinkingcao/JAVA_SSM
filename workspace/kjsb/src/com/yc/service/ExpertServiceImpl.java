package com.yc.service;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.yc.dao.ExpertDao;
import com.yc.model.ExpertModel;

@Service("es")
public class ExpertServiceImpl implements ExpertService {
	@Resource 
	private ExpertDao expertDao;
	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ExpertModel findById(int uid) {
		// TODO Auto-generated method stub
		System.out.println(uid);
		System.out.println("����ר�Ҳ���service");
		return expertDao.findById(uid);
	}
	

}
