class FiguresController < ApplicationController

get '/figures' do
end

get '/figures/new'
erb :new
end

post '/figures' do
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
