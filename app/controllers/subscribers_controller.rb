class SubscribersController < ApplicationController
  allow_unauthenticated_access
  before_action :set_note

  def create
    @note.subscribers.where(subscriber_params).first_or_create
    redirect_to @note, notice: "You are now subscribed."
  end

  private

  def set_note
    @note = Note.find(params[:note_id])
  end

  def subscriber_params
    params.expect(subscriber: [ :email ])
  end
end
