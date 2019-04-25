require 'slim'
require 'sinatra'
require 'sqlite3'
require 'bcrypt'

enable :session
db = SQLite3::Database.new('./blog.db')

get('/') do 
    slim(:index)
end

get('/about') do
    slim(:about)
end

get('/sign') do
    slim(:sign) 
end

get('/login') do
    slim(:login)
    result == db.execute("SELECT email, password FROM user")
end

post('/login') do
   "You are in ^^"
end
