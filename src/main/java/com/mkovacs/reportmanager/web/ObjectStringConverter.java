package com.mkovacs.reportmanager.web;

import org.springframework.core.convert.converter.Converter;

public class ObjectStringConverter implements Converter<Object, String> {

	@Override
	public String convert(Object object) {
		String result ="";
		if (object != null) {
			result = object.toString();
		}
		return result;
	}

}
