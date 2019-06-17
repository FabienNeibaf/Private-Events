class InvitationsController < ApplicationController
  def index
    @sent = @current_user.sent_invitations
    @received = @current_user.received_invitations
  end

  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(invitations_params)
    if @invitation.save
      redirect_to invitations_url
    else
      flash.now[:alert] = 'Something went wrong!'
      render 'new'
    end
  end

  def invitations_params
    params.require(:invitation).permit(:title, :body, :event_id, :guest_id, :host_id)
  end
end
