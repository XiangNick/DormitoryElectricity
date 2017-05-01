package com.xiangnick.dormitory.controller.converter;

import org.springframework.core.convert.converter.Converter;

public class CustomerDetailConverter implements Converter<String, String> {

	public String convert(String resource) {
		if (resource.equals("")) {
			return null;
		}
		return resource;
	}

}
