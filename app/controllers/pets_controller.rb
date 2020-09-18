class PetsController < ApplicationController

  get '/pets' do
    @pets = Pet.all
    erb :'/pets/index' 
  end

  get '/pets/new' do 
    @owners=Owner.all
    erb :'/pets/new'
  end

  post '/pets' do 
    if params[:owner_id]
      @pet = Pet.create(:name => params[:name] :owner_id => params[:owner_id]
    else
      @owner = Owner.create(:name => )
    end 
    redirect to "pets/#{@pet.id}"
  end

  get '/pets/:id' do 
    @pet = Pet.find(params[:id])
    erb :'/pets/show'
  end

  patch '/pets/:id' do 

    redirect to "pets/#{@pet.id}"
  end
end