require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40038Trigger = class("Q40038Trigger", GadgetActorProxy)
Q40038Trigger.defaultAlias = "Q40038Trigger"
local Q40038ClientConfig = require("Quest/Client/Q40038ClientConfig")

local subIDs = Q40038ClientConfig.SubIDs
local npcs = Q40038ClientConfig.Npcs

function Q40038Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40038Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40038Trigger:TriggerIn()
    print("TriggerIn")
end

function Q40038Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("40038"):FinishQuestID(false, 4003801)
    self:DestroySelf()
end

return Q40038Trigger
