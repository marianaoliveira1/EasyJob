package com.easyJob.easyJob.resource;

import com.easyJob.easyJob.dto.request.AlunoDtoRequest;
import com.easyJob.easyJob.dto.request.ProfessorDtoRequest;
import com.easyJob.easyJob.dto.response.AlunoDtoResponse;
import com.easyJob.easyJob.service.ProfessorService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RequestMapping("/professores")
@RestController
public class ProfessorResource {
    private final ProfessorService professorService;

    public ProfessorResource(ProfessorService professorService) {
        this.professorService = professorService;
    }

    @PostMapping
    public ResponseEntity<ProfessorDtoRequest> cadastrarProfessor(@RequestBody @Valid  ProfessorDtoRequest professorDtoRequest) {
        return ResponseEntity.status(HttpStatus.CREATED).body(professorService.cadastrarProfessor(professorDtoRequest));
    }

    @GetMapping("/{professorId}")
    public ResponseEntity<ProfessorDtoRequest> BuscarProfessorId(@PathVariable("professorId") Long professorId) {
        return ResponseEntity.status(HttpStatus.OK).body(professorService.buscarProfessorId(professorId));
    }

    @GetMapping("nome/{professorNome}")
    public ResponseEntity<Page<ProfessorDtoRequest>> BuscarProfessorNome(@PathVariable("professorNome") String professorNome, Pageable pageable) {
        return ResponseEntity.status(HttpStatus.OK).body(professorService.buscarProfessorNome(professorNome,pageable));
    }


    @DeleteMapping("/{professorId}")
    public ResponseEntity<Void> DeletarProfessor(@PathVariable("professorId") Long professorId) {
        professorService.deletarProfessor(professorId);
        return ResponseEntity.status(HttpStatus.OK).build();
    }


}
