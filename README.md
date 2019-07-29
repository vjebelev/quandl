# Quandl

Elixir api client for [Quandl](https://www.quandl.com/).

## Installation

The package can be installed by adding `quandl` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:quandl, "~> 0.1.1"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/quandl](https://hexdocs.pm/quandl).

## Usage

Make sure Quandl API key is setup in your config file (example below is for Elixir 1.9+), if using an older version use Mix.Config instead of Config.

```elixir
import Config

config :quandl, api_key: "YOUR_API_KEY"
```

Alternatively, use environment variable QUANDL_API_KEY.

To fetch a list of FB daily prices:

```elixir
Quandl.V3.Datasets.get_dataset("WIKI", "FB")
```

To get monthly % changes in Facebook closing price for the year 2014:
```elixir
Quandl.V3.Datasets.get_dataset(
  "WIKI",
  "FB",
  column_index: 4,
  start_date: "2014-01-01",
  end_date: "2014-12-31",
  collapse: "monthly",
  transform: "rdiff"
)
```
