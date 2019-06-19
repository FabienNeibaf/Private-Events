class AttendancesController < ApplicationController
  def create
    attendance = Attendance.new(user_id: params[:user_id],
                                event_id: params[:event_id])
    if attendance.save
      redirect_to @current_user
    else
      redirect_to invitations_url
    end
  end

  def destroy
    attendance = Attendance.find(params[:id])
    attendance.destroy
    redirect_to invitations_url
  end
end
