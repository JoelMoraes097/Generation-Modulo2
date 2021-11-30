package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloController {

	@GetMapping
	public String hello() {
		return " Hello World! \nAtenção aos detalhes e Persistência \nPara essa semana tenho como objetivo aprender o máximo de todo o conteúdo passado. ";
	}

}
