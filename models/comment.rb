class Comment
    attr_accessor :message, :photo

    @@all = []

    def initialize(message, photo)
        @message = message
        @photo = photo
        @@all << self
    end

    def self.all
        @@all
    end


end


