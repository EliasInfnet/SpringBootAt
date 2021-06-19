package com.example.dep_api;

import java.util.List;
import java.util.Optional;

import com.example.dep_api.repository.UserRepository;
import com.example.dep_api.service.AmazonClient;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@SpringBootApplication
public class HomeController {

    @Autowired
    AmazonClient amazonClient;

    @Autowired
    ViaCepService viaCepService;

    @Autowired
    UserRepository userRepository;

    @RequestMapping("/")
    public String home(Model model) {

        Endereco endereco = new Endereco();
        Endereco enderecoAux = new Endereco();
        UserDTO user = new UserDTO();

        PalavraChave pv = new PalavraChave();
        PalavraChave pv2 = new PalavraChave();

        model.addAttribute("complemento", "");
        model.addAttribute("user", user);
        model.addAttribute("endereco", endereco);
        model.addAttribute("enderecoAux", enderecoAux);

        model.addAttribute("pv", pv);
        model.addAttribute("pv2", pv2);
        System.out.println("Go -- Home");
        return "index";
    }

    @PostMapping("/")
    public String submitForm(@ModelAttribute("user") UserDTO userDTO, ModelMap model) {

        User user1 = new User(userDTO.getNome(), userDTO.getEmail(), userDTO.getTelefone(), userDTO.getCep(),
                viaCepService.buscaEnderecoPor(userDTO.getCep()).getLogradouro(),
                viaCepService.buscaEnderecoPor(userDTO.getCep()).getBairro(),
                viaCepService.buscaEnderecoPor(userDTO.getCep()).getLocalidade(),
                amazonClient.uploadFile(userDTO.getFoto()));

        model.addAttribute("user", user1);
        userRepository.save(user1);
        return "envio";
    }

    @RequestMapping("/lista")
    public String lista(Model model) {

        List<User> listaUsuarios = userRepository.findAll();
        model.addAttribute("listaUsuarios", listaUsuarios);

        return "lista";
    }

    @GetMapping("/editar/{id}")
    public String listaEdit(@PathVariable("id") Long id, Model model) {

        User user2 = userRepository.findById(id).get();
        model.addAttribute("userAux", user2);

        UserDTO userDTO = new UserDTO();

        model.addAttribute("userEdicao", userDTO);
        return "edicao";
    }

    @PostMapping("/editar/{id}")
    public String submitFormEdit(@PathVariable("id") Long id, @ModelAttribute("userEdicao") UserDTO userDTO,
            ModelMap model) {

        User user1 = new User(id, userDTO.getNome(), userDTO.getEmail(), userDTO.getTelefone(), userDTO.getCep(),
                viaCepService.buscaEnderecoPor(userDTO.getCep()).getLogradouro(),
                viaCepService.buscaEnderecoPor(userDTO.getCep()).getBairro(),
                viaCepService.buscaEnderecoPor(userDTO.getCep()).getLocalidade(),
                amazonClient.uploadFile(userDTO.getFoto()));

        userRepository.save(user1);
        return "edicao";
    }

    @GetMapping("/delete/{id}")
    public String listaDelete(@PathVariable("id") Long id, Model model) {
        User user2 = userRepository.findById(id).get();
        userRepository.delete(user2);
        return "delete";
    }
}