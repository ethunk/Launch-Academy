### Brussels Sprouts Recipe Blog with ActiveRecord

Our brussels sprouts recipe blog needs a major makeover. We have many recipes and each of them can have many comments. We need to model this blog with ActiveRecord.

### Learning Goals

* Create a multi-table application
* Explore ways to associate tables
* Use a foreign key column

### Instructions

* Create a new Sinatra app with the [Sinatra ActiveRecord Starter Kit](https://github.com/LaunchAcademy/sinatra-activerecord-starter-kit). Follow the instructions in the reading about the basic setup.
* Create a `Recipe` model and associated migration. Determine the column names as you deem necessary. You don't have to worry about ingredients here.
* Create a `Comment` model and associated migration. Determine the column names as you deem necessary.
* Associate the two tables so that each recipe can have multiple comments posted about it.
* Load up your app in irb (see the reading for a description of how to do this) and follow these directions:
  * Create 5 recipes
  * Create 1-5 comments on all your recipes.
* Answer the following questions:
  * How would you return all the recipes in your database?
  - all_recipes = Recipe.all
  * How would you return all the comments in your database?
  - all_comments = Comment.all
  * How would you return the most recent recipe posted in your database?
  - last_recipe = Recipe.last
  * How would you return all the comments of the most recent recipe in your database?
  - last_recipe_id = Recipe.last.id
  - recent_recipe_comments = Comment.where('recipe_id = last_recipe_id').all
  * How would you return the most recent comment of all your comments?
  - last_comment = Comment.last
  * How would you return the recipe associated with the most recent comment in your database?
  - last_comment_id = Comment.last.id
  - recent_comment_recipe = Recipe.where('comment_id = last_comment_id')
  * How would you return all comments that include the string `brussels` in them?
  - brussels_comments = Comment.includes(:body, 'brussels')

#### Output

Include a `README.md` file that contains the code for the queries above. Submit your code through `et`.
