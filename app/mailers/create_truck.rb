class CreateTruck < ActionMailer::Base
  default from: "from@example.com"
  def truck_user(truck)
  	@truck = truck
		mail(to: @truck.user.email, subject: "You have create truck")
    end
end
