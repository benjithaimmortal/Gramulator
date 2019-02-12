Gramulator is a recipe storage and conversion gem.

It takes recipes in a hash like so:

  @sweet_tea = ({
    hot_water: 8 cups,
    tea:       2 envelopes,
    ice:       2 cups
  })

Run the conversion with 

  @sweet_tea.gramulate



show your original recipe units with 

  @sweet_tea.original