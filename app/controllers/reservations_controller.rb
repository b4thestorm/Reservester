class ReservationsController < ApplicationController

def create

	@restaraunt = Restaraunt.find(params[:restaraunt_id])
	@reservation = @restaraunt.reservations.build(params.require(:reservation).permit(:email,:text))
	@user = @restaraunt.user #should i make it so that reservations need a current user? 
	#client = SendGrid::Client.new(api_user: api_user, api_key: api_key)

	if @reservation.save
		flash[:notice] = "Your reservation has been made"
		customer_email_address = params["reservation"]["email"]
		ReservationMailer.reservation_notification(customer_email_address, @user).deliver
		

       # email = SendGrid::Mail.new do |m|
		# m.to = 'test@sendgrid.com' #@user.email
		# m.from = 'you@youremail.com' #@
		# m.subject = 'Sending with SendGrid is Fun'
		# m.html = 'and easy to do anywhere, even with Ruby'
		#end

		#sendgrid.send(email)
		redirect_to restaraunt_path(@restaraunt)
	else
		render 'restaraunts/show'
	end
end

end