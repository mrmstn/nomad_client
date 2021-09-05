defmodule NomadClient.Api.JobsTest do
  use ExUnit.Case
  alias NomadClient.Api.Jobs
  alias NomadClient.Connection

  @tag :external
  test "get_jobs" do
    # Expect empty list
    assert {:ok, []} = Connection.new() |> Jobs.get_jobs()
  end
end
