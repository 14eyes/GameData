require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7667807Trigger = class("Q7667807Trigger", GadgetActorProxy)
Q7667807Trigger.defaultAlias = "Q7667807Trigger"
local Q76678ClientConfig = require("Quest/Client/Q76678ClientConfig")

local this
local subIDs = Q76678ClientConfig.SubIDs
local datas = Q76678ClientConfig.Datas
local npcs = Q76678ClientConfig.Npcs
local points = Q76678ClientConfig.Points

function Q7667807Trigger:OnPostDataPrepare()
    print("Q7667807Trigger - OnPostDataPrepare")
    this = self
end

function Q7667807Trigger:OnPostComponentPrepare()
    print("Q7667807Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76678)
end

function Q7667807Trigger:TriggerIn()
    print("Q7667807Trigger - TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 7667807)
end

function Q7667807Trigger:PreTriggerIn()
    print("Q7667807Trigger - PreTriggerIn")
end

function Q7667807Trigger:LightUpTriggerIn()
    print("Q7667807Trigger - LightUpTriggerIn")
end

function Q7667807Trigger:TriggerOut()
    print("Q7667807Trigger - TriggerOut")
end

return Q7667807Trigger
