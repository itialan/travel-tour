package com.nqhtour.util;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class MessageUtil {
	public Map<String, String> getMessage(String message) {
		Map<String, String> result = new HashMap<>();
		if (message.equals("update_success")) {
			result.put("message", "Update success!");
			result.put("alert", "success");
		} else if (message.equals("insert_success")) {
			result.put("message", "Insert success!");
			result.put("alert", "success");
		} else if (message.equals("delete_success")) {
			result.put("message", "Delete success!");
			result.put("alert", "success");
		} else if (message.equals("error_system")) {
			result.put("message", "Error system!");
			result.put("alert", "danger");
		} else if (message.equals("create_success")) {
			result.put("message", "Create account success!");
			result.put("alert", "success");
		} else if (message.equals("create_failed")) {
			result.put("message", "That Email is taken. Try another!");
			result.put("alert", "danger");
		} else if (message.equals("delete_people_failed")) {
			result.put("message", "Can't delete tours with reservation!");
			result.put("alert", "danger");
		}
		return result;
	}
}
