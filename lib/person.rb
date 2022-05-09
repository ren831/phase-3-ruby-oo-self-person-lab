class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  def name
    @name
  end
  def bank_account=(value)
    @value = value
  end
  def happiness=(new_happiness)
    if new_happiness > 10
      @happiness = 10
    elsif new_happiness < 0
      @happiness = 0
      else
        @happiness = new_happiness
    end
  end
  def hygiene=(new_hygiene)
    if new_hygiene > 10
      @hygiene = 10
      elsif new_hygiene < 0
        @hygiene = 0
        else
          @hygiene = new_hygiene
    end
  end
  def happy?
    if self.happiness > 7
      return true
      else
        return false
    end
  end
def clean?
  if self.hygiene > 7
    return true
    else
      return false
    end
end
def get_paid(amount)
    self.bank_account = self.bank_account + amount
    return "all about the benjamins"
  end
def take_bath
  if self.hygiene + 4 > 10
    self.hygiene =(10)
  else 
    self.hygiene=(self.hygiene + 4)
  end
  "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  if @happiness + 2 > 10
    @happiness = 10
  else
    @happiness = @happiness + 2
  end  
  if @hygiene - 3 < 0
    @hygiene = 0
  else
    @hygiene = hygiene - 3
  end
  return "♪ another one bites the dust ♫"
end
  def call_friend(friend)
    if @happiness + 3 > 10
      @happiness = 10
    else
      @happiness = @happiness +3
    end
    if friend.happiness(3) > 10
      friend.happiness = 10
    else
      friend.happiness(3)
    end
    return "Hi #{friend.name}! It's #{@name}. How are you?"
  end

end