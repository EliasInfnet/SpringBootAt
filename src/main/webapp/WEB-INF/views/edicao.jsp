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
                    integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
                    crossorigin="anonymous" />

                <title>Exercicio java web spring</title>
            </head>

            <body>
                <div class="row justify-content-md-center">
                    <form:form action="/editar/${userAux.id}" method="post" modelAttribute="userEdicao"
                        enctype="multipart/form-data">

                        <h5>Nome</h5>
                        <form:input path="nome" class="form-control" value="${userAux.nome}" />
                        <h5>Email</h5>
                        <form:input path="email" class="form-control" value="${userAux.email}" />
                        <h5>Telefone</h5>
                        <form:input path="telefone" class="form-control" value="${userAux.telefone}" />
                        <h5>Cep</h5>
                        <form:input path="cep" class="form-control" value="${userAux.cep}" />
                        <h5>Logradouro</h5>
                        <form:input path="logradouro" class="form-control" value="${userAux.logradouro}" />
                        <h5>Bairro</h5>
                        <form:input path="bairro" class="form-control" value="${userAux.bairro}" />
                        <h5>Localidade</h5>
                        <form:input path="localidade" class="form-control" value="${userAux.localidade}" />
                        <br>
                        <tr>
                            <td>
                                <form:label path="foto">Select a file to upload</form:label>
                            </td>
                            <td><input type="file" name="foto" /></td>
                        </tr>
                        <form:button class="btn btn-outline-success">Salvar</form:button>
                    </form:form>
                    <br>
                    <button class="btn btn-outline-success"><a href="/lista">Lista</a></button>

                </div>
            </body>

            </html>