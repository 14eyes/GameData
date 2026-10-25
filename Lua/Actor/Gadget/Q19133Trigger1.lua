require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19133Trigger1 = class("Q19133Trigger1", GadgetActorProxy)
Q19133Trigger1.defaultAlias = "Q19133Trigger1"
local Q19133ClientConfig = require("Quest/Client/Q19133ClientConfig")

local subIDs = Q19133ClientConfig.SubIDs
local npcs = Q19133ClientConfig.Npcs

function Q19133Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19133Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19133Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19133"):RequestInteraction(npcs.Npc12300Data.alias)
end

function Q19133Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19133Trigger1
