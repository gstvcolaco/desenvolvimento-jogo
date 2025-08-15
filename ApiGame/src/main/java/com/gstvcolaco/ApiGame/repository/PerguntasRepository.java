package com.gstvcolaco.ApiGame.repository;

import com.gstvcolaco.ApiGame.model.Perguntas;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PerguntasRepository  extends JpaRepository<Perguntas, Integer> {
}
