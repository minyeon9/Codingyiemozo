package com.kh.mvc.stay.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BoardList {
	private int no;
	private String type;
	private String name;
	private String imgPath;
	private String addr;
	private String phone;
	private String price;
	private String content;
	private String xlat;
	private String ylong;
	private String local;
}
