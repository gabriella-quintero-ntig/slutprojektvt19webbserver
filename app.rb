require 'slim'
require 'sinatra'
require 'sqlite3'
require 'bcrypt'
require_relative 'model/model.rb'

enable :session

# Display landing page

get('/') do 
    slim(:index)
end

# Display an about page

get('/about') do
    slim(:about)
end

# Display a register form for signing in 

get('/sign') do
    slim(:sign) 

    #db =SQLite3::Database.new("db/blog.db")
   # result = db.execute("INSERT INTO user (name, lastname, username, email, password) VALUES (' ', ' ', ' ', ' ', ' ')")
end

# Display a welcome page when register

post('/sign') do
    "Welcome :)"
end

# Display a register form

get('/login') do
    slim(:login)

    #db = SQLite3::Database.new("db/blog.db")
    #db.results_as_hash = true

    #result = db.execute("SELECT email, password FROM user") 
    

    #db ska vara i en "post"
end

#get('/login/:id') do
    #db = SQLite3::Database.new("db/blog.db")
    #db.results_as_hash = true

    #User_id = params["id"]
#end

# Display a welcome page when you log in

post('/login') do 
    "you are in :)"
end