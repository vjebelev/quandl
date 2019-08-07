# Quandl

Elixir api client for [Quandl](https://www.quandl.com/).

## Installation

The package can be installed by adding `quandl` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:quandl, "~> 0.3.1"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/quandl](https://hexdocs.pm/quandl).

## Usage

Make sure Quandl API key is setup in your config file.

```elixir
import Config

config :quandl, api_key: "YOUR_API_KEY"
```

Alternatively, use environment variable QUANDL_API_KEY.

To fetch a time series of FB daily prices:

```elixir
Quandl.V3.Datasets.get_data("WIKI", "FB")
```

To get monthly % changes in Facebook closing price for the year 2014:
```elixir
Quandl.V3.Datasets.get_data(
  "WIKI",
  "FB",
  column_index: 4,
  start_date: "2014-01-01",
  end_date: "2014-12-31",
  collapse: "monthly",
  transform: "rdiff"
)
```

To fetch metadata for the FB time series:

```elixir
Quandl.V3.Datasets.get_metadata("WIKI", "FB")
```

To fetch data and metadata for the FB time series, in one api call:

```elixir
Quandl.V3.Datasets.get_data_metadata("WIKI", "FB")
```
To fetch metadata for the WIKI database:

```elixir
Quandl.V3.Databases.get_metadata("WIKI")
```

To return the column "ticker" for the ETFG/FUND table.

```elixir
Quandl.V3.Datatables.get_data("ETFG/FUND", columns: "ticker")
```
