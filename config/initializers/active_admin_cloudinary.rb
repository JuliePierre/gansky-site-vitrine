module ActiveAdmin
  module Views
    module Pages
      class Base < Arbre::HTML::Document

        alias_method :build_head, :build_active_admin_head

        def build_active_admin_head
          @head = build_head

          within @head do
            text_node cloudinary_js_config
          end
        end

      end
    end
  end
end
