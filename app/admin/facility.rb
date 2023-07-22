ActiveAdmin.register Facility do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :description, :type, :icon

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  form html: { multipart: true } do |f|
    f.inputs "Infos de base" do
      f.input :description
      f.input :icon, as: :file ### THERE ####
    end
    actions
  end

  show do
    attributes_table do
      row :description
      row :icon do
        div do
          if facility&.icon&.attached?
            cl_image_tag facility.icon&.key, size: "200x200"
          else
            'Aucune'
          end
        end
      end
    end
  end
end
