# Table Ideas

## Features

- users can sign into the app with their email and password

- users can create recipes with ingredients and instructions

- recipes can be marked as public or private

- users can view other people’s recipes

- ingredients from recipes can be added to user’s grocery lists

- users can create their own occasions and assign recipes to occasions

### Users

- *email* `VARCHAR(40)`

- *password* `VARCHAR(15)` *encrypted*

- *first name* `VARCHAR(20)`

- *last name* `VARCHAR(40)`

- *reference* **recipes**

- *reference* **ocassions**

### Recipes

- *instructions* `TEXT`

- *public* `BOOLEAN`

- *reference* **ingredients**

### Ingredients

- *name* `VARCHAR(20)

- *reference* **recipe_ids**

- *reference* **grocery_list_id**

### Grocery List

- *name* `VARCHAR(20)`

- *reference* **user_id**

- *reference* **ingredients**

### Occasion

- *name* `VARCHAR(50)`

- *reference* **user_id**