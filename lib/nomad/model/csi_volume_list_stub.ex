# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.CsiVolumeListStub do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ID",
    :"Namespace",
    :"Name",
    :"ExternalID",
    :"Topologies",
    :"AccessMode",
    :"AttachmentMode",
    :"MountOptions",
    :"Schedulable",
    :"PluginID",
    :"Provider",
    :"ControllerRequired",
    :"ControllersHealthy",
    :"ControllersExpected",
    :"NodesHealthy",
    :"NodesExpected",
    :"ResourceExhausted",
    :"CreateIndex",
    :"ModifyIndex"
  ]

  @type t :: %__MODULE__{
    :"ID" => String.t | nil,
    :"Namespace" => String.t | nil,
    :"Name" => String.t | nil,
    :"ExternalID" => String.t | nil,
    :"Topologies" => [Nomad.Model.CsiTopology.t] | nil,
    :"AccessMode" => String.t | nil,
    :"AttachmentMode" => String.t | nil,
    :"MountOptions" => Nomad.Model.CsiMountOptions.t | nil,
    :"Schedulable" => boolean() | nil,
    :"PluginID" => String.t | nil,
    :"Provider" => String.t | nil,
    :"ControllerRequired" => boolean() | nil,
    :"ControllersHealthy" => integer() | nil,
    :"ControllersExpected" => integer() | nil,
    :"NodesHealthy" => integer() | nil,
    :"NodesExpected" => integer() | nil,
    :"ResourceExhausted" => DateTime.t | nil,
    :"CreateIndex" => integer() | nil,
    :"ModifyIndex" => integer() | nil
  }
end

defimpl Poison.Decoder, for: Nomad.Model.CsiVolumeListStub do
  import Nomad.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Topologies", :list, Nomad.Model.CsiTopology, options)
    |> deserialize(:"MountOptions", :struct, Nomad.Model.CsiMountOptions, options)
  end
end

