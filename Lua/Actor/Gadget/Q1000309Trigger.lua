require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000309Trigger = class("Q1000309Trigger", GadgetActorProxy)
Q1000309Trigger.defaultAlias = "Q1000309Trigger"
local Q10003ClientConfig = require("Quest/Client/Q10003ClientConfig")

local this
local subIDs = Q10003ClientConfig.SubIDs
local datas = Q10003ClientConfig.Datas
local npcs = Q10003ClientConfig.Npcs
local points = Q10003ClientConfig.Points

function Q1000309Trigger:OnPostDataPrepare()
    print("Q1000309Trigger - OnPostDataPrepare")
    this = self
end

function Q1000309Trigger:OnPostComponentPrepare()
    print("Q1000309Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10003)
end

function Q1000309Trigger:TriggerIn()
    print("Q1000309Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000309)
    this:DestroySelf()
end

function Q1000309Trigger:PreTriggerIn()
    print("Q1000309Trigger - PreTriggerIn")
end

function Q1000309Trigger:LightUpTriggerIn()
    print("Q1000309Trigger - LightUpTriggerIn")
end

function Q1000309Trigger:TriggerOut()
    print("Q1000309Trigger - TriggerOut")
end

return Q1000309Trigger
