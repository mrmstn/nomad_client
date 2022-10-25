# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.Task do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Affinities,
    :Artifacts,
    :CSIPluginConfig,
    :Config,
    :Constraints,
    :DispatchPayload,
    :Driver,
    :Env,
    :KillSignal,
    :KillTimeout,
    :Kind,
    :Leader,
    :Lifecycle,
    :LogConfig,
    :Meta,
    :Name,
    :Resources,
    :RestartPolicy,
    :ScalingPolicies,
    :Services,
    :ShutdownDelay,
    :Templates,
    :User,
    :Vault,
    :VolumeMounts
  ]

  @type t :: %__MODULE__{
          :Affinities => [NomadClient.Model.Affinity.t()] | nil,
          :Artifacts => [NomadClient.Model.TaskArtifact.t()] | nil,
          :CSIPluginConfig => NomadClient.Model.TaskCsiPluginConfig.t() | nil,
          :Config => %{optional(String.t()) => any()} | nil,
          :Constraints => [NomadClient.Model.Constraint.t()] | nil,
          :DispatchPayload => NomadClient.Model.DispatchPayloadConfig.t() | nil,
          :Driver => String.t() | nil,
          :Env => %{optional(String.t()) => String.t()} | nil,
          :KillSignal => String.t() | nil,
          :KillTimeout => integer() | nil,
          :Kind => String.t() | nil,
          :Leader => boolean() | nil,
          :Lifecycle => NomadClient.Model.TaskLifecycle.t() | nil,
          :LogConfig => NomadClient.Model.LogConfig.t() | nil,
          :Meta => %{optional(String.t()) => String.t()} | nil,
          :Name => String.t() | nil,
          :Resources => NomadClient.Model.Resources.t() | nil,
          :RestartPolicy => NomadClient.Model.RestartPolicy.t() | nil,
          :ScalingPolicies => [NomadClient.Model.ScalingPolicy.t()] | nil,
          :Services => [NomadClient.Model.Service.t()] | nil,
          :ShutdownDelay => integer() | nil,
          :Templates => [NomadClient.Model.Template.t()] | nil,
          :User => String.t() | nil,
          :Vault => NomadClient.Model.Vault.t() | nil,
          :VolumeMounts => [NomadClient.Model.VolumeMount.t()] | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.Task do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Affinities, :list, NomadClient.Model.Affinity, options)
    |> deserialize(:Artifacts, :list, NomadClient.Model.TaskArtifact, options)
    |> deserialize(:CSIPluginConfig, :struct, NomadClient.Model.TaskCsiPluginConfig, options)
    |> deserialize(:Constraints, :list, NomadClient.Model.Constraint, options)
    |> deserialize(:DispatchPayload, :struct, NomadClient.Model.DispatchPayloadConfig, options)
    |> deserialize(:Lifecycle, :struct, NomadClient.Model.TaskLifecycle, options)
    |> deserialize(:LogConfig, :struct, NomadClient.Model.LogConfig, options)
    |> deserialize(:Resources, :struct, NomadClient.Model.Resources, options)
    |> deserialize(:RestartPolicy, :struct, NomadClient.Model.RestartPolicy, options)
    |> deserialize(:ScalingPolicies, :list, NomadClient.Model.ScalingPolicy, options)
    |> deserialize(:Services, :list, NomadClient.Model.Service, options)
    |> deserialize(:Templates, :list, NomadClient.Model.Template, options)
    |> deserialize(:Vault, :struct, NomadClient.Model.Vault, options)
    |> deserialize(:VolumeMounts, :list, NomadClient.Model.VolumeMount, options)
  end
end
