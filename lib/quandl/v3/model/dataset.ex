defmodule Quandl.V3.Model.Dataset do
  @moduledoc """
  Dataset.

  ## Attributes
  *   `data` (*type:* `list(Quandl.V3.Model.Bar.t)`), *default:* `nil`)
  *   `column_index` (*type:* `Integer.t`), *default:* `nil`)
  *   `column_names` (*type:* `list(String.t)`, *default:* `nil`)
  *   `start_date`  (*type:* `String.t`), *default:* `nil`)
  *   `end_data` (*type:* `Date.t`), *default:* `nil`)
  *   `frequency` (*type:* `Date.t`), *default:* `nil`)
  *   `limit` (*type:* `String.t`), *default:* `nil`)
  *   `order` (*type:* `String.t`), *default:* `nil`)
  *   `transform` (*type:* `String.t`), *default:* `nil`)
  *   `collapse` (*type:* `String.t`), *default:* `nil`)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          # :data => list(Quandl.V3.Model.Bar.t()),
          :data => list(),
          :column_index => Integer.t(),
          :column_names => list(String.t()),
          :start_date => Date.t(),
          :end_date => Date.t(),
          :frequency => String.t(),
          :limit => String.t(),
          :order => String.t(),
          :transform => String.t(),
          :collapse => String.t()
        }

  # field(:data, as: list(Quandl.V3.Model.Bar))
  field(:data, type: :list)
  field(:column_index)
  field(:column_names, type: :list)
  field(:start_date)
  field(:end_date)
  field(:frequency)
  field(:limit)
  field(:order)
  field(:transform)
  field(:collapse)
end

defimpl Poison.Decoder, for: Quandl.V3.Model.Dataset do
  def decode(value, options) do
    IO.puts("VZ in Dataset.decode")
    IO.inspect(value, label: "value")
    IO.inspect(options, label: "options")
    Quandl.V3.Model.Dataset.decode(value, options)
  end
end

defimpl Poison.Encoder, for: Quandl.V3.Model.Dataset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end