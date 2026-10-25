require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2024Trigger = class("Q2024Trigger", GadgetActorProxy)
Q2024Trigger.defaultAlias = "Q2024Trigger"
local Q2024ClientConfig = require("Quest/Client/Q2024ClientConfig")

local subIDs = Q2024ClientConfig.SubIDs
local npcs = Q2024ClientConfig.Npcs

function Q2024Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2024Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2024Trigger:TriggerIn()
    print("TriggerIn")
end

function Q2024Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("2024"):FinishQuestID(false, 202401)
    self:DestroySelf()
end

return Q2024Trigger
