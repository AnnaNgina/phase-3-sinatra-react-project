puts "🌱 Seeding spices..."

# Seed your database here
Recipe.create(
    [
    {
    name:"Rice",
    author:"Dorothy",
    ingredients:"2 c. water 1 c. white long grain rice 1 tbsp. butter Kosher salt."
},
{
    name:"Mokimo",
    author:"James",
    ingredients:"1 kg Irish potatoes(select fresh for better taste)2 handfuls of pumpkin leaves/spinach(soft and fresh)
    3 cups of soft maize off the cob. A bunch of spring onions(finely chopped) A spoonful of cooking oil.Salt to taste."
},
{
    name:"Chapatti",
    author:"Maina",
    ingredients:"2 cups of wheat flour or durum wheat atta. 1 cup lukewarm water.
    1 tsp. salt (optional)1-2 tsp. ghee (optional)Makes 10-12 chapatis."
},
{
    name:"githeri",
    author:"Leah",
    ingredients:"1 tbsp olive oil extra virgin.1 onion medium, finely chopped.
    2 garlic cloves large, crushed or minced. 2 tomatoes large, washed, diced into small pieces.
    1½ tsp smoked paprika powder.
    ."
},
{
    name:"Pilau",
    author:"Dorothy",
    ingredients:"250 g Beef.2 Onion.4 cloves Garlic.5 cm Ginger or thumb sized.2 small Bay leaves.
    ¼ cup Sunflower oil. 1 teaspoon Ground Cloves. ½ teaspoon Ground Cumin.."
},
{
    name:"Cake",
    author:"Dorothy",
    ingredients:"3 cup all purpose flour.1 1/2 cup powdered sugar. 4 egg.1 cup butter.
    2 teaspoon baking soda.1 cup milk.2 teaspoon vanilla essence.."
}
    ]
)
puts "✅ Done seeding!"
