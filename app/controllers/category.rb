get "/categories" do
 categories = Category.all
 erb :"/categories/index", locals: {categories: categories}
end

get "/categories/:id" do
  category = Category.find(params[:id])
  items = category.items
  erb :"categories/index", layout: false, locals: {category: category, items: items}
end
