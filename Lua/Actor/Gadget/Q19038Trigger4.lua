require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19038Trigger4 = class("Q19038Trigger4", GadgetActorProxy)
Q19038Trigger4.defaultAlias = "Q19038Trigger4"
local Q19038ClientConfig = require("Quest/Client/Q19038ClientConfig")

local subIDs = Q19038ClientConfig.SubIDs
local npcs = Q19038ClientConfig.Npcs

function Q19038Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19038Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19038Trigger4:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19038"):RequestInteraction(npcs.Coop_YunjinData.alias)
    self:DestroySelf()
end

function Q19038Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q19038Trigger4
