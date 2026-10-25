require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000311Trigger = class("Q1000311Trigger", GadgetActorProxy)
Q1000311Trigger.defaultAlias = "Q1000311Trigger"
local Q10003ClientConfig = require("Quest/Client/Q10003ClientConfig")

local this
local subIDs = Q10003ClientConfig.SubIDs
local datas = Q10003ClientConfig.Datas
local npcs = Q10003ClientConfig.Npcs
local points = Q10003ClientConfig.Points

function Q1000311Trigger:OnPostDataPrepare()
    print("Q1000311Trigger - OnPostDataPrepare")
    this = self
end

function Q1000311Trigger:OnPostComponentPrepare()
    print("Q1000311Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10003)
end

function Q1000311Trigger:TriggerIn()
    print("Q1000311Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000311)
    this:DestroySelf()
end

function Q1000311Trigger:PreTriggerIn()
    print("Q1000311Trigger - PreTriggerIn")
end

function Q1000311Trigger:LightUpTriggerIn()
    print("Q1000311Trigger - LightUpTriggerIn")
end

function Q1000311Trigger:TriggerOut()
    print("Q1000311Trigger - TriggerOut")
end

return Q1000311Trigger
