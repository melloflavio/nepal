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

  index do
    # download_links: false
    # selectable_column
    column "Link" do |video|
      sortable: false
      link_to video.titulo, video.link
    end
  end


end
