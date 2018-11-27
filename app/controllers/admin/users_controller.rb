class Admin::UsersController < Admin::BaseController
  before_action {flash.clear}

  def index
    @users = User.select_users.created_at.page(params[:page]).per(Settings.value.user_page)
  end

  def destroy
    user = User.find_by id: params[:id]
    if user.is_admin?
      flash[:danger] = t ".no_delete"
    else
      flash[:success] = t ".user_delete"
      User.delete(user)
    end
    @users = User.select_users.created_at.page(params[:page]).per(Settings.value.user_page)
    respond_to do |format|
      format.html { redirect_to admin_users_path }
      format.js
    end
  end
end
