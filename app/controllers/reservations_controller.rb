class ReservationsController < ApplicationController

def create
	@restaraunt = Restaraunt.find(params[:restaraunt_id])
	@reservation = @restaraunt.reservations.build(params.require(:reservation).permit(:email,:text))
	@user = @restaraunt.user

	if @reservation.save
		flash[:notice] = "Your reservation has been made"
		customer_email_address = params["reservation"]["email"]
		ReservationMailer.reservation_notification(customer_email_address, @user).deliver
		redirect_to restaraunt_path(@restaraunt)
	else
		render 'restaraunts/show'
	end
end

end