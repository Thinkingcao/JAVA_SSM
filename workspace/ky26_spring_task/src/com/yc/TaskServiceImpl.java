package com.yc;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;


/**
 * 
 * spring��@Scheduledע��  ��Ҫд��ʵ����
 * ��ʱ�������񷽷������з���ֵ������з���ֵ��spring��ʼ����ʱ���������и�������Ҫ�趨һ��proxytargetclass��ĳ��ֵΪtrue��
 * ʵ������Ҫ�������ע��@Component
 *
 */

@Component//Ĭ����һ��Bean
public class TaskServiceImpl implements TaskService {

	
	@Scheduled(cron="0/5 * *  * * ? ") //cron---5�����һ��
	@Override
	public void testTask() {
		// TODO Auto-generated method stub
		 Date day=new Date();    
	     SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	     System.out.println(df.format(day)+"---�������");
	}

}
