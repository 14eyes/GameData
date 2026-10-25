require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000308Trigger = class("Q1000308Trigger", GadgetActorProxy)
Q1000308Trigger.defaultAlias = "Q1000308Trigger"
local Q10003ClientConfig = require("Quest/Client/Q10003ClientConfig")

local this
local subIDs = Q10003ClientConfig.SubIDs
local datas = Q10003ClientConfig.Datas
local npcs = Q10003ClientConfig.Npcs
local points = Q10003ClientConfig.Points

function Q1000308Trigger:OnPostDataPrepare()
    print("Q1000308Trigger - OnPostDataPrepare")
    this = self
end

function Q1000308Trigger:OnPostComponentPrepare()
    print("Q1000308Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10003)
end

function Q1000308Trigger:TriggerIn()
    print("Q1000308Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000308)
    this:DestroySelf()
end

function Q1000308Trigger:PreTriggerIn()
    print("Q1000308Trigger - PreTriggerIn")
end

function Q1000308Trigger:LightUpTriggerIn()
    print("Q1000308Trigger - LightUpTriggerIn")
end

function Q1000308Trigger:TriggerOut()
    print("Q1000308Trigger - TriggerOut")
end

return Q1000308Trigger
