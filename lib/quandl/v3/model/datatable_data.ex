defmodule Quandl.V3.Model.DatatableData do
  @moduledoc """
  Datatable Data.

  ## Attributes
  *   `data` (*type:* `list()`), *default:* `nil`)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :data => list(),
        }

  field(:data, type: :list)
end

defimpl Poison.Decoder, for: Quandl.V3.Model.DatatableData do
  def decode(value, options) do
    Quandl.V3.Model.DatatableData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: Quandl.V3.Model.DatatableData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
