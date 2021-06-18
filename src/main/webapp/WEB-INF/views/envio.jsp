<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="ISO-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Exercicio java web spring" />
    <meta name="autor" content="Elias" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
      crossorigin="anonymous"
    />

    <title>Exercicio java web spring</title>
  </head>

  <body>
    <div class="row justify-content-md-center">
      <div class="col-5">
        <br />
        <br />       

        <hr />
        <h2>${user.nome}</h2>

        <ol class="list-group list-group">
          <li class="list-group-item d-flex justify-content-between align-items-start">
            <div class="ms-2 me-auto">
              <div class="fw-bold">Telefone</div>
              ${user.telefone}
            </div>
          </li>
          <li class="list-group-item d-flex justify-content-between align-items-start">
            <div class="ms-2 me-auto">
              <div class="fw-bold">Email</div>
              ${user.email}
            </div>
          </li>
          <li class="list-group-item d-flex justify-content-between align-items-start">
            <div class="ms-2 me-auto">
              <div class="fw-bold">Cep</div>
              ${user.cep}
            </div>
          </li>
          <li class="list-group-item d-flex justify-content-between align-items-start">
            <div class="ms-2 me-auto">
              <div class="fw-bold">Localidade</div>
              ${user.localidade}
            </div>
          </li>
          <li class="list-group-item d-flex justify-content-between align-items-start">
            <div class="ms-2 me-auto">
              <div class="fw-bold">Logradouro</div>
              ${user.logradouro}
            </div>
          </li>
          <li class="list-group-item d-flex justify-content-between align-items-start">
            <div class="ms-2 me-auto">
              <div class="fw-bold">Bairro</div>
              ${user.bairro}
            </div>
          </li>
        </ol> 

        <br>
        <div class="alert alert-success" role="alert">
          Parabens, o cadastro foi um sucesso!
        </div>

        <br>
        
        <button class="btn btn-outline-success" ><a href="/lista">Lista</a></button>
        
      </div>
    </div>
  </body>
</html>