class LibrariesController < ApplicationController
	before_action :set_project, only: [:show, :edit, :update, :destroy]

 	def index
    	@libraries = Library.all
  	end

  	def show
  	end

	def new
		@library = Library.new
	end

	def edit
  	end

  	def create
    	@library = Library.new(library_params)

    	if @library.save
     	 redirect_to libraries_path
    	else
    	  render 'new'
    	end
  	end

  	def update
    	if @library.update_attributes(library_params)
     	 redirect_to library_path
    	else
    	  render 'edit'
    	end
  	end

  	def destroy
    	@library.destroy

    	redirect_to library_path
  	end

  	private

    	def set_project
     	 @library = Library.find(params[:id])
    	end

    	def library_params
      	params.require(:library).permit(:name, :description)
    	end


end
