package com.easyJob.easyJob.resource;

import com.easyJob.easyJob.dto.request.AlunoDtoRequest;
import com.easyJob.easyJob.dto.request.MateriasDtoRequest;
import com.easyJob.easyJob.dto.response.MateriasDtoResponse;
import com.easyJob.easyJob.service.MateriasService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
@RequestMapping("/materias")
@RestController
public class MateriasResource {

    private final MateriasService materiasService;

    public MateriasResource(MateriasService materiasService) {
        this.materiasService = materiasService;
    }

    @PostMapping
    public ResponseEntity<MateriasDtoResponse> cadastrarMaterias(@RequestBody @Valid MateriasDtoRequest materiasDtoRequest) {
        return ResponseEntity.status(HttpStatus.CREATED).body(materiasService.cadastrarMaterias(materiasDtoRequest));
    }

    @GetMapping
    public ResponseEntity<Page<MateriasDtoResponse>> listarTodasMaterias(Pageable pageable) {
        return ResponseEntity.status(HttpStatus.OK).body(materiasService
                .listarTodasMaterias(pageable));
    }

}
