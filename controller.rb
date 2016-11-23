require('sinatra')
require('sinatra/contrib/all')
require_relative('models/student.rb')
require_relative('models/house.rb')

get '/students' do
  @students=Student.all()
  @houses=House.all()
  erb(:index)
end

get '/houses' do
  @houses=House.all()
  erb(:houses)
end

get '/houses/:id' do
  @house=House.find(params[:id])
  @student=Student.all()
  erb(:show_houses)
end

get '/students/new' do
  @houses=House.all()
  erb(:new)
end

post '/students' do
  student= Student.new(params)
  student.save()
  redirect to('/students')
end

get '/students/:id' do
  @student=Student.find(params[:id])
  erb(:show)
end

post '/students/:id' do
  Student.update(params)
  redirect to ("/students/#{params[:id]}")
end

get '/students/:id/edit' do
  @student=Student.find(params[:id])
  @houses=House.find(params[:id])
  erb(:edit)
end

post '/students/:id/delete' do
  Student.delete(params[:id])
  redirect to('/students')
end
