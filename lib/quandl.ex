defmodule Quandl do

  alias Quandl.V3.{AuthenticationError}

  @missing_api_key_error_message"""
  The api_key setting is required to use quandl. Please include your Quandl
  api key in your application config file like so:

    config :quandl, api_key: "YOUR_API_KEY"

  Alternatively, you can also set the api key as an environment variable:

    QUANDL_API_KEY="YOUR_API_KEY"
  """

  def get_api_key do
    System.get_env("QUANDL_API_KEY") ||
      Application.get_env(:quandl, :api_key) ||
        raise AuthenticationError, message: @missing_api_key_error_message
  end
end
