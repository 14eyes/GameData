require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19038Trigger3 = class("Q19038Trigger3", GadgetActorProxy)
Q19038Trigger3.defaultAlias = "Q19038Trigger3"
local Q19038ClientConfig = require("Quest/Client/Q19038ClientConfig")

local subIDs = Q19038ClientConfig.SubIDs
local npcs = Q19038ClientConfig.Npcs

function Q19038Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19038Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19038Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19038"):RequestInteraction(npcs.Npc12320Data.alias)
    self:DestroySelf()
end

function Q19038Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q19038Trigger3
