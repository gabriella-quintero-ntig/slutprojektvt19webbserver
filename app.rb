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
end

get('/login') do
    slim(:login)
    if  session[:Email] == "gabbie@gmail.com" and session[:password] == "hola"
        session[:loggin] = true
    end
end

post('/login') do
    "You are in ^^"
end
