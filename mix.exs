defmodule Keex.MixProject do
  use Mix.Project

  @source_url "https://github.com/dennym/keex"
  @version "0.1.0"

  def project do
    [
      app: :keex,
      version: @version,
      elixir: "~> 1.13-rc",
      name: "Keex",
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [coveralls: :test, "coveralls.detail": :test, "coveralls.post": :test],
      package: package(),
      deps: deps(),
      docs: docs()
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:ex_doc, "~> 0.24", only: :dev, runtime: false},
      {:excoveralls, "~> 0.14", only: :test},
      {:finch, "~> 0.9"},
    ]
  end

  def package do
    [
      description: "Simple Elixir wrapper for the Keen API",
      maintainers: ["Denny Mueller"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url}
    ]
  end

  def docs do
    [
      extras: [
        "LICENSE.md": [title: "License"],
        "README.md": [title: "Overview"],
        "guides/getting_started.md": [title: "Getting Started"]
      ],
      main: "readme",
      source_url: @source_url,
      formatters: ["html"]
    ]
  end
end
