require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910605Trigger = class("Q1910605Trigger", GadgetActorProxy)
Q1910605Trigger.defaultAlias = "Q1910605Trigger"
local Q19106ClientConfig = require("Quest/Client/Q19106ClientConfig")

local subIDs = Q19106ClientConfig.SubIDs
local npcs = Q19106ClientConfig.Npcs

function Q1910605Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910605Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910605Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19106"):FinishQuestID(false, 1910605)
    self:DestroySelf()
end

function Q1910605Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1910605Trigger
