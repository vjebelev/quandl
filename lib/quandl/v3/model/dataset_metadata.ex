defmodule Quandl.V3.Model.DatasetMetadata do
  @moduledoc """
  Dataset Metadata for a time-series.

  ## Attributes
  *   `id` (*type:* `Integer.t`), *default:* `nil`)
  *   `dataset_code`  (*type:* `String.t`), *default:* `nil`)
  *   `database_id` (*type:* `Integer.t`), *default:* `nil`)
  *   `database_code`  (*type:* `String.t`), *default:* `nil`)
  *   `name` (*type:* `String.t`), *default:* `nil`)
  *   `decription` (*type:* `String.t`), *default:* `nil`)
  *   `refreshed_at` (*type:* `String.t`), *default:* `nil`)
  *   `oldest_available_date` (*type:* `String.t`), *default:* `nil`)
  *   `newest_available_date` (*type:* `String.t`), *default:* `nil`)
  *   `column_names` (*type:* `list(String.t)`), *default:* `nil`)
  *   `frequency` (*type:* `String.t`), *default:* `nil`)
  *   `type` (*type:* `String.t`), *default:* `nil`)
  *   `premium` (*type:* `boolean()`), *default:* `nil`)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => integer(),
          :dataset_code => String.t(),
          :database_id => integer(),
          :database_code => String.t(),
          :name => String.t(),
          :description => String.t(),
          :refreshed_at => String.t(),
          :oldest_available_date => String.t(),
          :newest_available_date => String.t(),
          :column_names => list(String.t()),
          :frequency => String.t(),
          :type => String.t(),
          :premium => boolean()
        }

  field(:id)
  field(:dataset_code)
  field(:database_id)
  field(:database_code)
  field(:name)
  field(:description)
  field(:refreshed_at)
  field(:oldest_available_date)
  field(:newest_available_date)
  field(:column_names, type: :list)
  field(:frequency)
  field(:type)
  field(:premium)
end

defimpl Poison.Decoder, for: Quandl.V3.Model.DatasetMetadata do
  def decode(value, options) do
    Quandl.V3.Model.DatasetMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: Quandl.V3.Model.DatasetMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
