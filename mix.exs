defmodule Hulaaki.Mixfile do
  use Mix.Project

  @version "0.0.5"

  def project do
    [app: :hulaaki,
     version: @version,
     name: "Hulaaki",
     elixir: "~> 1.2",
     source_url: "https://github.com/suvash/hulaaki",
     homepage_url: "https://github.com/suvash/hulaaki",
     deps: deps(),
     docs: &docs/0,

     description: description(),
     package: package(),

     test_coverage: [tool: ExCoveralls]
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:inch_ex, "~> 0.5.3", only: :docs},
     {:earmark, "~> 0.2.1", only: [:dev, :docs]},
     {:ex_doc, "~> 0.12", only: [:dev, :docs]},
     {:dialyze, "~> 0.2.1", only: :test},
     {:excoveralls, "~> 0.5.4", only: [:dev, :test]}]
  end

  defp description do
    """
    An MQTT 3.1.1 client library written in Elixir.
    """
  end

  defp package do
    [maintainers: ["Suvash Thapaliya"],
     files: ["lib", "mix.exs", "README.md", "LICENSE.txt"],
     licenses: ["MIT"],
     links: %{Github: "https://github.com/suvash/hulaaki"}]
  end

  defp docs do
    [source_ref: "v#{@version}", main: "readme", readme: "readme.md",
     source_url: "https://github.com/suvash/hulaaki"]
  end
end
