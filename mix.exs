defmodule Base16Builder.Mixfile do
  use Mix.Project

  def project do
    [
      app: :base16_builder,
      version: "1.0.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: [main_module: Base16Builder.CLI]
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [
      extra_applications: [
        :logger,
        :yaml_elixir
      ]
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:yaml_elixir, "~> 1.3.0"},
      {:git_cli, "~> 0.2"},
      {:slugger, "~> 0.2"},
      {:color_utils, "0.2.0"},
      {:bbmustache, "~> 1.5"},
      {:exfmt, [github: "lpil/exfmt", tag: "v0.4.0"]}
    ]
  end
end
