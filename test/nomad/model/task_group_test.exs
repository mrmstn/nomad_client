defmodule NomadClient.Model.TaskGroupTest do
  use ExUnit.Case
  alias NomadClient.Api.Jobs
  alias NomadClient.Connection
  alias NomadClient.Model

  describe "handle null Typed Hash Maps" do
    test "Hash Map is null" do
      value = %Model.TaskGroup{
        Volumes: %{
          "test" => %{
            Name: nil,
            Type: nil,
            Source: nil,
            ReadOnly: nil,
            MountOptions: nil
          }
        }
      }

      options = [
        as: [
          %Model.TaskGroup{}
        ]
      ]

      %Model.TaskGroup{Volumes: %{"test" => vol}} = Poison.Decoder.decode(value, options)

      assert %Model.VolumeRequest{} = vol
    end

    test "HashMap is not null, must be casted" do
      value = %Model.TaskGroup{
        Volumes: %{
          "test" => %{
            Name: nil,
            Type: nil,
            Source: nil,
            ReadOnly: nil,
            MountOptions: nil
          }
        }
      }

      options = [
        as: [
          %Model.TaskGroup{}
        ]
      ]

      %Model.TaskGroup{Volumes: %{"test" => vol}} = Poison.Decoder.decode(value, options)

      assert %Model.VolumeRequest{} = vol
    end
  end
end
