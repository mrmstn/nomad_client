defmodule NomadClient.Model.EvaluationTest do
  use ExUnit.Case
  alias NomadClient.Model

  test "HashMap is not null, must be casted" do
    options = [
      as: [
        %Model.Evaluation{}
      ]
    ]

    {:ok, value} =
      """
      {
        "ID": "2b892741-1853-3ddd-382f-fc12e93b5174",
        "Namespace": "default",
        "Priority": 50,
        "Type": "service",
        "TriggeredBy": "job-register",
        "JobID": "unique-id",
        "JobModifyIndex": 204,
        "DeploymentID": "22650a8c-8922-66a6-d847-14f2db7b0ab9",
        "Status": "complete",
        "QueuedAllocations": {
            "cache": 0
        },
        "SnapshotIndex": 204,
        "CreateIndex": 204,
        "ModifyIndex": 206,
        "CreateTime": 1666707394061348343,
        "ModifyTime": 1666707394064897549
      }
      """
      |> Poison.decode(as: %Model.Evaluation{})
      |> IO.inspect()
  end
end
