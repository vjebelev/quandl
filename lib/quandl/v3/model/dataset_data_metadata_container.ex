defmodule Quandl.V3.Model.DatasetDataMetadataContainer do
  @moduledoc """
  Dataset Container for Data and Metadata.

  ## Attributes
  *   `dataset` (*type:* `Quandl.V3.Model.DatasetDataMetadata.t`), *default:* `nil`)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataset => Quandl.V3.Model.DatasetDataMetadata.t()
        }

  field(:dataset, as: Quandl.V3.Model.DatasetDataMetadata)
end

defimpl Poison.Decoder, for: Quandl.V3.Model.DatasetDataMetadataContainer do
  def decode(value, options) do
    Quandl.V3.Model.DatasetDataMetadataContainer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: Quandl.V3.Model.DatasetDataMetadataContainer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
