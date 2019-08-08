defmodule Quandl.V3.Model.DatatableMetadata do
  @moduledoc """
  Datatable Metadata.

  ## Attributes
  *   `vendor_code` (*type:* `String.t`), *default:* `nil`)
  *   `datatable_code`  (*type:* `String.t`), *default:* `nil`)
  *   `name` (*type:* `String.t`), *default:* `nil`)
  *   `description`  (*type:* `String.t`), *default:* `nil`)
  *   `columns` (*type:* `list()`), *default:* `nil`)
  *   `filters` (*type:* `list()`), *default:* `nil`)
  *   `primary_key` (*type:* `list()`), *default:* `nil`)
  *   `premium` (*type:* `boolean()`), *default:* `nil`)
  *   `status` (*type:* `map()`), *default:* `nil`)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :vendor_code => String.t(),
          :datatable_code => String.t(),
          :name => String.t(),
          :description => String.t(),
          :columns => list(),
          :filters => list(),
          :primary_key => list(),
          :premium => boolean(),
          :status => map()
        }

  field(:vendor_code)
  field(:datatable_code)
  field(:name)
  field(:description)
  field(:columns, type: :list)
  field(:filters, type: :list)
  field(:primary_key, type: :list)
  field(:premium)
  field(:status, type: :map)
end

defimpl Poison.Decoder, for: Quandl.V3.Model.DatatableMetadata do
  def decode(value, options) do
    Quandl.V3.Model.DatatableMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: Quandl.V3.Model.DatatableMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
