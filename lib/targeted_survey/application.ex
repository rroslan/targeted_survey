defmodule TargetedSurvey.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    Logger.add_handlers(:targeted_survey)


    children = [
      TargetedSurveyWeb.Telemetry,
      TargetedSurvey.Repo,
      {DNSCluster, query: Application.get_env(:targeted_survey, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: TargetedSurvey.PubSub},
      # Start a worker by calling: TargetedSurvey.Worker.start_link(arg)
      # {TargetedSurvey.Worker, arg},
      # Start to serve requests, typically the last entry
      TargetedSurveyWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TargetedSurvey.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TargetedSurveyWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
