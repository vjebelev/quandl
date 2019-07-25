defmodule Quandl.V3.Model.DatasetData do
  @moduledoc """
  Dataset.

  ## Attributes
  *   `dataset_data` (*type:* `Quandl.V3.Model.Dataset.t`), *default:* `nil`)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataset_data => Quandl.V3.Model.Dataset.t()
        }

  field(:dataset_data, as: Quandl.V3.Model.Dataset)
end

defimpl Poison.Decoder, for: Quandl.V3.Model.DatasetData do
  def decode(value, options) do
    Quandl.V3.Model.DatasetData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: Quandl.V3.Model.DatasetData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
