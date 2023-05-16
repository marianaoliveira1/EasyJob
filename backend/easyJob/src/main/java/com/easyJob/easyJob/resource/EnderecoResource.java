package com.easyJob.easyJob.resource;

import com.easyJob.easyJob.dto.request.EnderecosDtoRequest;
import com.easyJob.easyJob.dto.response.EnderecosDtoResponse;
import com.easyJob.easyJob.service.EnderecoService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RequestMapping("/enderecos")
@RestController
public class EnderecoResource {
    final EnderecoService enderecoService;

    public EnderecoResource(EnderecoService enderecoService) {
        this.enderecoService = enderecoService;
    }


    @GetMapping("/{enderecoId}")
    public ResponseEntity<EnderecosDtoResponse> BuscarEndereco(@PathVariable("enderecoId") Long enderecoId) {
        return ResponseEntity.status(HttpStatus.OK).body(enderecoService.buscarEndereco(enderecoId));
    }

    @DeleteMapping("/{enderecoId}")
    public ResponseEntity<Void> DeletarEndereco(@PathVariable("enderecoId") Long enderecoId) {
        enderecoService.deletarEndereco(enderecoId);
        return ResponseEntity.status(HttpStatus.OK).build();
    }


    @PostMapping
    public ResponseEntity<EnderecosDtoResponse> cadastrarEndereco(@RequestBody @Valid EnderecosDtoRequest enderecoReqDto) {
        return ResponseEntity.status(HttpStatus.CREATED).body(enderecoService.cadastrarEndereco(enderecoReqDto));
    }

    @PutMapping("/{id}")
    public ResponseEntity<Void> atualizarEndereco(@PathVariable(value = "id") Long id, @RequestBody @Valid EnderecosDtoRequest enderecoReqDto) {
        enderecoService.atualizarEndereco(id, enderecoReqDto);
        return ResponseEntity.status(HttpStatus.OK).build();
    }

}
