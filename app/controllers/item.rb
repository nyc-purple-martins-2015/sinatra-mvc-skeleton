get "/items/new" do
  categories = Category.all
  item = Item.new
  erb :"/items/new", locals: {item: item, categories: categories}
end

get "/items/:id" do
  item = Item.find(params[:id])
  user = User.find(item.user_id)
  erb :"/items/show", locals: {item: item, user: user}
end


post "/items" do
  # categories = Category.all
  item = Item.new(params[:item])
  if item.save
    redirect "/items/#{item.id}"
  else
    status 400
    @errors = item.errors.full_messages
    erb :"/items/new"
  end
end
