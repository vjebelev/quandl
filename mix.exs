defmodule Quandl.MixProject do
  use Mix.Project

  @version "0.0.1"

  def project do
    [
      app: :quandl,
      version: @version,
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description()
    ]
  end

  def description do
    "Elixir Quandl API Client"
  end

  def package do
    [
      name: "quandl",
      maintainers: ["Vlad Jebelev"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/vjebelev/quandl"}
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:tesla, "~> 1.2.1"},
      {:google_gax, "~> 0.1.3"},

      # Docs
      {:ex_doc, "~> 0.21.0", only: :dev, runtime: false}
    ]
  end
end
