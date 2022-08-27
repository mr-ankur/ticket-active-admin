ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :name, :disabled

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :disabled
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :name
      row :email
      row :disabled
      row :sign_in_count
      row :created_at
    end
  end

  filter :name
  filter :email
  filter :disabled
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :disabled
    end
    f.actions
  end

end
