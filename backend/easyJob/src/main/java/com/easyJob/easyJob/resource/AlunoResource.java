package com.easyJob.easyJob.resource;

import com.easyJob.easyJob.dto.request.AlunoDtoRequest;
import com.easyJob.easyJob.dto.request.EnderecosDtoRequest;
import com.easyJob.easyJob.dto.request.LoginDto;
import com.easyJob.easyJob.dto.response.AlunoDtoResponse;
import com.easyJob.easyJob.dto.response.EnderecosDtoResponse;
import com.easyJob.easyJob.service.AlunoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
@RequestMapping("/aluno")
@RestController
public class AlunoResource {

    final AlunoService alunoService;



    public AlunoResource(AlunoService alunoService) {
        this.alunoService = alunoService;
    }

    @PostMapping
    public ResponseEntity<AlunoDtoRequest> cadastrarAluno(@RequestBody @Valid AlunoDtoRequest alunoDtoRequest) {
        return ResponseEntity.status(HttpStatus.CREATED).body(alunoService.cadastrarAluno(alunoDtoRequest));
    }

    @PostMapping("/loginAluno")
    public ResponseEntity<Void> loginAluno(@RequestBody @Valid LoginDto loginDto) {
        alunoService.loginAluno(loginDto);
        // Se as credenciais estiverem corretas, você pode retornar uma resposta de sucesso (200 OK)
        return ResponseEntity.status(HttpStatus.OK).build();
    }
    @GetMapping("/{alunoId}")
    public ResponseEntity<AlunoDtoResponse> BuscarAlunoId(@PathVariable("alunoId") Long alunoId) {
        return ResponseEntity.status(HttpStatus.OK).body(alunoService.buscarAlunoId(alunoId));
    }

    @GetMapping("nome/{alunoNome}")
    public ResponseEntity<Page<AlunoDtoResponse>> BuscarAlunoNome(@PathVariable("alunoNome") String alunoNome, Pageable pageable) {
        return ResponseEntity.status(HttpStatus.OK).body(alunoService.buscarAlunoNome(alunoNome,pageable));
    }


    @DeleteMapping("/{alunoId}")
    public ResponseEntity<Void> DeletarALuno(@PathVariable("alunoId") Long alunoId) {
        alunoService.deletarAluno(alunoId);
        return ResponseEntity.status(HttpStatus.OK).build();
    }




}
