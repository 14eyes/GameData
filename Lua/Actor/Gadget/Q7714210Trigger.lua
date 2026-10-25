require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714210Trigger = class("Q7714210Trigger", GadgetActorProxy)
Q7714210Trigger.defaultAlias = "Q7714210Trigger"
local Q77142ClientConfig = require("Quest/Client/Q77142ClientConfig")

local this
local subIDs = Q77142ClientConfig.SubIDs
local datas = Q77142ClientConfig.Datas
local npcs = Q77142ClientConfig.Npcs
local points = Q77142ClientConfig.Points

function Q7714210Trigger:OnPostDataPrepare()
    print("Q7714210Trigger - OnPostDataPrepare")
    this = self
end

function Q7714210Trigger:OnPostComponentPrepare()
    print("Q7714210Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77142)
end

function Q7714210Trigger:TriggerIn()
    print("Q7714210Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7714210)
    this:DestroySelf()
end

function Q7714210Trigger:PreTriggerIn()
    print("Q7714210Trigger - PreTriggerIn")
end

function Q7714210Trigger:LightUpTriggerIn()
    print("Q7714210Trigger - LightUpTriggerIn")
end

function Q7714210Trigger:TriggerOut()
    print("Q7714210Trigger - TriggerOut")
end

return Q7714210Trigger
