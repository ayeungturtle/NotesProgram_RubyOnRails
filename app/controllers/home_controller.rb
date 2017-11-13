class HomeController < ApplicationController
  def show
    @notes = Note.order("sort")
  end
end
