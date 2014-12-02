class ReservationMailer < ActionMailer::Base

	def reservation_notification(customer_email_address, user)
		@owner_email = user.email
		@customer_email = customer_email_address
		@owner_username = user.username
		
		mail( to: @owner_email,
		subject: 'Congratulations, you have a new reservation!')
	end 
#practical object oriented design in ruby 
#sandy metz
#dhh


end