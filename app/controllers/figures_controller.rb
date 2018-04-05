class FiguresController < ApplicationController

get '/figures' do
@figures = Figure.all

erb :'figures/index'
end

get '/figures/new' do
@landmarks = Landmark.all
@titles = Title.all
erb :'figures/new'
end

post '/figures' do
     @figure = Figure.create(params['figure'])
     if !params[:landmark][:name].empty?
       @figure.landmarks << Landmark.create(params[:landmark])
     end

     if !params[:title][:name].empty?
       @figure.titles << Title.create(params[:title])
     end

     @figure.save
     redirect "/figures/#{@figure.id}"

end

get '/figures/:id' do
  @figure = Figure.find_by_id(params[:id])

  erb :'/figures/show'
end

get '/figures/:id/edit' do
  @landmarks = Landmark.all
  @titles = Title.all
  @figure = Figure.find_by_id(params[:id])


  erb :'/figures/edit'
end

patch '/figures/:id' do
  @figure = Figure.update(params['figure'])
  if !params[:landmark][:name].empty?
    @figure.landmarks << Landmark.create(params[:landmark])
  end

  if !params[:title][:name].empty?
    @figure.titles << Title.create(params[:title])
  end

redirect to "/figures/#{@figure.id}"
end

delete '/figures/:id/delete' do
redirect to '/figures'
end

end
