defmodule Quandl.V3.Model.Database do
  @moduledoc """
  Database metadata.

  ## Attributes
  *   `id` (*type:* `Integer.t`), *default:* `nil`)
  *   `database_code` (*type:* `String.t`), *default:* `nil`)
  *   `name` (*type:* `String.t`, *default:* `nil`)
  *   `description`  (*type:* `String.t`), *default:* `nil`)
  *   `datasets_count` (*type:* `Integer.t`), *default:* `nil`)
  *   `downloads` (*type:* `Integer.t`), *default:* `nil`)
  *   `premium` (*type:* `Boolean.t`), *default:* `nil`)
  *   `image` (*type:* `String.t`), *default:* `nil`)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => Integer.t(),
          :database_code => String.t(),
          :name => String.t(),
          :description => String.t(),
          :datasets_count => Integer.t(),
          :downloads => Integer.t(),
          :premium => Boolean.t(),
          :image => String.t()
        }

  field(:id)
  field(:database_code)
  field(:name)
  field(:description)
  field(:datasets_count)
  field(:downloads)
  field(:premium)
  field(:image)
end

defimpl Poison.Decoder, for: Quandl.V3.Model.Database do
  def decode(value, options) do
    Quandl.V3.Model.Database.decode(value, options)
  end
end

defimpl Poison.Encoder, for: Quandl.V3.Model.Database do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
