# README

This week's assignment was a lot of different steps. We worked a lot in the terminal, in VsCode, of course, and with dBeaver and MySQL, for our database. Here is a summary of what we did:

## Configuration

At first, we had to prepare our computers. To do so, we had a couple of installs to make. We installed the good version of Ruby, the good version of rails and MySQL. 

The main goal of the week was to create an MVC (Model-View-Controller) webapp from a static website. We chose one of our teammates website from Genesis. 

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



So the backend part was a lot of work between dBeaver, the Terminal and VsCode, where we linked it all together. 
For the frontend part, after creating login and admin pages, as stated before, some details had to be corrected in the website. 


/* Deployment instructions

