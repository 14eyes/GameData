require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501502Trigger = class("Q501502Trigger", GadgetActorProxy)
Q501502Trigger.defaultAlias = "Q501502Trigger"
local Q5015ClientConfig = require("Quest/Client/Q5015ClientConfig")

local this
local subIDs = Q5015ClientConfig.SubIDs
local datas = Q5015ClientConfig.Datas
local npcs = Q5015ClientConfig.Npcs
local points = Q5015ClientConfig.Points

function Q501502Trigger:OnPostDataPrepare()
    print("Q501502Trigger - OnPostDataPrepare")
    this = self
end

function Q501502Trigger:OnPostComponentPrepare()
    print("Q501502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5015)
end

function Q501502Trigger:TriggerIn()
    print("Q501502Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 501502)
    this:DestroySelf()
end

function Q501502Trigger:PreTriggerIn()
    print("Q501502Trigger - PreTriggerIn")
end

function Q501502Trigger:LightUpTriggerIn()
    print("Q501502Trigger - LightUpTriggerIn")
end

function Q501502Trigger:TriggerOut()
    print("Q501502Trigger - TriggerOut")
end

return Q501502Trigger
