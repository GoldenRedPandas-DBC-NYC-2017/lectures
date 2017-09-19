get '/' do
  @articles = Article.all
  erb :'articles/index'
end


get '/articles/new' do
  erb :'articles/new'
end


post '/articles' do
  # binding.pry
  article = Article.new(params[:article])
  if article.save
    redirect '/'
  else
    @errors = article.errors.full_messages
    erb :'articles/new'
  end
end

get '/articles/:id/show' do
  # binding.pry
  @article = Article.find_by(id: params[:id])
  erb :'/articles/show'
end
