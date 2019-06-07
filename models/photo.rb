class Photo
    attr_accessor :user, :comments
    

    @@all = []

    def initialize
       @@all << self 
    end

    def self.all
        @@all
    end

    def make_comment(message)
        Comment.new(message, self)
    end

    def comments
        Comment.all.select { |comment| comment.photo == self }
    end



end

