module Rest 
  class Marvel
    include HTTParty

    headers 'Content-Type' => 'application/json'
    base_uri CONFIG['base_uri']

    def generate_key
      public_key = ENV['MARVEL_PUBLIC_KEY']
      private_key = ENV['MARVEL_PRIVATE_KEY']
      timestamp = Time.now.to_i.to_s
      hash = Digest::MD5.hexdigest(timestamp + private_key.to_s + public_key.to_s)
      return timestamp, hash, public_key
    end

    def get_stories(limits, timestamp, public_key, hash)
      self.class.get("/stories?ts=#{timestamp}&apikey=#{public_key}&hash=#{hash}&limit=#{limits}")
    end

    def get_character(character_id, timestamp, public_key, hash)
      self.class.get("/characters/#{character_id}?ts=#{timestamp}&apikey=#{public_key}&hash=#{hash}")
    end
  end
end