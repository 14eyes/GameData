require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7166301Trigger = class("Q7166301Trigger", GadgetActorProxy)
Q7166301Trigger.defaultAlias = "Q7166301Trigger"
local Q71663ClientConfig = require("Quest/Client/Q71663ClientConfig")

local subIDs = Q71663ClientConfig.SubIDs
local npcs = Q71663ClientConfig.Npcs

function Q7166301Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7166301Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7166301Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7166301)
    self:DestroySelf()
end

function Q7166301Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7166301Trigger
