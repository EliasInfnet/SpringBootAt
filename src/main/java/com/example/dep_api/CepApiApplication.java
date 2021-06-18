package com.example.dep_api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableFeignClients
@SpringBootApplication
public class CepApiApplication implements CommandLineRunner {

	public static void main(String[] args) {
		SpringApplication.run(CepApiApplication.class, args);
	}

	@Autowired
	private ViaCepService viaCepService;

	@Override
	public void run(String... args) throws Exception {
		System.out.println("Obter CEP ---> 20010-020");
		System.out.println(viaCepService.buscaEnderecoPor("20010020"));
	}
}
