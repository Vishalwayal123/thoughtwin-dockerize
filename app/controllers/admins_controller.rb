class AdminsController < ApplicationController
  def index
  end
  def show
     @guidelines = Guideline.all
  end  
 
end
