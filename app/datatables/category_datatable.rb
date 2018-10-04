class CategoryDatatable < AjaxDatatablesRails::ActiveRecord
  extend Forwardable

  # either define them one-by-one
  def_delegator :@view, :link_to
  def_delegator :@view, :edit_category_path

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
        name: { source: "Category.name", cond: :like ,searchable: true, orderable: false}
    }
  end

  def initialize(params, opts = {})
    @view = opts[:view_context]
    super
  end

  def data
    records.map do |record|
      {
          name: link_to(record.name, record),
          edit_action: link_to('', edit_category_path(record),remote: true,class: 'fa fa-pencil'),
          delete_action: link_to('', record,remote: true,class: 'fa fa-trash',method: :delete, data: {confirm: '¿Está usted seguro que desea eliminar la categoría?'})
      }
    end
  end

  def get_raw_records
    # insert query here
    Category.active
  end

end
