defmodule BlockBase58.MixProject do
  use Mix.Project

  def project do
    [
      app: :block_base58,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      source_url: "https://github.com/agilealpha/block_base58",
      description: description(),
      package: %{
        name: "block_base58",
        licenses: ["Apache License 2.0"],
        links: %{"GitHub" => "https://github.com/AgileAlpha/block_base58"}
      },
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      name: "BlockBase58",
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description do
    "Base58 encoding that supports multiple dictionaries"
  end

  defp deps do
    [
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:excoveralls, "~> 0.10", only: :test}
    ]
  end
end
