class MicropostsController < ApplicationController
	before_filter :signed_in_user, only: [ :create, :destroy ]

	def index
	end

	def create
		@micropost = current_user.microposts.build(params[:micropost])
		if @micropost.save
		  flash[:success] = "Micropost created!"
		  redirect_to home_path 
		else
		  @feed_items = []
		  render 'users/home'
		end
	end

	def destroy
		@micropost = current_user.microposts.find_by_id(params[:id])
		@micropost.destroy
		redirect_to home_path
	end

	private
		def correct_user
			@micropost = current_user.microposts.find_by_id(params[:id])
			redirect_to home_path if @micropost.nil?
		end
end
