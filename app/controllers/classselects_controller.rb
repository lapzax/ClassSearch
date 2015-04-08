class ClassselectsController < ApplicationController
	def index 
		@Class = Classselect.all
		if params[:name].present?
			@Class = @Class.where("name like?","%#{params[:name]}%")
		end
		if params[:teacher].present?
			@Class = @Class.where("teacher like?","%#{params[:teacher]}%")
		end
		if params[:time].present?
			@Class = @Class.where("time like?","%#{params[:time]}%")
		end

	end

	def new
		@Class = Classselect.new
	end

	def edit
		@Class = Classselect.find(params[:id])
	end

	def create
		cs = Classselect.create(c_params)
		redirect_to classselects_path
	end

	def show
	end

	def update
		@Class = Classselect.find(params[:id])
		@Class.update_attributes(c_params)
		redirect_to classselects_path
	end

	def destroy
		@Class = Classselect.find(params[:id])
		@Class.destroy
		redirect_to classselects_path
	end

	private

	def c_params
		params.require( :classselect).permit(:name, :teacher, :place, :time, :score)
	end
end
