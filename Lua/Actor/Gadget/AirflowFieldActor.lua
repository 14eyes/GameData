require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local AirflowFieldActor = class("AirflowFieldActor", GadgetActorProxy)
function AirflowFieldActor:OnPostDataPrepare() end
function AirflowFieldActor:OnPostComponentPrepare() end
return AirflowFieldActor
