require('sinatra')
require('sinatra/contrib/all')
require_relative('models/student.rb')

get '/students' do
  @students=Student.all()
  erb(:index)
end

get '/students/new' do
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
  erb(:edit)
end

post '/students/:id/delete' do
  Student.delete(params[:id])
  redirect to('/students')
end

get '/students' do

end