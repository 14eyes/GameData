require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7268301Trigger = class("Q7268301Trigger", GadgetActorProxy)
Q7268301Trigger.defaultAlias = "Q7268301Trigger"
local Q72683ClientConfig = require("Quest/Client/Q72683ClientConfig")

local subIDs = Q72683ClientConfig.SubIDs
local npcs = Q72683ClientConfig.Npcs

function Q7268301Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7268301Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7268301Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7268301)
    self:DestroySelf()
end

function Q7268301Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7268301Trigger
