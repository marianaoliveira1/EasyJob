package com.easyJob.easyJob.service;

import com.easyJob.easyJob.dto.request.AlunoDtoRequest;
import com.easyJob.easyJob.dto.request.EnderecosDtoRequest;
import com.easyJob.easyJob.dto.request.ProfessorDtoRequest;
import com.easyJob.easyJob.dto.response.AlunoDtoResponse;
import com.easyJob.easyJob.dto.response.EnderecosDtoResponse;
import com.easyJob.easyJob.dto.response.MateriasDtoResponse;
import com.easyJob.easyJob.exceptions.ConflitoException;
import com.easyJob.easyJob.exceptions.NotFound;
import com.easyJob.easyJob.models.Alunos;
import com.easyJob.easyJob.models.Enderecos;
import com.easyJob.easyJob.models.Materias;
import com.easyJob.easyJob.models.Professor;
import com.easyJob.easyJob.repositorys.ProfessorRepository;
import org.modelmapper.ModelMapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ProfessorService {

    private final ModelMapper modelMapper;
    private final ProfessorRepository professorRepository;
    private final EnderecoService enderecoService;

    public ProfessorService(ModelMapper modelMapper, ProfessorRepository professorRepository, EnderecoService enderecoService) {
        this.modelMapper = modelMapper;
        this.professorRepository = professorRepository;
        this.enderecoService = enderecoService;
    }

    @Transactional
    public ProfessorDtoRequest cadastrarProfessor(ProfessorDtoRequest professorDtoRequest) {
        validarCadastroProfessor(professorDtoRequest);

        EnderecosDtoRequest enderecoDto = professorDtoRequest.getEnderecos();
        EnderecosDtoResponse enderecoSalvo = enderecoService.cadastrarEndereco(enderecoDto);
        Professor professor = modelMapper.map(professorDtoRequest,Professor.class);
        professor.setEnderecos(modelMapper.map(enderecoSalvo, Enderecos.class));
        professorRepository.save(professor);
        return modelMapper.map(professor,ProfessorDtoRequest.class);
    }

    private void validarCadastroProfessor(ProfessorDtoRequest professorDtoRequest) {
        if (professorRepository.
                existsByEmail(professorDtoRequest.getEmail())){
            throw new ConflitoException("Email já cadastrado!");
        }
    }


    public void deletarProfessor(Long professorId) {
        Professor professor = professorRepository.findById(professorId).orElseThrow(()->new NotFound("Professor não encontrado!"));
        professorRepository.delete(professor);
    }

    public ProfessorDtoRequest buscarProfessorId(Long professorId) {
        Professor professor = professorRepository.findById(professorId).orElseThrow(()->new NotFound("Professor não encontrado!"));
        return  modelMapper.map(professor, ProfessorDtoRequest.class);
    }

    public Page<ProfessorDtoRequest> buscarTodosProfessores(Pageable pageable) {
        Page<Professor> professors = professorRepository.findAll(pageable);
        List<ProfessorDtoRequest> listaProfessores = professors.stream()
                .map(m -> modelMapper.map(m,ProfessorDtoRequest.class) )
                .collect(Collectors.toList());
        return new PageImpl<>(listaProfessores,pageable,professors.getTotalElements());
    }

    public Page<ProfessorDtoRequest> buscarProfessorNome(String professorNome, Pageable pageable) {
        Page<Professor> professors = professorRepository.findByNome(professorNome,pageable);
        List<ProfessorDtoRequest> listaProfessores =
                professors.stream().map(a -> modelMapper.map(a,ProfessorDtoRequest.class)).collect(Collectors.toList());

        return new PageImpl<>(listaProfessores,pageable,professors.getTotalElements());
    }

}
