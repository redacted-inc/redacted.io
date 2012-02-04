class PagesController < ApplicationController

	def home
   @title = "let's play!"
	end

  def hosting
    @title = "server hosting"
  end

  def about
    @title = about
  end

  def contact
    @title = contact
  end
end
