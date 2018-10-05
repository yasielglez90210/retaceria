class ProviderDatatable < AjaxDatatablesRails::ActiveRecord

  extend Forwardable

  # either define them one-by-one
  def_delegator :@view, :link_to
  def_delegator :@view, :edit_provider_path

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
        name: { source: "Provider.name", searchable: false, orderable: false},
        razon: { source: "Provider.razon", cond: :like ,searchable: true, orderable: false},
        email: { source: "Provider.email", searchable: false, orderable: false},
        cuit: { source: "Provider.cuit", searchable: false, orderable: false},
        phone: { source: "Provider.phone", searchable: false, orderable: false}
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
          razon: record.razon,
          email: record.email,
          cuit: record.cuit,
          phone: record.phone,
          edit_action: link_to('', edit_provider_path(record),remote: true,class: 'fa fa-pencil'),
          delete_action: link_to('', record,remote: true,class: 'fa fa-trash',method: :delete, data: {confirm: '¿Está usted seguro que desea eliminar el color?'})
      }
    end
  end

  def get_raw_records
    # Provider.all.order(razon: :asc)
    Provider.active
  end

end
