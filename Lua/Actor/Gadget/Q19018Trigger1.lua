require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19018Trigger1 = class("Q19018Trigger1", GadgetActorProxy)
Q19018Trigger1.defaultAlias = "Q19018Trigger1"
local Q19018ClientConfig = require("Quest/Client/Q19018ClientConfig")

local subIDs = Q19018ClientConfig.SubIDs
local npcs = Q19018ClientConfig.Npcs

function Q19018Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19018Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19018Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19018"):RequestInteraction(npcs.Coop_GorouData.alias)
    self:DestroySelf()
end

function Q19018Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19018Trigger1
