class EmployeesController < ApplicationController
  def show
  	@user = if current_user.employee?
		  	current_user
		  else
		  	User.find(params[:id])
		  end
  end

  def index
  end

  def destroy
  end
end
