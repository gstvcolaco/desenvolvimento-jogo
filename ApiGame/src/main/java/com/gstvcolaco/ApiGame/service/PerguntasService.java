package com.gstvcolaco.ApiGame.service;

import com.gstvcolaco.ApiGame.model.Perguntas;
import com.gstvcolaco.ApiGame.repository.PerguntasRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.Random;

@Service
public class PerguntasService {
    @Autowired
    PerguntasRepository perguntasRepository;

    public Perguntas localizar(int id){
        Optional<Perguntas> perguntasBusca = perguntasRepository.findById(id);
        if (perguntasBusca.isPresent()){
            return  perguntasBusca.get();
        }else {
            return null;
        }
    }
    public Perguntas sortear(){
        int aleatorio = new Random().nextInt(164)+1;
        Optional<Perguntas> perguntasBusca = perguntasRepository.findById(aleatorio);
        if (perguntasBusca.isPresent()){
            return  perguntasBusca.get();
        }else {
            return null;
        }
    }
    public List<Perguntas> pesquisar(){
        return perguntasRepository.findAll();
    }
    public Perguntas salvar(Perguntas perguntas){
        return perguntasRepository.save(perguntas);
    }
    public void excluir(int id){
        perguntasRepository.deleteById(id);
    }

}
