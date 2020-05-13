# your code goes here
require 'pry'
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :balance
    def initialize(name)
        @name = name
        @balance = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        if (happiness < 0 || happiness > 10)
            puts "Incorrect value!"
        else
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if (hygiene < 0 || hygiene > 10)
            puts "Incorrect value!"
        else
            @hygine = hygiene
        end
    end

    def clean?
        if self.hygine > 7
            return true
        else
            return false
        end
    end

    def happy?
        if self.happiness > 7
            return true
        else
            return false
        end
    end

    def get_paid(amount)
        self.balance += amonut
        "all about the benjamins"
    end


end
