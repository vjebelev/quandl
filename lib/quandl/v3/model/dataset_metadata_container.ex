defmodule Quandl.V3.Model.DatasetMetadataContainer do
  @moduledoc """
  Dataset Metadata Container.

  ## Attributes
  *   `dataset` (*type:* `Quandl.V3.Model.DatasetMetadata.t`), *default:* `nil`)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataset => Quandl.V3.Model.DatasetMetadata.t()
        }

  field(:dataset, as: Quandl.V3.Model.DatasetMetadata)
end

defimpl Poison.Decoder, for: Quandl.V3.Model.DatasetMetadataContainer do
  def decode(value, options) do
    Quandl.V3.Model.DatasetMetadataContainer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: Quandl.V3.Model.DatasetMetadataContainer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
