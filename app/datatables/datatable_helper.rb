module DatatableHelper
  extend ActiveSupport::Concern
  included do
    def_delegators :@view, :link_to
    def_delegators :@view, :content_tag, :button_tag
    def_delegators :@view, :crew_user_path, :edit_crew_user_path
  end

  def ver_mais(user_id)
    link_to  crew_user_path(user_id), target: "_blank", method: :get do
      button_tag type: 'button', class: "btn btn-icon waves-effect waves-light btn-primary m-b-5 __web-inspector-hide-shortcut__", "data-toggle": "tooltip", "data-placement": "left", "title": "Ver mais" do
        content_tag(:i, "", class: "fa fa-eye")
      end
    end

  end

  def editar(user_id)
    link_to  edit_crew_user_path(user_id) do
      button_tag type: 'button', class: "btn btn-icon waves-effect waves-light btn-warning m-b-5", "data-toggle": "tooltip", "data-placement": "left", "title": "Editar" do
        content_tag(:i, "", class: "fa fa-wrench")
      end
    end
  end

  def apagar(user_id)
    link_to  crew_user_path(user_id), :method=>:delete, :class=>:destroy ,data: {confirm: "Deseja apagar o usuário?"}  do
      button_tag type: 'button', class: "btn btn-icon waves-effect waves-light btn-danger m-b-5 __web-inspector-hide-shortcut__", "data-toggle": "tooltip", "data-placement": "left", "title": "Apagar" do
        content_tag(:i, "", class: "fa fa-remove")
      end
    end
  end

end
