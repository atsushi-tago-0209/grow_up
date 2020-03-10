class EntryController < ApplicationController
  def new
    @post = Entry.new
  end

  def create
    if Entry.create(entry_params)
      redirect_to root_path
    else
      render "new"
    end
  end
  private
  def entry_params
    params.require(:entry).permit(:title, :place, :image,:belongings, :sentence, :schedule,:time, :endtime,:capacity,{:target_ids=>[]}).merge(user_id: current_user.id)
  end
end
