# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.TaskGroup do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Name",
    :"Count",
    :"Constraints",
    :"Affinities",
    :"Tasks",
    :"Spreads",
    :"Volumes",
    :"RestartPolicy",
    :"ReschedulePolicy",
    :"EphemeralDisk",
    :"Update",
    :"Migrate",
    :"Networks",
    :"Meta",
    :"Services",
    :"ShutdownDelay",
    :"Scaling"
  ]

  @type t :: %__MODULE__{
    :"Name" => String.t | nil,
    :"Count" => integer() | nil,
    :"Constraints" => [Nomad.Model.Constraint.t] | nil,
    :"Affinities" => [Nomad.Model.Affinity.t] | nil,
    :"Tasks" => [Nomad.Model.Task.t] | nil,
    :"Spreads" => [Nomad.Model.Spread.t] | nil,
    :"Volumes" => %{optional(String.t) => Nomad.Model.VolumeRequest.t} | nil,
    :"RestartPolicy" => Nomad.Model.RestartPolicy.t | nil,
    :"ReschedulePolicy" => Nomad.Model.ReschedulePolicy.t | nil,
    :"EphemeralDisk" => Nomad.Model.EphemeralDisk.t | nil,
    :"Update" => Nomad.Model.UpdateStrategy.t | nil,
    :"Migrate" => Nomad.Model.MigrateStrategy.t | nil,
    :"Networks" => [Nomad.Model.NetworkResource.t] | nil,
    :"Meta" => %{optional(String.t) => String.t} | nil,
    :"Services" => [Nomad.Model.Service.t] | nil,
    :"ShutdownDelay" => integer() | nil,
    :"Scaling" => Nomad.Model.ScalingPolicy.t | nil
  }
end

defimpl Poison.Decoder, for: Nomad.Model.TaskGroup do
  import Nomad.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Constraints", :list, Nomad.Model.Constraint, options)
    |> deserialize(:"Affinities", :list, Nomad.Model.Affinity, options)
    |> deserialize(:"Tasks", :list, Nomad.Model.Task, options)
    |> deserialize(:"Spreads", :list, Nomad.Model.Spread, options)
    |> deserialize(:"Volumes", :map, Nomad.Model.VolumeRequest, options)
    |> deserialize(:"RestartPolicy", :struct, Nomad.Model.RestartPolicy, options)
    |> deserialize(:"ReschedulePolicy", :struct, Nomad.Model.ReschedulePolicy, options)
    |> deserialize(:"EphemeralDisk", :struct, Nomad.Model.EphemeralDisk, options)
    |> deserialize(:"Update", :struct, Nomad.Model.UpdateStrategy, options)
    |> deserialize(:"Migrate", :struct, Nomad.Model.MigrateStrategy, options)
    |> deserialize(:"Networks", :list, Nomad.Model.NetworkResource, options)
    |> deserialize(:"Services", :list, Nomad.Model.Service, options)
    |> deserialize(:"Scaling", :struct, Nomad.Model.ScalingPolicy, options)
  end
end

