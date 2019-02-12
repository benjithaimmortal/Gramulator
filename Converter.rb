# this one gets sent the data and converts it for results
class Gramulator

#converts anything to grams! just add new hash keys to correlate with the units.rb addition 
  UNITS = {
    "cups"         => Cup,
    "eggs"         => Egg
    "tablespoons"  => Tbsp,
    "bags"         => Tea,
    "teaspoons"    => Tsp,
    "envelopes"    => Yeast,
  }

  private_constant :UNITS

  #the factory! it will use the hash to produce any conversion
  #it also means that the converter doesn't need to know the conversion rates...
  #...so if we're cooking on the moon we can just update the conversion table!
  def self.for(amount, unit)
    (UNITS[unit]).new(amount).calculate
  end
end