

# key


# <form method=post action="/signup">

#   <select name="user[category_id]">
#     <% @categoeries.each do |categhory| %>
#       <option value="<%= category.id %>"><%= category.name %><option>
#     <% end %>
#   </select>
#   <input name="user[first_name]" />
#   <input name="user[last_name]" />
#   <input name="user[email]" />
#   <input name="user[password]" />

# </form>


get '/articles/new' do
  @categories = Category.all
  @article = Article.new
end

post '/articles' do
  Articles.create!(params[:article])
end

# ~~~~~`

post '/categories/:category_id/articles' do
  @category = Category.find(params[:category_id])
  @category.articles.create!(params[:article])
end

/categories/frog/articles/12
get '/categories/:category_id/articles/:article_id' do

  @category = Category.find(params[:category_id])
  @category.articles.find(params[:article_id])
  # SELECT * FROM articles WHERE id = ? AND category_id =

  Articles.find(params[:article_id])
  # SELECT * FROM articles WHERE id = ?
end




params = {
  first_name: VALUE,
  last_name: VALUE,
  email: VALUE,
  password: VALUE,
}

params = {
  'user[first_name]' => VALUE,
  'user[last_name]' => VALUE,
  'user[email]' => VALUE,
  'user[password]' => VALUE,
}

params = {
  user: {
    first_name: VALUE,
    last_name: VALUE,
    email: VALUE,
    password: VALUE,
  }
}

