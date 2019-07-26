defmodule Quandl.V3.Model.DatabaseData do
  @moduledoc """
  Database Data Container.

  ## Attributes
  *   `database` (*type:* `Quandl.V3.Model.Database.t`), *default:* `nil`)
  """
  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :database => Quandl.V3.Model.Database.t()
        }

  field(:database, as: Quandl.V3.Model.Database)
end

defimpl Poison.Decoder, for: Quandl.V3.Model.DatabaseData do
  def decode(value, options) do
    Quandl.V3.Model.DatabaseData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: Quandl.V3.Model.DatabaseData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
