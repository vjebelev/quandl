defmodule Quandl.V3.Model.DatatableMetadataContainer do
  @moduledoc """
  Datatablee Metadata Container.

  ## Attributes
  *   `datatable` (*type:* `Quandl.V3.Model.DatatableMetadata.t`), *default:* `nil`)
  """
  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :datatable => Quandl.V3.Model.DatatableMetadata.t()
        }

  field(:datatable, as: Quandl.V3.Model.DatatableMetadata)
end

defimpl Poison.Decoder, for: Quandl.V3.Model.DatatableMetadataContainer do
  def decode(value, options) do
    Quandl.V3.Model.DatatableMetadataContainer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: Quandl.V3.Model.DatatableMetadataContainer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
