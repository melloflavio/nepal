# encoding: utf-8
ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, :user_type

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column "Número de logins", :sign_in_count
    column "Criado em", :created_at
    column "Tipo", :user_type 
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  filter :user_type

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :user_type, as: :select, collection: AdminUser.types, :include_blank => false
    end
    f.actions
  end

end
