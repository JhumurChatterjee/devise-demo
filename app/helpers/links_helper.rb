module LinksHelper
  def edit_icon_link(resource)
    link_to '<i class="fas fa-edit"></i>'.html_safe,
              url_for(controller: resource.controller_class, action: "edit", id: resource.id),
              method: :get,
              title: "Edit #{resource.class_title}",
              class: "edit-btn"
  end

  def show_link(resource)
    link_to resource.id,
            url_for(controller: resource.controller_class, action: "show", id: resource.id),
            method: :get,
            title: "Edit #{resource.class_title}"
  end
end
