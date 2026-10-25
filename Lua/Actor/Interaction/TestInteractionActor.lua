require("Actor/ActorCommon")
local v = require("Actor/Interaction/InteractionActorProxy")

local TestInteractionActor = class("TestInteractionActor", v)
function InteractionActorProxy.OnInterStart(arg1, arg2) end
return TestInteractionActor
