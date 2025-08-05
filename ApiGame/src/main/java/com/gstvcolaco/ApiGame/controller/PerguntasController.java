package com.gstvcolaco.ApiGame.controller;

import com.gstvcolaco.ApiGame.model.Perguntas;
import com.gstvcolaco.ApiGame.service.PerguntasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/perguntas")
public class PerguntasController {

    @Autowired
    PerguntasService perguntasService;

    @GetMapping("/{id}")
    public ResponseEntity<Perguntas> localizar(@PathVariable int id){
        return ResponseEntity.ok(perguntasService.localizar(id));
    }
    @GetMapping()
    public ResponseEntity<List<Perguntas>> pesquisar(){
        return ResponseEntity.ok(perguntasService.pesquisar());
    }
    @PostMapping()
    public ResponseEntity<Perguntas> salvar(@RequestBody Perguntas perguntas){
        return ResponseEntity.ok(perguntasService.salvar(perguntas));
    }
    @DeleteMapping("/{id}")
    public ResponseEntity<String> excluir(@PathVariable int id){
        try{
            perguntasService.excluir(id);
            return ResponseEntity.ok("Pergunta " + id + " excluido");
        }catch (Exception e){
            return ResponseEntity.ok("Erro ao excluir a Pergunta " + id + ": " + e.getMessage());
        }
    }

}
