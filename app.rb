require 'slim'
require 'sinatra'
require 'sqlite3'
require 'bcrypt'

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
end

