package com.easyJob.easyJob.service;

import com.easyJob.easyJob.exceptions.NotFound;
import com.easyJob.easyJob.models.Alunos;
import com.easyJob.easyJob.repositorys.AlunoRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class ALunoLogin implements UserDetailsService {
    private final AlunoRepository alunoRepository;

    public ALunoLogin(AlunoRepository alunoRepository) {
        this.alunoRepository = alunoRepository;
    }


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Alunos aluno = alunoRepository.findByEmail(username).orElseThrow(()-> new NotFound("Usuário não encontrado"));
        return aluno;
    }
}
