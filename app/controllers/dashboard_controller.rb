class DashboardController < ApplicationController
  def show
    @couches = current_user.couches
    @bookings = current_user.bookings
  end
end
