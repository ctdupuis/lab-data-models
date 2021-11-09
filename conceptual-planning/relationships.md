# Relationships

## Features

- users can sign into the app with their email and password

- users can create recipes with ingredients and instructions

- recipes can be marked as public or private

- users can view other people’s recipes

- ingredients from recipes can be added to user’s grocery lists

- users can create their own occasions and assign recipes to occasions


### One to One

#### User <=> Grocery List

- While it's possible to have multiple lists, to start we'll limit them to a single grocery list, treating it like a shopping cart



### One to Many

#### Users <= Recipes & Occasions

- We want the user to not be limited to the amount of recipes and occasions they can create on the site. Establishing this relationship allows them to create to their heart's content

#### Grocery lists <= Ingredients

- An ingredient can have a reference to a user's grocery list to show the association and allow users to track ingredients through their grocery list



### Many to Many

#### Recipes <=> Ingredients

- There will be many recipes created by users but also many ingredients. These will need to refer to one another, and an ingredient may not be exclusive to any single recipe.