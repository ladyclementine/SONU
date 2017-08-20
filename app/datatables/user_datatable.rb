class UserDatatable < AjaxDatatablesRails::Base
  include DatatableHelper
  def_delegators :@view

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      name: { source: "User.name" },
      email: { source: "User.email" },
      comitee: { source: "Coomitee.name" },
      type_user: { source: "User.type_user"},
      buttons: {source: "User.id",  searchable: false, orderable: false},
    }
  end

  def data
    records.map do |record|
      {
        name: record.name,
        email: record.email,
        comitee: record.comitee_id.nil? ? 'Não cadastrado' : record.comitee.name,
        type_user: record.type_user,
        buttons: ver_mais(record.id) + " " +  editar(record.id) + " " +  apagar(record.id)
      }
    end
  end
  private

  def get_raw_records
    User.all
  end

  


  # ==== These methods represent the basic operations to perform on records
  # and feel free to override them

  # def filter_records(records)
  # end

  # def sort_records(records)
  # end

  # def paginate_records(records)
  # end

  # ==== Insert 'presenter'-like methods below if necessary
end
