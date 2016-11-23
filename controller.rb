require('sinatra')
require('sinatra/contrib/all')
require_relative('models/student.rb')

get '/students' do
  @students=Student.all()
  erb(:index)
end

get 'students/new' do
end

post 'students' do
end

get 'students/:id' do
end

post 'students/:id' do
end

get 'students/:id/edit' do
end

post 'students/:id/delete' do
end

get 'students' do
end