package com.easyJob.easyJob.service;

import com.easyJob.easyJob.dto.request.AlunoDtoRequest;
import com.easyJob.easyJob.dto.request.EnderecosDtoRequest;
import com.easyJob.easyJob.dto.request.MateriasDtoRequest;
import com.easyJob.easyJob.dto.response.EnderecosDtoResponse;
import com.easyJob.easyJob.dto.response.MateriasDtoResponse;
import com.easyJob.easyJob.models.Alunos;
import com.easyJob.easyJob.models.Enderecos;
import com.easyJob.easyJob.models.Materias;
import com.easyJob.easyJob.repositorys.MateriasRepository;
import org.modelmapper.ModelMapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class MateriasService {

    private final ModelMapper modelMapper;
    private final MateriasRepository materiasRepository;
    private final EnderecoService enderecoService;

    public MateriasService(ModelMapper modelMapper, MateriasRepository materiasRepository, EnderecoService enderecoService) {
        this.modelMapper = modelMapper;
        this.materiasRepository = materiasRepository;
        this.enderecoService = enderecoService;
    }

    @Transactional
    public MateriasDtoResponse cadastrarMaterias(MateriasDtoRequest materiasDtoRequest) {
//        materiasDtoRequest.UPPERCASE();
        Materias materias = modelMapper.map(materiasDtoRequest, Materias.class);
        materiasRepository.save(materias);
        return modelMapper.map(materias,MateriasDtoResponse.class);
    }

    public Page<MateriasDtoResponse> listarTodasMaterias(Pageable pageable){
        Page<Materias> materias = materiasRepository.findAll(pageable);
        List<MateriasDtoResponse> listaMaterias = materias.stream()
                .map(m -> modelMapper.map(m,MateriasDtoResponse.class) )
                .collect(Collectors.toList());
        return new PageImpl<>(listaMaterias,pageable,materias.getTotalElements());
    }

}
