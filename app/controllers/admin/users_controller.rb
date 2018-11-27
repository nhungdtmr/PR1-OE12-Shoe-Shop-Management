class Admin::UsersController < Admin::BaseController
  before_action :load_user, only: %i(index destroy)

  def index; end

  def destroy
    user = User.find_by id: params[:id]
    return flash[:danger] = t(".no_delete") if user.is_admin?
    if user.destroy
      flash[:success] = t ".user_delete"
    else
      flash[:error] = t ".no_delete"
    end
    respond_to do |format|
      format.html {redirect_to admin_users_path}
      format.js
    end
  end

  def load_user
    @users = User.select_users.created_at.page(params[:page])
      .per Settings.value.user_page
  end
end
