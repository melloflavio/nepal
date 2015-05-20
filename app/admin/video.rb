ActiveAdmin.register Video do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  permit_params :titulo, :link ## Add this line
  config.filters = false

  proc{ puts "\n\n\n\n\n\n\n\n is admin - #{current_admin_user.user_type.admin?}\n\n\n\n\n\n\n\n\n"}

  index do
    column "Link"  do |video|
      link_to video.titulo, video.link
    end

    column :titulo if authorized? :read, video
  end


end
