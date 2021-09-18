package com.elissonsilva.demoacmeap.repositor;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.elissonsilva.demoacmeap.domain.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente, Long> {

	public Optional<Cliente> findByCpf(String cpf);

}
