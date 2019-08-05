defmodule Quandl.V3.Model.DatatableDataContainer do
  @moduledoc """
  Datatable Data Container.

  ## Attributes
  *   `datatable` (*type:* `Quandl.V3.Model.DatatableData.t`), *default:* `nil`)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :datatable => Quandl.V3.Model.DatatableData.t()
        }

  field(:datatable, as: Quandl.V3.Model.DatatableData)
end

defimpl Poison.Decoder, for: Quandl.V3.Model.DatatableDataContainer do
  def decode(value, options) do
    Quandl.V3.Model.DatatableDataContainer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: Quandl.V3.Model.DatatableDataContainer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
