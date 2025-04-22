defmodule TargetedSurvey.Repo do
  use Ecto.Repo,
    otp_app: :targeted_survey,
    adapter: Ecto.Adapters.Postgres
end
