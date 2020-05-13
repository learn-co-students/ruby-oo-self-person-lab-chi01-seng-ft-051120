# your code goes here
require 'pry'
class Person 
    attr_accessor :bank_account, :hygiene 
    attr_reader :name 
    attr_writer :happiness, :hygiene
    def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
end
def hygiene 
    if @hygiene > 10 
        @hygiene = 10 
    elsif @hygiene < 0 
        @hygiene = 0
    end 
    @hygiene
end  

def happiness 
    if @happiness > 10 
        @happiness = 10 
    elsif @happiness < 0 
        @happiness = 0
    end 
    @happiness
end
def clean?
    if self.hygiene > 7
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

def get_paid(salary_amount)
    self.bank_account += salary_amount
    return "all about the benjamins"
end
def take_bath
    self.hygiene += 4 
        if self.hygiene > 10
            self.hygiene = 10
        end
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end
def work_out
    self.happiness += 2
    if self.happiness > 10
       p self.happiness = 10
    end
    self.hygiene -= 3
    if self.hygiene < 0
       p self.hygiene = 0
    end
    return "♪ another one bites the dust ♫"
end
def call_friend(callee)
    self.happiness += 3
    if self.happiness > 10
        self.happiness = 10
    end
    callee.happiness += 3
    if callee.happiness > 10
        callee.happiness = 10
    end
    return "Hi #{callee.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
    if topic == "politics"
    self.happiness -= 2
    person.happiness -= 2
    return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
    self.happiness += 1
    person.happiness += 1
    return "blah blah sun blah rain"
    else 
        return "blah blah blah blah blah"
    end
end
end
