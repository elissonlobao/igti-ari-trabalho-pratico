package com.elissonsilva.demoacmeap.repositor;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.elissonsilva.demoacmeap.domain.Fatura;
import com.elissonsilva.demoacmeap.domain.Instalacao;

public interface FaturaRepository extends JpaRepository<Fatura, Long> {

	public Optional<Fatura> findByCodigo(String codigo);
	public List<Fatura> findByInstalacao(Instalacao instalacao);
	
}