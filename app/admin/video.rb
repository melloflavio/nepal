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

  index do
    column "Link" do |video|
      link_to video.titulo, video.link
    end
  end


end
