defmodule RtcDs3231.MixProject do
  use Mix.Project

  def project do
    [
      app: :rtc_ds3231,
      version: "0.1.3",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      description: description(),
      package: package()
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
      {:circuits_i2c, "~> 0.3"},
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.11", only: :dev},
      {:credo, "~> 0.8", only: [:dev, :test], runtime: false},
    ]
  end

  defp description do
    """
      A library to read a DS3231 Real time clock module

    I've only tested this with a raspberry pi a+ and a sunfounder ds3231 board.

    """
  end

  defp package do
    %{
      files: [
        "lib",
        "mix.exs",
        "README.md"
      ],
      maintainers: ["Sven Bohm"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/kf8a/real-time-clock"}
    }
  end

  defp docs do
    [
      main: "RtcDs3231",
      extras: [
        "README.md",
        "LICENSE.md"
      ]
    ]
  end
end
