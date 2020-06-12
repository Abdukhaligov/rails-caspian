ActiveAdmin.register Report do

  permit_params :user_id, :event_id, :topic_id, :name, :description, :status, :file

end
