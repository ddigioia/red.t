class LinksController < ApplicationController



	def index
		@links = Link.all
	end

	def new
		@link = Link.new
	end

	def create
		@link = Link.new(link_params)
		@link.user = current_user
		@link.score = 0
		@link.date = Date.today
		if @link.save
			redirect_to @link
		end
	end

	def edit
		@link = Link.find(params[:id])
	end

	def show
		@link = Link.find(params[:id])
	end

	def update
		@link = Link.find(params[:id])
		@link.update!(link_params)
		redirect_to @link
	end

	def destroy
		@link = Link.find(params[:id])
		@link.destroy
		redirect_to links_path
	end

	private
	def link_params
		params.require(:link).permit(:title, :body, :url)
	end

end