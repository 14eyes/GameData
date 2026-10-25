require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12030Trigger = class("Q12030Trigger", GadgetActorProxy)
Q12030Trigger.defaultAlias = "Q12030Trigger"
local Q12030ClientConfig = require("Quest/Client/Q12030ClientConfig")

local subIDs = Q12030ClientConfig.SubIDs
local npcs = Q12030ClientConfig.Npcs

function Q12030Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12030Trigger:TriggerOut()
    print("TriggerOut")
end

function Q12030Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12030Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12030"):FinishQuestID(false, 9000401)
end

return Q12030Trigger
