require_relative 'Units'
require_relative 'Converter'
require_relative 'Recipes'

=begin
add a recipe to Recipes.rb like so
    @sweet_tea = ({
      hot_water: 8 cups,
      tea:       2 envelopes,
      ice:       2 cups
    })

run the conversion with 
    @sweet_tea.gramulate

show your original recipe units with
    @sweet_tea.original
=end