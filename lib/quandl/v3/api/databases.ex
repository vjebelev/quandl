defmodule Quandl.V3.Api.Databases do
  @moduledoc """
  API calls for Quandl Time Series API
  """

  alias Quandl.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Retrieves metadata for a time-series database.

  ### Parameters

  *   `database_code` (*type:* `String.t`) - database code, e.g. WIKI.

  ## Returns
  *   `{:ok, %Quandl.V3.Model.DatabaseMetadataContainer{}}` on success
  *   `{:error, info}` on failure
  """
  @spec get_metadata(String.t()) ::
          {:ok, Quandl.V3.Model.DatabaseMetadataContainer.t()}
          | {:error, Tesla.Env.t()}

  def get_metadata(database_code) do
    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/databases/{database_code}.json", %{
        "database_code" => URI.encode(database_code, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :api_key, Quandl.get_api_key())

    Quandl.V3.Connection.new()
    |> Connection.execute(request)
    |> Response.decode(struct: %Quandl.V3.Model.DatabaseMetadataContainer{})
  end
end
