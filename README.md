# Ricks Sneaker Shop

A stock tracking app that allows the user to check and update inventory for different brands and styles for a Sneaker Store. This serves as a useful tool for small businesses.

## Built with:

- Ruby - object orientated programming language
- HTML - markup language
- CSS - style language
- SQL - database language
- Sinatra - web framework used
- Postrgres - an object-relational database management system

### Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

To run this web app, you will need to be able to require:

- Sinatra
- Postrgres
- Ruby

### Installing

1. Create a database called ricks_sneaker_shop
2. Run the database and SQL file by typing: psql -d ricks_sneaker_shop -f db/ricks_sneaker_shop.SQL
3. Run the seeds.rb, also situated in the db folder
4. Run the app.rb using port: 4567
5. Open the localhost:4567/ in your URL


## Motivation

This web app was created as part of a week long project undertaken while attending CodeClan's 16-week intensive course. At the beginning of the week, we were given four briefs to choose from in which we would implement, consolidate and expand on everything we'd learnt so far.

This included:

- Ruby fundamentals
- TDD (where appropriate)
- OOP
- Web Programming (REST/MVC)
- Databases with CRUD actions

Despite some interesting briefs, I had an idea for a stock tracking app. As I have a background in fashion and retail I think this would be a useful app to use.

## Brief

### Rick's Sneaker Store
The owner of Rick's Sneaker Store wants an app which will help him keep on top of his store inventory. He does not want an app that customers will see, but he will use to check stock levels and see what he needs to order soon.

You should be able to add stock, which would have an Brand and Style as well as the quantity available.

**MVP:**
Create Brands with the quantity that are in stock
Create Styles
Show an inventory page listing Brands and styles
Show a stock level for the inventory items e.g. High/Medium/Low

**Possible Extensions:**
Add a buy and sell price to each stock item
Calculate the possible markup on items and show on inventory page
Add a genre to an Brand
Any other ideas you might come up with


### Author
**Fraser Brown** - Original author
