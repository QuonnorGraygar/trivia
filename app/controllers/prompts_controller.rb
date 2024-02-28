class PromptsController < ApplicationController

  def index
	@prompts = Prompt.all
  end

  def show
	@prompt = Prompt.find(params[:id])
  end
  
  def new
	@prompt = Prompt.new
  end
  
  def create
	@prompt = Prompt.new(prompt_params)
	
	if @prompt.save
	  redirect_to @prompt
	else
	  render :new, status: :unprocessable_entity
	end
  end
  
  def edit
	@prompt = Prompt.find(params[:id])
  end
  
  def update
	@prompt = Prompt.find(params[:id])
	
	if @prompt.update(prompt_params)
	  redirect_to @prompt
	else
	  render :edit, status: :unprocessable_entity
	end
  end
  
  private
	def prompt_params
	  params.require(:prompt).permit(
	    :title, 
		:style, 
		:category, 
		:question,
		:answer,
		:value
	)
	end

end
