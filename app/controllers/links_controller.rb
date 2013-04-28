class LinksController < ApplicationController
  def show
  	@link    = Link.find(params[:id])
    @comment = Comment.new
  end

  def new
  	@link = Link.new
  end

  def create
    @link = Link.new(params[:link])                 

    respond_to do |format|
      if @link.save
       format.html { redirect_to @link, notice: 'Link was successfully updated.' }
       #format.html { render :action => "create", notice: 'Link was successfully created.' }
       format.json { render :json => @link }
      else
         format.html { render :action => "new" }
       format.json { render :json => @link.errors, :status => :unprocessable_entity }
      end
    end  
  end
end
