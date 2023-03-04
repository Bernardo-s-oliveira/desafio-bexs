# import requests

# baseUrl = 'http://gateway.marvel.com/v1/public'
# timeStamp = '1677849004'
# apiKey = 'd481eb0d6f91a45aeaa9ea2bb8d48dd4'
# md5 = '56f962c0674fb8a7b4c870ba183c025b'

# print('Marvel ------- stories')

# url = f'{baseUrl}/stories?ts={timeStamp}&apikey={apiKey}&hash={md5}&limit=5'
# print(url)
# response = requests.get(url)
# data = response.json()

# if response.status_code == 200:
#     print(f'title: {data["data"]["results"][0]["title"]}')
# else:
#     print('Nao encontrado')

# print('Marvel ------- FIM ---- ')
# print('Marvel ------- INICIO')

# characterId = '1011456'

# url02 = f'{baseUrl}/characters/{characterId}?ts={timeStamp}&apikey={apiKey}&hash={md5}&limit=5'
# #print(url)
# response = requests.get(url02)

# data = response.json()

# if response.status_code == 200:
#     print(f'Nome do personagem: {data["data"]["results"][0]["name"]}')
# else:
#     print('Nao encontrado')