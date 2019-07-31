defmodule Quandl.V3.Model.DatabaseMetadataContainer do
  @moduledoc """
  Database Metadata Container.

  ## Attributes
  *   `database` (*type:* `Quandl.V3.Model.DatabaseMetadata.t`), *default:* `nil`)
  """
  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :database => Quandl.V3.Model.DatabaseMetadata.t()
        }

  field(:database, as: Quandl.V3.Model.DatabaseMetadata)
end

defimpl Poison.Decoder, for: Quandl.V3.Model.DatabaseMetadataContainer do
  def decode(value, options) do
    Quandl.V3.Model.DatabaseMetadataContainer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: Quandl.V3.Model.DatabaseMetadataContainer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
