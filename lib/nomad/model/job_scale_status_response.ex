# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.JobScaleStatusResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"JobID",
    :"JobCreateIndex",
    :"JobModifyIndex",
    :"JobStopped",
    :"TaskGroups"
  ]

  @type t :: %__MODULE__{
    :"JobID" => String.t | nil,
    :"JobCreateIndex" => integer() | nil,
    :"JobModifyIndex" => integer() | nil,
    :"JobStopped" => boolean() | nil,
    :"TaskGroups" => %{optional(String.t) => Nomad.Model.TaskGroupScaleStatus.t} | nil
  }
end

defimpl Poison.Decoder, for: Nomad.Model.JobScaleStatusResponse do
  import Nomad.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"TaskGroups", :map, Nomad.Model.TaskGroupScaleStatus, options)
  end
end

