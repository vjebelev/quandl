defmodule Quandl.V3.Connection do
  @moduledoc """
  Handle Tesla connections for Quandl.
  """

  @type t :: Tesla.Env.client()

  use GoogleApi.Gax.Connection,
    otp_app: :quandl,
    base_url: "https://www.quandl.com/api/v3"
end
