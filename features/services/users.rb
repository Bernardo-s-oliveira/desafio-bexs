module Rest 
    class Users
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']

        def get_users(limits,timestamp,public_key,hash)
            self.class.get("/stories?ts=#{timestamp}&apikey=#{public_key}&hash=#{hash}&limit=#{limits}")
        end

        def get_character(characterId)
            self.class.get("/characters/#{characterId}?ts=1677849004&apikey=d481eb0d6f91a45aeaa9ea2bb8d48dd4&hash=56f962c0674fb8a7b4c870ba183c025b&limit=5")
        end
    end
end