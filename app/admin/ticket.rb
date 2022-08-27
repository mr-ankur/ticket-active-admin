ActiveAdmin.register Ticket do
  permit_params :incident_number, :status, :date_of_service, :user_id

  index do
    selectable_column
    id_column
    column :incident_number
    column :status
    column :date_of_service
    column :created_at
    column :user
    actions
  end

  show do
    attributes_table do
      row :incident_number
      row :status
      row :date_of_service
      row :user
    end
  end

  filter :incident_number
  filter :status
  filter :date_of_service
  filter :created_at

  form do |f|
    f.inputs do
      f.input :incident_number
      f.input :status
      f.input :date_of_service
      f.input :user_id, :label => 'User', :as => :select, :collection => User.all.map{|u| ["#{u.name}", u.id]}
    end
    f.actions
  end

end
