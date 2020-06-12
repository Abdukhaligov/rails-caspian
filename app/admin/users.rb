ActiveAdmin.register User do

  controller do
    def csv_filename
      'User Details.csv'
    end
  end

  includes(:user_memberships,
           :memberships,
           :reference,
           :documents,
           :reports,
           :events,
           :degree,
           :region)

  permit_params :reference_id,
                :degree_id,
                :region_id,
                :name,
                :description,
                :email,
                :admin,
                :password_digest,
                :public,
                :rank,
                :phone,
                :company,
                :position,
                :created_at,
                :updated_at,
                user_memberships_attributes: [:id,
                                              :event_id,
                                              :membership_id,
                                              :status,
                                              :_create,
                                              :_update,
                                              :_destroy],
                reports_attributes: [:id,
                                     :event_id,
                                     :topic_id,
                                     :name,
                                     :description,
                                     :status,
                                     :file,
                                     :_create,
                                     :_update,
                                     :_destroy],
                documents_attributes: [:id,
                                       :voucher_id,
                                       :path,
                                       :_create,
                                       :_update,
                                       :_destroy]

  index do
    selectable_column
    id_column
    column :degree
    column :name
    column :phone
    column :email
    column :created_at
    column :public
  end

  show do
    attributes_table do
      row :id
      row :reference
      row :degree
      row :region
      row :name
      row :description
      row :email
      row :admin
      row :public
      row :rank
      row :phone
      row :company
      row :position
      row :created_at
      row :updated_at
      panel "Memberships" do
        table_for user.user_memberships do
          column :id
          column :event
          column :membership
          column :status
        end
      end
      panel "Reports" do
        table_for user.reports do
          column :id
          column :event
          column :topic
          column :name
          column :description
          column :status
          column :file
          column :created_at
          column :updated_at
        end
      end
      panel "Documents" do
        table_for user.documents do
          column :id
          column :voucher
          column :path
          column :created_at
          column :updated_at
        end
      end
      active_admin_comments
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.semantic_errors
    f.inputs
    f.has_many :user_memberships, heading: 'Memberships',
               allow_destroy: true,
               new_record: true do |e|
      e.input :event_id, :as => :select, :collection => Event.all
      e.input :membership_id, :as => :select, :collection => Membership.all
      e.input :status
    end
    f.has_many :reports, heading: 'Reports',
               allow_destroy: true,
               new_record: true do |e|
      e.input :event_id, :as => :select, :collection => Event.all
      e.input :topic_id, :as => :select, :collection => Topic.all
      e.input :name
      e.input :description
      e.input :status
      e.input :file
    end
    f.has_many :documents, heading: 'Documents',
               allow_destroy: true,
               new_record: true do |e|
      e.input :voucher_id, :as => :select, :collection => Voucher.all
      e.input :path
    end
    f.actions
  end

end
