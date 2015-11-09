class IdeasController < ApplicationController
  def new
    @idea = Idea.new
  end

  def create

    @idea = Idea.new(idea_name: params[:idea][:idea_name],
                     idea_description: params[:idea][:idea_description] )
    if @idea.save
      redirect_to idea_path(@idea.id)
    end
  end

  def show

    @idea = Idea.all
    # binding.pry
  end

end
