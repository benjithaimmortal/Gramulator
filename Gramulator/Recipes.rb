class Recipe
  attr_accessor :grams

  def initialize(ingredient_hash)
    @ingredient_hash = ingredient_hash
  end

  def gramulate
    puts "INGREDIENTS CONVERTED TO GRAMS:"
    @ingredient_hash.each do |name, quantity|
      quantity_array = quantity.split

      unit    =  quantity_array[1]
      amount  =  quantity_array[0].to_f

      @grams = Gramulator.for(amount, unit)
      puts "#{name}: #{@grams} grams"
    end
  end  
  
  def original
    puts "ORIGINAL UNIT MEASUREMENTS:"
    @ingredient_hash.each do |name, quantity|
      puts name.to_s + ": " + quantity.to_s
    end
  end
end


@pizza_dough = Recipe.new ({
  bread_flour: "3.5 cups",
  sugar: "1 teaspoons",
  instant_dry_yeast: "1 envelopes",
  kosher_salt: "2 teaspoons",
  water: "1.5 cups",
  olive_oil: "2 tablespoons"
})

@cookie_dough = Recipe.new ({
  butter:             "2.5 cups",
  sugar:              "2 cups",
  eggs:               "2 eggs",
  milk:               "0.25 cups",
  vanilla_extract:    "2 teaspoons",
  all_purpose_flour:  "7.5 cups",
  baking_powder:      "4 teaspoons",
  salt:               "1 teaspoons"
  })