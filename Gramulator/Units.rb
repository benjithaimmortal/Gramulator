#the Unit class is a parent class to take out the strain of initializing all of the kids or changing things to floats.
class Unit
  attr_accessor :amount
  
  def initialize(amount)
    @amount = amount
  end

  def calculate
    @amount.to_f
  end
end


#all other classes will inherit from Unit, so we need only 3 lines for each additional thing.
#go wild! one tricycle weighs about 9,000 grams
class Cup < Unit
  def calculate
    (super * 236.58).round 4
  end
end

class Egg < Unit
  def calculate
    (super * 60)
  end
end

class Tbsp < Unit
  def calculate
    (super * 15)
  end
end

class Tea < Unit
  def calculate
    (super * 2)
  end
end

class Tsp < Unit
  def calculate
    (super * 5)
  end
end

class Yeast < Unit
  def calculate
    (super * 7)
  end
end