class OnlyAdmins < ActiveAdmin::AuthorizationAdapter

  def authorized?(action, subject = nil)
    regular_user_views = ['Dashboard', 'Videos']
    if user.user_type == AdminUser.types[:admin] #admins have access to everything
      true
    elsif action == :update_type
      false
    else
      case subject
      when normalized(Video)
        if action == :read
          true
        else
          false
        end
      when ActiveAdmin::Page
        if action == :read 
          accept = regular_user_views.include? subject.name
          accept
        else
          false
        end
      when AdminUser
        if subject == user
          true
        else
          false
        end
      else
        false
      end
    end
  end

end