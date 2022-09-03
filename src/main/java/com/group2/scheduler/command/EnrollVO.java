package com.group2.scheduler.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EnrollVO {
	private int id;
	private String date;
	private String time;
	private String name;
	private String title;
	private int max;
	
}