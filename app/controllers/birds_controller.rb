class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds, except: [:created_at, :updated_at]
  end
  
  def show
    bird = Bird.find_by(id: params[:id])
    if bird
    render json: bird {id: name.id}
    else
      render json: {message: 'Bird not found'}
    end
  end
end