require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q60212Trigger = class("Q60212Trigger", GadgetActorProxy)
Q60212Trigger.defaultAlias = "Q60212Trigger"
local Q602ClientConfig = require("Quest/Client/Q602ClientConfig")

local this
local subIDs = Q602ClientConfig.SubIDs
local datas = Q602ClientConfig.Datas
local npcs = Q602ClientConfig.Npcs
local points = Q602ClientConfig.Points

function Q60212Trigger:OnPostDataPrepare()
    print("Q60212Trigger - OnPostDataPrepare")
    this = self
end

function Q60212Trigger:OnPostComponentPrepare()
    print("Q60212Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 602)
end

function Q60212Trigger:TriggerIn()
    print("Q60212Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 60212)
    this:DestroySelf()
end

function Q60212Trigger:PreTriggerIn()
    print("Q60212Trigger - PreTriggerIn")
end

function Q60212Trigger:LightUpTriggerIn()
    print("Q60212Trigger - LightUpTriggerIn")
end

function Q60212Trigger:TriggerOut()
    print("Q60212Trigger - TriggerOut")
end

return Q60212Trigger
