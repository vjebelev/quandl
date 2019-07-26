defmodule Quandl.V3.AuthenticationError do
  @moduledoc """
  Failure to properly authenticate yourself in the request.
  """
  defexception type: "authentication_error", message: nil
end
