# README

This project objective is  to convert a static website to a dynamic site using ruby on rails and MySQL.By linking the quote form of the original site to a database and by offer the possibility of to the user to register, the employes of Rocket Elevator can now have  access to a back office page to get valuable data in respect of the privacy of the user.
A data warehouse is implemented to give easy access to important information for the employees. The database is full of fake information.


 

## Database creation

#### Step 1 - Generate a database model Employee.

Rails generates a model `Employees` first_name:string last_name:string title:string email:string

#### Step 2 - Generate a database User

In order to do that, we installed 2 gems. 

`Gem devise` made our login page and `gem rails_admin`made our admin page. 

gem divise: https://github.com/heartcombo/devise

gem rails_admin: https://github.com/railsadminteam/rails_admin


#### Step 3 - Associations

Make associations between Employee table and User table:


##### 3.1 

Add reference and user_id with a foreign key to Employee table

`rails g migration` `AddUserToEmployees` `user:references`


##### 3.2 - Make the relationship

In employee.rb,  belongs_to :user

In user.rb, has_one :employee


##### 3.3

Fill in the information about tables in `seed.rb`


#### Step 4 - Data visualization

Installation

Install DBeaver for database visualization

https://dbeaver.io/



#### Database

First, we created an empty database:

`rails db:drop`

`rails db:create`

`rails db:migrate`


Then, we displayed data inside a table

`rails db:seed`


Note: Before display any changes made in seed.rb, need to create an empty database.


![image](https://user-images.githubusercontent.com/113922858/198722670-4aea804a-46e5-4693-9846-f88d45099488.png)

![image (1)](https://user-images.githubusercontent.com/113922858/198722673-ee3e4a2b-0b2c-4e6f-9588-41b10bacc087.png)

### Datawarehouse

Datawarehouse is implemented with gems `multiverse` and `pg`. Posgrestql is use to host de warehouse.
To update fact information a task was made with `Ruby on rails` to update yourself run the command in the current directory
`rails datawarehouse:fact`

### Fake info 

Fake info was made with gem `faker`


### Deployment

To have access to the site in the world wide web, we have linked our github repository to an amazon server. When the main branch is updated, we run: `bundle exec cap production deploy `.
These gems were necessary to deploy the site correctly: `capistrano` , `puma`  ` bcrypt_pbkd`, and `ed25519`.


