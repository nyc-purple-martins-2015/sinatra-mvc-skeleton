get '/login' do
  erb :'users/login'
end

post '/login' do
  username = params[:user][:name]
  user = User.find_by(name: username)
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect to('/')
  else
    "Incorrect username or password"
  end
end

post '/users/new' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect '/'
  else
    status 400
    @errors = user.errors.full_messages
    erb :'users/login'
  end
end

get '/logout' do
  session.clear
  redirect to('/')
end
