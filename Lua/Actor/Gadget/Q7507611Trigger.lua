require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7507611Trigger = class("Q7507611Trigger", GadgetActorProxy)
Q7507611Trigger.defaultAlias = "Q7507611Trigger"
local Q75076ClientConfig = require("Quest/Client/Q75076ClientConfig")

local this
local subIDs = Q75076ClientConfig.SubIDs
local datas = Q75076ClientConfig.Datas
local npcs = Q75076ClientConfig.Npcs
local points = Q75076ClientConfig.Points

function Q7507611Trigger:OnPostDataPrepare()
    print("Q7507611Trigger - OnPostDataPrepare")
    this = self
end

function Q7507611Trigger:OnPostComponentPrepare()
    print("Q7507611Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75076)
end

function Q7507611Trigger:TriggerIn()
    print("Q7507611Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7507611)
    this:DestroySelf()
end

function Q7507611Trigger:PreTriggerIn()
    print("Q7507611Trigger - PreTriggerIn")
end

function Q7507611Trigger:LightUpTriggerIn()
    print("Q7507611Trigger - LightUpTriggerIn")
end

function Q7507611Trigger:TriggerOut()
    print("Q7507611Trigger - TriggerOut")
end

return Q7507611Trigger
