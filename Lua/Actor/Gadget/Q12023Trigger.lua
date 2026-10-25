require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12023Trigger = class("Q12023Trigger", GadgetActorProxy)
Q12023Trigger.defaultAlias = "Q12023Trigger"
local Q12023ClientConfig = require("Quest/Client/Q12023ClientConfig")

local subIDs = Q12023ClientConfig.SubIDs
local npcs = Q12023ClientConfig.Npcs

function Q12023Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12023Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12023Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12023"):FinishQuestID(false, 1202301)
end

function Q12023Trigger:TriggerOut()
    print("TriggerOut")
    self:DestroySelf()
end

return Q12023Trigger
