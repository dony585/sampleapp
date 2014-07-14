class MarkingsController < ApplicationController

	def create
		@postid = params[:micropost_id]
		@user = Micropost.find_by_id(@postid).user
		if current_user?(@user)
			@correct_user = current_user
		else
			@correct_user = @user
		end
		# debugger
		current_user.markings.create!(micropost_id: @postid)
		respond_to do |format|
		  format.html { redirect_to root_url }
		  format.js
		end
	end

	def destroy
		@postid = params[:micropost_id]
		@user = Micropost.find_by_id(@postid).user
		if current_user?(@user)
			@correct_user = current_user
		else
			@correct_user = @user
		end
		# debugger
		current_user.markings.find_by_micropost_id(@postid).destroy
		respond_to do |format|
		  format.html { redirect_to root_url }
		  format.js
		end
	end

end
