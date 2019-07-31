defmodule Quandl.V3.Api.Datasets do
  @moduledoc """
  API calls for Quandl Time Series API
  """

  alias Quandl.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Retrieves data from a specified time-series.

  ### Parameters

  *   `database_code` (*type:* `String.t`) - database code, e.g. WIKI.
  *   `dataset_code` (*type:* `String.t`) - dataset code, e.g. FB.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters.
      *   `limit` (*type:* `integer()`) - limits the dataset.
      *   `column_index` (*type:* `integer()`)
      *   `start_date` (*type:* `String.t()`) - e.g. "2014-01-01"
      *   `end_date` (*type:* `String.t()`) - e.g. "2014-12-31"
      *   `order` (*type:* `String.t()`) - "asc" or "desc" (default)
      *   `collapse` (*type:* `String.t()`) - "none", "daily", "weekly", "monthly", "quarterly", "annual"
      *   `transform` (*type:* `String.t()`) - "none", "diff", "rdiff", "rdiff_from", "cumul" or "normalize"
  ## Returns
  *   `{:ok, %Quandl.V3.Model.DatasetDataContainer{}}` on success
  *   `{:error, info}` on failure
  """

  def get_data(
        database_code,
        dataset_code,
        optional_params \\ []
      ) do

    optional_params_config = %{
      :column_index => :query,
      :start_date => :query,
      :end_date => :query,
      :collapse => :query,
      :transform => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/datasets/{database_code}/{dataset_code}/data.json", %{
        "database_code" => URI.encode(database_code, &URI.char_unreserved?/1),
        "dataset_code" => URI.encode(dataset_code, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :api_key, Quandl.get_api_key())
      |> Request.add_optional_params(optional_params_config, optional_params)

    Quandl.V3.Connection.new
    |> Connection.execute(request)
    |> Response.decode([struct: %Quandl.V3.Model.DatasetDataContainer{}])
  end

  @doc """
  Retrieves metadata for a time-series.

  ### Parameters

  *   `database_code` (*type:* `String.t`) - database code, e.g. WIKI.
  *   `dataset_code` (*type:* `String.t`) - dataset code, e.g. FB.
  ## Returns
  *   `{:ok, %Quandl.V3.Model.DatasetMetadataContainer{}}` on success
  *   `{:error, info}` on failure
  """

  def get_metadata(
        database_code,
        dataset_code
      ) do

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/datasets/{database_code}/{dataset_code}/metadata.json", %{
        "database_code" => URI.encode(database_code, &URI.char_unreserved?/1),
        "dataset_code" => URI.encode(dataset_code, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :api_key, Quandl.get_api_key())

    Quandl.V3.Connection.new
    |> Connection.execute(request)
    |> Response.decode([struct: %Quandl.V3.Model.DatasetMetadataContainer{}])
  end

end
