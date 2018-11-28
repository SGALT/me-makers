class UsersController < ApplicationController
  def edit
    @user = current_user
    3.times do
      @user.achievements.new
    end
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to edit_user_path
  end

  private

  def user_params
    params.require(:user).permit(
      :photo, :email, :first_name,
      :last_name, :phone_number,
      :address, :birthdate, :siret,
      :company, :specialty, achievements_attributes: [:photo, :title, :phot_cache]
    )
  end
end
