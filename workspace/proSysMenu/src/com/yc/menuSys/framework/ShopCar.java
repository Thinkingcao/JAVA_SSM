package com.yc.menuSys.framework;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yc.menuSys.dao.MenuDao;
import com.yc.menuSys.dao.MenuDaoImpl;
import com.yc.menuSys.model.Menu;

public class ShopCar {
	// �˿͵�Ĳ�
	private	Map<Integer, Menu> menuItem = new HashMap<Integer, Menu>();
	
	public Map<Integer, Menu> getMenuItem() {
		return menuItem;
	}

	/**
	 * ɾ�����
	 * 
	 * @param id
	 */
	public void del(int id) {
		menuItem.remove(id);
	}

	public void update(Menu m, int num) {
		m.setNum(num);
		menuItem.put(m.getId(), m);
	}

	/**
	 * ��ѯ���е�Ĳ�
	 * 
	 * @return
	 */
	public List<Menu> findAll() {
		return (List<Menu>) menuItem.values();
	}

	/**
	 * ���ӵ��
	 * 
	 * @param m
	 */
	public void add(Menu m) {
		if (menuItem.containsKey(m.getId()))// ���ӷ���
		{
			Menu mt = findById(m.getId());
			mt.setNum(mt.getNum() + 1);
			menuItem.put(mt.getId(), mt);
		} else {
			m.setNum(1);
			menuItem.put(m.getId(), m);
		}
	}

	public void sub(Menu m) {
		if (menuItem.containsKey(m.getId()))// ���ٷ���
		{
			Menu mt = findById(m.getId());
			mt.setNum(mt.getNum() - 1);
			if (mt.getNum() < 1) {
				menuItem.remove(m.getId());
			} else {
				menuItem.put(mt.getId(), mt);
			}
		}
	}

	/**
	 * ͨ���˵ı���ڹ��ﳵ�в��Ҳ�
	 * 
	 * @param id
	 * @return
	 */
	public Menu findById(int id) {
		return menuItem.get(id);
	}

	public void printShopCar() {
		for (Menu m : menuItem.values()) {
			System.out.println(m);
		}
	}

	/**
	 * ���㹺�ﳵ�в˵��ܼ۸�
	 * 
	 * @return
	 */
	public double getTotalPrice() {
		double tp = 0;
		for (Menu m : menuItem.values()) {
			tp += m.getPrice() * m.getNum();
		}
		return tp;
	}

	/**
	 * ���㹺�ﳵ�в˵�������
	 * 
	 * @return
	 */
	public int getTotalNum() {
		int tn = 0;
		for (Menu m : menuItem.values()) {
			tn += m.getNum();
		}
		return tn;
	}

}

