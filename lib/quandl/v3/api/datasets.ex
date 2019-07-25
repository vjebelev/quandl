defmodule Quandl.V3.Api.Datasets do
  @moduledoc """
  API calls for Quandl Time Series API
  """

  alias Quandl.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Retrieves a dataset from a specified time-series.

  ### Parameters

  *   `connection` (*type:* `Quandl.V3.Connection.t`) - Connection to server.
  *   `api_key` (*type:* `String.t`) - Quandl api key.
  *   `database_code` (*type:* `String.t`) - database code, e.g. WIKI.
  *   `dataset_code` (*type:* `String.t`) - dataset code, e.g. FB.
  """

  def get_dataset(
        connection,
        api_key,
        database_code,
        dataset_code,
        optional_params \\ []
      ) do
    optional_params_config = %{}

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/datasets/{database_code}/{dataset_code}/data.json", %{
        "database_code" => URI.encode(database_code, &URI.char_unreserved?/1),
        "dataset_code" => URI.encode(dataset_code, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :api_key, api_key)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %Quandl.V3.Model.DatasetData{})
  end
end
