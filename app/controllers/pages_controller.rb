class PagesController < ApplicationController
	def index
		# @links = Link.includes(:user).all

		@links = Link.paginate(:page => params[:page] ||= 25, :order => params[:order], :per_page => params[:per_page] ||= 3)
	end
end
