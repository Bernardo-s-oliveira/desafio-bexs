Quando('faço uma requisição GET para api \/stories com limite de {int} registros') do |limits|
  timestamp, hash, public_key = marvel.generate_key
  @request_stories = marvel.get_stories(limits,timestamp,public_key,hash)
end

Entao('o retorno da api \/stories deve ser {int}') do |status_code|
  expect(@request_stories.code).to eq status_code
end

Entao('retornar a lista de stories com {int} registros') do |qtd_registros|
  expect(@request_stories.message).not_to be_empty
  expect(@request_stories['data']['results'].length).to eq(qtd_registros)
    @request_stories['data']['results'].each do |result|
      puts result['title']
    end
end

Quando('faço uma requisição GET para api \/characters passando um {int}') do |id|
  timestamp, hash, public_key = marvel.generate_key
  @request_characters = marvel.get_character(id,timestamp,public_key,hash)
end
  
Entao('o retorno da api \/characters deve ser {int}') do |status_code|
  expect(@request_characters.code).to eq status_code
end

Entao('retornar o personagem {string}') do |characters|
  expect(@request_characters['data']['results'][0]['name']).to eq characters
end

Entao('retornar que o personagem não existe') do
  expect(@request_characters['status']).to eq "We couldn't find that character"
end