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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous" />

        <title>Exercicio java web spring</title>
      </head>

      <body>
        <div class="row justify-content-md-center">
          <div class="col-5">
            <br />
            <br />

            <form:form action="?" method="post" modelAttribute="user" enctype="multipart/form-data">
              <h5>Nome</h5>
              <form:input path="nome" class="form-control" />
              <h5>Email</h5>
              <form:input path="email" class="form-control" />
              <h5>Telefone</h5>
              <form:input path="telefone" class="form-control" />
              <h5>Cep</h5>
              <form:input path="cep" class="form-control" />
              <tr>
                <td>
                  <form:label path="foto">Select a file to upload</form:label>
                </td>
                <td><input type="file" name="foto" /></td>
              </tr>
              <form:button class="btn btn-outline-success">Enviar</form:button>
            </form:form>

          </div>
        </div>
      </body>

      </html>