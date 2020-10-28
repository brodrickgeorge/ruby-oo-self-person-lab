# your code goes here
require 'pry'
class Person
    attr_accessor :bank_account, :hygiene, :happiness
    attr_reader :name
        def initialize(name, bank_account = 25, hygiene = 8, happiness = 8)
            @name = name
            @bank_account = bank_account
            @hygiene = hygiene
            @happiness = happiness
        end
        def happiness
            if @happiness > 10
                @happiness = 10
            else
                @happiness
            end
        if @happiness < 0
            @happiness = 0
        else
            @happiness
        end
    end
    def hygiene
    if @hygiene > 10 
        @hygiene = 10
    else 
        @hygiene
    end
    if @hygiene < 0
        @hygiene = 0
    else
        @hygiene
    end
end
def happy?
    if @happiness > 7
        true
    else
        false
    end
 end
 def clean?
    if @hygiene > 7
        true
    else
        false
    end
end
def get_paid(num)
    @bank_account += num
    return "all about the benjamins"
end
def take_bath(num = 4)
    self.hygiene += num
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end
def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
end

def call_friend(friend_name)
    self.happiness += 3
    friend_name.happiness += 3
    "Hi #{friend_name.name}! It's #{self.name}. How are you?"
end
def start_conversation(convo_person, topic)
    if topic == 'politics'
        self.happiness -= 2
        convo_person.happiness -= 2
        "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness += 1
        convo_person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
    end
end
end

