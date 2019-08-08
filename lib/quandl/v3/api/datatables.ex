defmodule Quandl.V3.Api.Datatables do
  @moduledoc """
  API calls for Quandl Tables API
  """

  alias Quandl.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Retrieves table data.

  ### Parameters

  *   `datatable_code` (*type:* `String.t`) - datatable code, e.g. ETFG/FUND
  *   `optional_params` (*type:* `keyword()`) - row filter criteria
      *   `ticker` (*type:* `String.t()`) - ticker filter condition, e.g. "SPY"
      *   `date` (*type:* `String.t()`) - date filter condition
      *   `columns` (*type:* `String.t()`) - lists which columns to return: e.g. "ticker", "date", "shares_outstanding"

  ## Returns
  *   `{:ok, %Quandl.V3.Model.DatatableDataContainer{}}` on success
  *   `{:error, info}` on failure
  """

  @spec get_data(
          String.t(),
          keyword()
        ) ::
          {:ok, Quandl.V3.Model.DatatableDataContainer.t()}
          | {:error, Tesla.Env.t()}

  def get_data( datatable_code, optional_params \\ []) do

    optional_params_config = %{
      :ticker => :query,
      String.to_atom("qopts.columns") => :query
    }

    optional_params = remap_keys(
      optional_params, %{
        :columns => String.to_atom("qopts.columns")
      }
    )

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/datatables/{datatable_code}.json", %{
        "datatable_code" => datatable_code
      })
      |> Request.add_param(:query, :api_key, Quandl.get_api_key())
      |> Request.add_optional_params(optional_params_config, optional_params)

    Quandl.V3.Connection.new()
      |> Connection.execute(request)
      |> Response.decode(struct: %Quandl.V3.Model.DatatableDataContainer{})
  end

  @doc """
  Retrieves table metadata.

  ### Parameters

  *   `datatable_code` (*type:* `String.t`) - datatable code, e.g. AR/MWCS
  #
  ## Returns
  *   `{:ok, %Quandl.V3.Model.DatatableMetadataContainer{}}` on success
  *   `{:error, info}` on failure
  """

  @spec get_metadata(
          String.t()
        ) ::
          {:ok, Quandl.V3.Model.DatatableMetadataContainer.t()}
          | {:error, Tesla.Env.t()}

  def get_metadata( datatable_code) do

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/datatables/{datatable_code}/metadata.json", %{
        "datatable_code" => datatable_code
      })
      |> Request.add_param(:query, :api_key, Quandl.get_api_key())

    Quandl.V3.Connection.new()
      |> Connection.execute(request)
      |> Response.decode(struct: %Quandl.V3.Model.DatatableMetadataContainer{})
  end

  defp remap_keys(params, definitions) do
    params
    |> Enum.map(fn {k, v} ->
      case Map.fetch(definitions, k) do
        {:ok, p} -> {p, v}
        :error -> {k, v}
      end
    end)
  end
end
