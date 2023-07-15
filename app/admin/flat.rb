ActiveAdmin.register Flat do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#

controller do
  def find_resource
    scoped_collection.friendly.find(params[:id])
  end
end

permit_params :name, :address, :zipcode, :city, :neighborhood, :description, :sub_description, :nb_rooms, :price_per_room, :occupied, :availability_date, :virtual_visit, :virtual_visit_trigger_picture, :map_picture, :cover_picture, :funky_picture, photos: [], facility_ids: []
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  form html: { multipart: true } do |f|
    f.inputs "Flats" do
    f.inputs :except => [:availability_date] # Include the default inputs
    f.input :availability_date, :as => :string, :input_html => {:class => 'datepicker hasDatePicker'}
    f.input :cover_picture, as: :file
    f.input :virtual_visit_trigger_picture, as: :file
    f.input :map_picture, as: :file
    f.input :funky_picture, as: :file_field, as: :file
    f.input :photos, as: :file, input_html: { multiple: true, id: 'photo-input' }
    f.inputs "Facilities" do # Make a panel that holds inputs for lifestyles
    f.input :facilities, as: :check_boxes, collection: Facility.all.map{|facility| [facility.description, facility.id]} # Use formtastic to output my collection of checkboxes
    end
    f.actions # Include the default actions
    end

    f.actions
  end

show do
    attributes_table do
      row :description
      row :sub_description
      row :address
      row :zipcode
      row :city
      row :neighborhood
      row :nb_rooms
      row :price_per_room
      row :occupied
      row :availability_date
      row :cover_picture do
        div do
          if flat&.cover_picture&.attached?
            cl_image_tag flat.cover_picture&.key, size: "200x200"
          else
            'Aucune'
          end
        end
      end
      row :virtual_visit_trigger_picture do
        div do
          if flat&.virtual_visit_trigger_picture&.attached?
            cl_image_tag flat&.virtual_visit_trigger_picture&.key, size: "200x200"
          else
            'Aucune'
          end
        end
      end
      row :map_picture do
        div do
          if flat&.map_picture&.attached?
            cl_image_tag flat&.map_picture&.key, size: "200x200"
          else
            'Aucune'
          end
        end
      end
      row :funky_picture do
        div do
          if flat&.funky_picture&.attached?
            cl_image_tag flat&.funky_picture&.key, size: "200x200"
          else
            'Aucune'
          end
        end
      end
     row :photos do
        div do
          if flat.photos.attached?
            flat.photos.each do |img|
              div do
                cl_image_tag img&.key, size: "200x200"
              end
            end
          else
            'Aucune'
          end
        end
      end
      row :virtual_visit
    end
  panel "Facilities" do
    table_for flat.facilities do
      column :description
    end
  end
  active_admin_comments
end
end
