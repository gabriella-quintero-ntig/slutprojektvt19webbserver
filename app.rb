require 'slim'
require 'sinatra'
require 'sqlite3'
require 'bcrypt'

enable :session

get('/') do 
    slim(:index)
end

get('/about') do
    slim(:about)
end

get('/sign') do
    slim(:sign) 
    #db =SQLite3::Database.new("db/blog.db")
   # result = db.execute("INSERT INTO user (name, lastname, username, email, password) VALUES (' ', ' ', ' ', ' ', ' ')")
end

post('/sign') do
    "Welcome :)"
end

get('/login') do
    slim(:login)
    db = SQLite3::Database.new("db/blog.db")
    #db.results_as_hash = true

    result = db.execute("SELECT email, password FROM user") 
    

    #db ska vara i en "post"
end

get('/login/:id') do
    db = SQLite3::Database.new("db/blog.db")
    db.results_as_hash = true

    User_id = params["id"]
end

post('/login') do
   "You are in ^^"
   redirect('/sign')
end
