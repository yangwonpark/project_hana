package com.itbank.chat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EchoController {
	
	@RequestMapping(value="chat/admin", method=RequestMethod.GET)
	public String echo() {
	
		return "chat/admin";
	}
}
