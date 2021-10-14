package com.dd_pos.util;

import org.springframework.jdbc.core.JdbcTemplate;

public class dbutil {
	JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

}
