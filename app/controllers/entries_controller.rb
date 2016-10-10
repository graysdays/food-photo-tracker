class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]
  def index
    @entries = Entry.all
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.save

    redirect_to entry_path(@entry)
  end

  def new
    @entry = Entry.new
  end

  def edit
  end

  def show
  end

  def update
    @entry.update(entry_params)

    redirect_to entry_path(@entry)
  end

  def destroy
    @entry.destroy

    redirect_to entries_path
  end

  private

  def entry_params
    params.require(:entry).permit(:name, :description, :image, :location)
  end

  def set_entry
    @entry = Entry.find(params[:id])
  end
end
