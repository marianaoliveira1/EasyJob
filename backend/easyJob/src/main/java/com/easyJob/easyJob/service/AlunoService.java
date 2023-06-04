package com.easyJob.easyJob.service;

import com.easyJob.easyJob.dto.request.AlunoDtoRequest;
import com.easyJob.easyJob.dto.request.EnderecosDtoRequest;
import com.easyJob.easyJob.dto.response.AlunoDtoResponse;
import com.easyJob.easyJob.dto.response.EnderecosDtoResponse;
import com.easyJob.easyJob.exceptions.ConflitoException;
import com.easyJob.easyJob.exceptions.NotFound;
import com.easyJob.easyJob.models.Alunos;
import com.easyJob.easyJob.models.Enderecos;
import com.easyJob.easyJob.repositorys.AlunoRepository;
import org.modelmapper.ModelMapper;
import org.modelmapper.internal.bytebuddy.implementation.bytecode.Throw;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class AlunoService {

    private final ModelMapper modelMapper;
    private final AlunoRepository alunoRepository;
    private final EnderecoService enderecoService;

    public AlunoService(ModelMapper modelMapper, AlunoRepository alunoRepository, EnderecoService enderecoService) {
        this.modelMapper = modelMapper;
        this.alunoRepository = alunoRepository;
        this.enderecoService = enderecoService;
    }



    @Transactional
    public AlunoDtoRequest cadastrarAluno(AlunoDtoRequest alunoDtoRequest) {
        validarCadastroAluno(alunoDtoRequest);

        EnderecosDtoRequest enderecoDto = alunoDtoRequest.getEnderecos();
        EnderecosDtoResponse enderecoSalvo = enderecoService.cadastrarEndereco(enderecoDto);
        Alunos alunos = modelMapper.map(alunoDtoRequest, Alunos.class);
        alunos.setEnderecos(modelMapper.map(enderecoSalvo, Enderecos.class));
        alunos.setSenha(new  BCryptPasswordEncoder().encode(alunos.getSenha()));
        alunoRepository.save(alunos);
        return modelMapper.map(alunos, AlunoDtoRequest.class);
    }

    private void validarCadastroAluno(AlunoDtoRequest alunoDtoRequest) {
        if (alunoRepository.
                existsByEmail(alunoDtoRequest.getEmail())){
            throw new ConflitoException("Email já cadastrado!");
        }
    }

    public void deletarAluno(Long alunoId) {
        Alunos aluno = alunoRepository.findById(alunoId).orElseThrow(()->new NotFound("Aluno não encontrado!"));
        alunoRepository.delete(aluno);
    }

    public AlunoDtoResponse buscarAlunoId(Long alunoId) {
        Alunos alunos = alunoRepository.findById(alunoId).orElseThrow(()->new NotFound("Aluno não encontrado!"));
        return  modelMapper.map(alunos, AlunoDtoResponse.class);
    }

    public Page<AlunoDtoResponse> buscarAlunoNome(String alunoNome, Pageable pageable) {
        Page<Alunos> alunos = alunoRepository.findByNome(alunoNome,pageable);
        List<AlunoDtoResponse> listaAlunos =
                alunos.stream().map(a -> modelMapper.map(a, AlunoDtoResponse.class)).collect(Collectors.toList());

        return new PageImpl<>(listaAlunos,pageable,alunos.getTotalElements());
    }



//    @Transactional
//    public void atualizarEndereco(Long id, EnderecosDtoRequest enderecoReqDto) {
//        Enderecos enderecos = enderecoRepository.findById(id).orElseThrow(()->new NotFound("Endereco não encontrado!"));
//        enderecos = modelMapper.map(enderecoReqDto,Enderecos.class);
//        enderecos.setId(id);
//        enderecoRepository.save(enderecos);
//    }
//

}
