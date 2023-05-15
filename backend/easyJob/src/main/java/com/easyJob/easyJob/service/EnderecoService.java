package com.easyJob.easyJob.service;

import com.easyJob.easyJob.dto.request.EnderecosDtoRequest;
import com.easyJob.easyJob.dto.response.EnderecosDtoResponse;
import com.easyJob.easyJob.exceptions.NotFound;
import com.easyJob.easyJob.models.Enderecos;
import com.easyJob.easyJob.repositorys.EnderecoRepository;
import org.modelmapper.ModelMapper;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

import javax.transaction.Transactional;
import javax.validation.Valid;

@Service
public class EnderecoService {

    private final EnderecoRepository enderecoRepository;
    private final ModelMapper modelMapper;

    public EnderecoService(EnderecoRepository enderecoRepository, ModelMapper modelMapper) {
        this.enderecoRepository = enderecoRepository;
        this.modelMapper = modelMapper;
    }

    @Transactional
    public EnderecosDtoResponse cadastrarEndereco(EnderecosDtoRequest enderecoReqDto) {
//        enderecoReqDto.UPPERCASE();
        Enderecos enderecos = modelMapper.map(enderecoReqDto, Enderecos.class);
        return modelMapper.map(enderecoRepository.save(enderecos), EnderecosDtoResponse.class);
    }


    public EnderecosDtoResponse buscarEndereco(Long enderecoId) {
         Enderecos enderecos = enderecoRepository.findById(enderecoId).orElseThrow(()->new NotFound("Endereco não encontrado!"));
         return modelMapper.map(enderecos, EnderecosDtoResponse.class);
    }

    @Transactional
    public void atualizarEndereco(Long id, EnderecosDtoRequest enderecoReqDto) {
        Enderecos enderecos = enderecoRepository.findById(id).orElseThrow(()->new NotFound("Endereco não encontrado!"));
        enderecos = modelMapper.map(enderecoReqDto,Enderecos.class);
        enderecos.setId(id);
        enderecoRepository.save(enderecos);
    }

    public void deletarEndereco(Long enderecoId) {
        Enderecos enderecos = enderecoRepository.findById(enderecoId).orElseThrow(()->new NotFound("Endereco não encontrado!"));
         enderecoRepository.delete(enderecos);
    }
}
