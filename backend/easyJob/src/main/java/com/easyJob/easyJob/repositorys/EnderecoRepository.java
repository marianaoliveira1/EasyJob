package com.easyJob.easyJob.repositorys;

import com.easyJob.easyJob.models.Enderecos;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface EnderecoRepository extends JpaRepository<Enderecos,Long> {
}
