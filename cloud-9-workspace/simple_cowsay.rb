require 'cowsay'

class SimpleCowsay
    def initialize(face="cow")
      @face = face
      @name = "undefined"
    end
    
    attr_reader :face
    
    def say(text)
        # Cowsay.say finds the class named Cowsay and asks it to execute its
        #   method named :say with the parameters text=(whatever we put in for text)
        #   and face='random'
        "<pre>#{Cowsay.say(text, face)}</pre>"
    end
    
    def self.say_hello
        "hello"
    end
    
end

beavis = SimpleCowsay.new('beavis')
bessie = SimpleCowsay.new('cow')
puts beavis.say('beavis says hi')
puts bessie.say('hey yall')
#puts bessie.whats_your_name
