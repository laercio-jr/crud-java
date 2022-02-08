<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Destinos</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">    
<link rel="stylesheet" href="./css/site.css" />
<link rel="stylesheet" href="./css/style.css" />

</head>
<body>

<header>
  <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-light bg-white border-bottom box-shadow mb-3">
      <div class="container" style="justify-content: center;">                
          <a class="navbar-brand">
              <img class="tamanho-imagem" src="./img/logo.png"/>
          </a>
      </div>
  </nav>
</header>

<h1 class="text-center">Destinos</h1>
<br/>
<div class="container">
    <div class="row">
        <div class="col-md-10 mx-auto">
            <h2>Escolha o seu destino!</h2>

            <div class="card-group text-center">
                <div class="card">
                    <img class="card-img-top" src="./img/Cristo.jpg" alt="Cristo Redentor">
                    <div class="card-body">
                        <h5 class="card-title">Cristo Redentor</h5>
                        <p class="card-text">Cristo Redentor é uma estátua art déco que retrata Jesus Cristo, localizada no topo do morro do Corcovado, a 709 metros acima do nível do mar, no Parque Nacional da Tijuca, com vista para a maior parte da cidade do Rio de Janeiro, Brasil.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">R$ 5500,00</small>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="./img/farol-da-barra.jpg" alt="Farol da Barra">
                    <div class="card-body">
                        <h5 class="card-title">Farol da Barra</h5>
                        <p class="card-text">O farol da Barra teve um papel de extrema importância nas navegações durante o período de colonização do nosso país. Ele foi construído após a invasão dos holandeses ao Forte de Santo Antônio da Barra, instalado no mesmo espaço do farol para dar suporte aos navegadores e identificar invasões de estrangeiros.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">R$ 7799,00</small>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="./img/eiffel.jpg" alt="Torre Eiffel">
                    <div class="card-body">
                        <h5 class="card-title">Torre Eiffel</h5>
                        <p class="card-text">A Torre Eiffel é uma torre de treliça de ferro forjado no Champ de Mars em Paris, França. Recebeu o nome do engenheiro Gustave Eiffel, cuja empresa projetou e construiu a torre.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">R$ 15099,00</small>
                    </div>
                </div>
            </div>

            <br/>

            <div class="card-group text-center">
                <div class="card">
                    <img class="card-img-top" src="./img/disneyland.jpg" alt="Disneyland">
                    <div class="card-body">
                        <h5 class="card-title">Disneyland</h5>
                        <p class="card-text">O Disneyland Park, originalmente Disneyland e comumente referido em português como a Disneylândia,[1] é o primeiro de dois parques temáticos construídos no Disneyland Resort em Anaheim, California, inaugurado em 17 de julho de 1955. </p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">R$ 13999,00</small>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="./img/noronha.jpg" alt="Fernando de Noronha">
                    <div class="card-body">
                        <h5 class="card-title">Fernando de Noronha</h5>
                        <p class="card-text">Fernando de Noronha é um arquipélago vulcânico situado a cerca de 350 quilómetros ao largo da costa nordeste do Brasil. Tem o nome da sua maior ilha, um parque marinho e santuário ecológico protegido com uma linha costeira recortada e vários ecossistemas.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">R$ 9899,00</small>
                    </div>
                </div>
            </div>

            <hr />
            
            <!-- 
            <h2>Comprar passagem</h2>
            <form asp-controller="Destino" asp-action="Index">
                <div class="form-group">
                    <label for="">Nome do viajante</label>
                    <input asp-for="Viajante" type="text" class="form-control" id="" placeholder="Digite seu nome">
                </div>

                <div class="form-group">
                    <label for="">Destinos</label>
                    <select class="custom-select" asp-for="Destino">
                        <option selected>Escolha um destino...</option>
                        <option>Cristo Redentor</option>
                        <option>Disneyland</option>
                        <option>Torre Eiffel</option>
                        <option>Farol da Barra</option>
                        <option>Fernando de Noronha</option>
                    </select>
                </div>


                <div class="form-check">
                    <input asp-for="TemGuia" type="checkbox" id="checkn1" class="form-check-input">
                    <label class="form-check-label" for="checkn1">Guia Turistico (+ R$ 499,00)</label>
                </div>

                <br />

                <button type="submit" class="btn btn-success">Confirmar viagem</button>
            </form>        
-->
            
            <br />
            <hr />
        </div>
    </div>
</div>


<div class="container">
    <div class="row centralizar">
    <h1>Controle de Viagens</h1>
    <br/>
    <br/>
    <br/>
        <div class="col-md-10">
            <h2>Lista de viagens Confirmadas</h2>
            <table class="text-center table table-striped table-bordered table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th>Id</th>
                        <th>Viajante</th>
                        <th>Destino</th>
                        <th>Guia turístico</th>
                        <th>X</th>
                    </tr>
                </thead>
                <tbody>
                    @{
                        foreach (var viagem in viagens)
                        {
                            <tr>
                                <td>@viagem.Id</td>
                                <td>@viagem.Viajante</td>
                                <td>@viagem.Destino</td>
                                <td>@viagem.TemGuia</td>
                                <td>
                                    <form asp-controller="Viagem" asp-action="Deletar">
                                        <button class="btn btn-danger" type="submit">Deletar</button>
                                        <input asp-for="Id" style="visibility:hidden;" type="text" value="@viagem.Id">
                                    </form>
                                </td>
                            </tr> 
                        }
                    }
                </tbody>
            </table>
            
            
            <hr />
            <div class="container d-flex justify-content-around">
                <div>
                    <h2>Cadastrar viagem</h2>
                    <form action="viagem-cadastro" method="post">
                        <div class="form-group">
                            <label>Nome do viajante</label>
                            <input  type="text" class="form-control" name="txtViajante" placeholder="Digite um nome">
                        </div>

                        <div class="form-group">
                            <label>Destinos</label>
                            <select class="custom-select" name="txtDestino">
                                <option selected disabled hidden>Escolha um destino...</option>
                                <option>Cristo Redentor</option>
                                <option>Disneyland</option>
                                <option>Torre Eiffel</option>
                                <option>Farol da Barra</option>
                                <option>Fernando de Noronha</option>
                            </select>
                        </div>

                        <div class="form-check">
                            <input type="checkbox" id="checkn1" name="txtTemGuia" class="form-check-input">
                            <label class="form-check-label" for="checkn1">Guia Turistico</label>
                        </div>

                        <br/>

                        <button type="submit" class="btn btn-success">Confirmar viagem</button>
                    </form>
                </div>

                <div>
                    <h2>Atualizar Dados</h2>
                    <form asp-controller="Viagem" asp-action="Atualizar">
                        <div class="form-group ">
                            <label for="">ID da viagem</label>
                            <select class="custom-select" asp-for="Id">
                                <option selected>-- Selecione um código</option>
                                /* @{
                                    foreach (var viagem in viagens)
                                    {
                                        <option>@viagem.Id</option>
                                    }
                                }
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="">Nome do viajante</label>
                            <input asp-for="Viajante" type="text" class="form-control" id="" placeholder="Digite seu nome">
                        </div>

                        <div class="form-group">
                            <label for="">Destinos</label>
                            <select class="custom-select" asp-for="Destino">
                                <option selected>Escolha um destino...</option>
                                <option>Cristo Redentor</option>
                                <option>Disneyland</option>
                                <option>Torre Eiffel</option>
                                <option>Farol da Barra</option>
                                <option>Fernando de Noronha</option>
                            </select>
                        </div>


                        <div class="form-check">
                            <input asp-for="TemGuia" type="checkbox" id="checkn1" class="form-check-input">
                            <label class="form-check-label" for="checkn1">Guia Turistico</label>
                        </div>

                        <br />

                        <button type="submit" class="btn btn-primary">Alterar</button>

                    </form>
                </div>
            </div>
    </div>
</div>

<footer class="border-top footer text-muted bg-white">
            <div class="container">
                &copy; 2021 - Agência de Viagens LJ LTDA.
            </div>
</footer>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
</body>
</html>