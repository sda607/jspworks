package com.dao;

import java.util.ArrayList;

public class AddrBookDAO {
//AddrBook 객체 관리 (추가,보기,삭제)
	private ArrayList<AddrBook> addrList = new ArrayList<>();
	
	//주소추가
	public void add(AddrBook addrBook) {
		addrList.add(addrBook);
	}
	
	//목록보기
	public ArrayList<AddrBook> getListAll(){
		return addrList;
	}
}
