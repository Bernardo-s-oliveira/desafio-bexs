Quando('faço uma requisição GET para api stories com limite de {int} registros') do |limits|
  public_key = ENV['MARVEL_PUBLIC_KEY']
  private_key = ENV['MARVEL_PRIVATE_KEY']
  timestamp = Time.now.to_i.to_s
  hash = Digest::MD5.hexdigest(timestamp + "#{private_key}" + "#{public_key}") 
  @request_stories = users.get_users(limits,timestamp,public_key,hash)
end

Entao('o retorno da api stories deve ser {int}') do |status_code|
  expect(@request_stories.code).to eq status_code
end

Entao('retornar a lista de stories') do
  expect(@request_stories.message).not_to be_empty
    @request_stories['data']['results'].each do |result|
      puts result['title']
    end
end

Quando('faço uma requisição GET para api characters passando um {int}') do |id|
  @request_characters = users.get_character(id)
end
  
Entao('o retorno da api characters deve ser {int}') do |status_code|
  expect(@request_characters.code).to eq status_code
end

Entao('retornar o personagem {string}') do |characters|
  expect(@request_characters['data']['results'][0]['name']).to eq characters
end

Entao('retornar que o personagem não existe') do
  expect(@request_characters['status']).to eq "We couldn't find that character"
end