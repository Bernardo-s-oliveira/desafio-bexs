# language: pt

@apiMarvel
Funcionalidade: Api Marvel
  Validação do retorno da api Marvel - stories

  @stories
  Cenario: Listar stories da Marvel
    Quando faço uma requisição GET para api stories com limite de 5 registros
    Entao o retorno da api stories deve ser 200
    E retornar a lista de stories

  @characters
  Esquema do Cenario: Listar personagem da Marvel
    Quando faço uma requisição GET para api characters passando um <id>
    Entao o retorno da api characters deve ser <status_code>
    E retornar o personagem "<characters>"

  Exemplos: 
    |id     | characters      | status_code|
    |1011198| Agents of Atlas | 200        |
    |1011297| Agent Brand     | 200        |
    |1011456| Balder          | 200        |
    
  @characters_invalid
  Cenario: Não deve listar personagem da Marvel
    Quando faço uma requisição GET para api characters passando um 123456
    Entao o retorno da api characters deve ser 404
    E retornar que o personagem não existe
