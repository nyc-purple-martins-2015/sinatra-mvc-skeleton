get '/items/new' do
  @item = Item.new
  erb :"items/new"
end

post '/items' do
  @item = Item.new(params[:item])
  if @item.save
    redirect to("/items/#{@item.id}")
  else
    status 400
    erb :"items/new"
  end
end
