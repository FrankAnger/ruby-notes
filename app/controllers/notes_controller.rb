class NotesController < ApplicationController
  allow_unauthenticated_access only: %i[index show]
  before_action :set_product, only: %i[ show edit update destroy ]
  def index
    @notes = Note.all
  end

  def show
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to @note, notice: "Note was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @note.update(note_params)
      redirect_to @note, notice: "Note was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @note.destroy
    redirect_to notes_path, notice: "Note was successfully destroyed."
  end

  private
    def set_product
      @note = Note.find(params[:id])
    end

    def note_params
      params.expect(note: [ :name ])
    end
end
