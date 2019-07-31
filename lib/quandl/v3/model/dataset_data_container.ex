defmodule Quandl.V3.Model.DatasetDataContainer do
  @moduledoc """
  Dataset Data Container.

  ## Attributes
  *   `dataset_data` (*type:* `Quandl.V3.Model.DatasetData.t`), *default:* `nil`)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataset_data => Quandl.V3.Model.DatasetData.t()
        }

  field(:dataset_data, as: Quandl.V3.Model.DatasetData)
end

defimpl Poison.Decoder, for: Quandl.V3.Model.DatasetDataContainer do
  def decode(value, options) do
    Quandl.V3.Model.DatasetDataContainer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: Quandl.V3.Model.DatasetDataContainer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
