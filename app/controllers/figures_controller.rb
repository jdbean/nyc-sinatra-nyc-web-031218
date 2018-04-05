class FiguresController < ApplicationController

get '/figures' do

end

get '/figures/new' do
@landmarks = Landmark.all
@titles = Title.all
erb :'figures/new'
end

post '/figures' do
# binding.pry
@figure = Figure.create(name: params[:figure][:name])


if !params[:title][:name].empty?
@figure.titles << title.Create(params[:title][:name])
end


redirect to '/figures/:id'
end

get '/figures/:id' do
end

get '/figures/:id/edit' do
end

patch '/figures/:id' do
redirect to '/figures/:id'
end

delete '/figures/:id/delete' do
redirect to '/figures'
end




end
