class TargetsController < ApplicationController
  def new
    @target=Taget.new
    @group.users << current_user
  end
  def create
  end
end
