get '/' do

  @my_data = {
    cookies: request.cookies.inspect,
    session: session.inspect,
  }

  # this is a bad pattern, please hold
  if session[:user_id]
    @current_user = User.find(session[:user_id])
  end

  erb :homepage

end

get '/signup' do
  erb :signup
end

post '/signup' do
  params[:user] # {email: 'jared@exmaple.com', password: 'password'}
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect to('/')
  else
    erb :signup
  end
end


get '/login' do
  erb :login
end

post '/login' do
  email = params[:user][:email]
  @user = User.where(email: email).first
  if @user && @user.password == params[:user][:password]
    session[:user_id] = @user.id
    redirect to('/')
  else
    "bad username or password"
  end
end

get '/logout' do
  session.clear
  redirect to('/')
end





