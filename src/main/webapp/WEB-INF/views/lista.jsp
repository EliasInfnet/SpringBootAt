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

        <table class="table">
          <thead>
            <tr>
              <th scope="col">Nome</th>
              <th scope="col">Email</th>
              <th scope="col">Telefone</th>
              <th scope="col">CEP</th>
              <th scope="col">Logradouro</th>
              <th scope="col">Bairro</th>
              <th scope="col">Localidade</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="user" items="${listaUsuarios}">
              <tr>
                <td>
                  <img src="${user.foto}" alt="" />
                </td>
                <td>
                  <c:out value="${user.nome}" />
                </td>
                <td>
                  <c:out value="${user.email}" />
                </td>
                <td>
                  <c:out value="${user.telefone}" />
                </td>
                <td>
                  <c:out value="${user.cep}" />
                </td>
                <td>
                  <c:out value="${user.logradouro}" />
                </td>
                <td>
                  <c:out value="${user.bairro}" />
                </td>
                <td>
                  <c:out value="${user.localidade}" />
                </td>
                <td>
                  <button class="btn btn-outline-success"><a href="/editar/${user.id}">Editar</a></button>
                </td>
                <td>
                  <button class="btn btn-outline-success"><a href="/delete/${user.id}">Deletar</a></button>
                </td>

              </tr>
            </c:forEach>
          </tbody>
        </table>

      </body>

      </html>