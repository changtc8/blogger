class TagsController < ApplicationController
	def show
		@tag = Tag.find(params[:id])
	end
	def index
		@tags = Tag.all
	end
	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy
		redirect_to tags_path
	end
	def edit
		@tag = Tag.find(params[:id])
	end
	def update
		@tag = Tag.find(params[:id])
		@tag.update_attributes(params.require(:tag).permit(:name))
		redirect_to tag_path(@tag)
	end
	def new
		@tag = Tag.new
	end
	def create
		@tag = Tag.new(params.require(:tag).permit(:name))
		@tag.save
		redirect_to tags_path
	end
end
