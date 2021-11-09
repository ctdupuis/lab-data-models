# Brainstorming

## Features

- users can sign into the app with their email and password

- users can create recipes with ingredients and instructions

- recipes can be marked as public or private

- users can view other people’s recipes

- ingredients from recipes can be added to user’s grocery lists

- users can create their own occasions and assign recipes to occasions


### Needs

- Must have sign in/sign up functionality

- Basic CRUD for recipes and ingredients

- Ingredients will be its own model, different recipes can share ingredients

- Marking public or private can be boolean, like flipping a switch

- Recipes will have references to the user who creates them

- Grocery lists will have references to a user

- Grocery lists will have references to ingredients

- Occassions will have references to users and recipes