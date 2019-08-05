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
      *   `ticket` (*type:* `String.t()`) - ticker filter condition
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

  def get_data(
        datatable_code,
        optional_params \\ []
      ) do
    optional_params_config = %{
      :ticker => :query,
    }

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
end
