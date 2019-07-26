# Quandl

Elixir api client for [Quandl](https://www.quandl.com/).

## Installation

The package can be installed by adding `quandl` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:quandl, "~> 0.0.2"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/quandl](https://hexdocs.pm/quandl).

## Usage

To fetch a list of FB daily prices:

```elixir
alias Quandl.V3.{Connection, Api.Datasets}
  
conn = Connection.new
api_key = "YOUR_API_KEY"
database_code = "WIKI"
dataset_code = "FB" 

IO.inspect Datasets.get_dataset(conn, api_key, database_code, dataset_code)
```

