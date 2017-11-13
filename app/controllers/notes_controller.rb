class NotesController < ApplicationController
  def add
    note = Note.new
    note.text = params[:text]
    note.save
    redirect_to home_show_url
  end

  def delete
    #get card to delete
    note = Note.find(params[:id])
    #delete it from the db
    note.destroy
    redirect_to home_show_url
  end

  def reorder
    arr = params[:sort_array]
    sortnumber = 0
    arr.each do |id|
      note = Note.find(id)
      note.sort = sortnumber
      sortnumber = sortnumber + 1
      note.save
    end

  end
end
