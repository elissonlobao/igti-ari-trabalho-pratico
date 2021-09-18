package com.elissonsilva.demoacmeap.repositor;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.elissonsilva.demoacmeap.domain.Cliente;
import com.elissonsilva.demoacmeap.domain.Instalacao;

public interface InstalacaoRepository extends JpaRepository<Instalacao, Long> {

	public Optional<Instalacao> findByCodigo(String codigo);
	public List<Instalacao> findByCliente(Cliente cliente);
	
	
}
