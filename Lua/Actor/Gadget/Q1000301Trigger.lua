require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000301Trigger = class("Q1000301Trigger", GadgetActorProxy)
Q1000301Trigger.defaultAlias = "Q1000301Trigger"
local Q10003ClientConfig = require("Quest/Client/Q10003ClientConfig")

local this
local subIDs = Q10003ClientConfig.SubIDs
local datas = Q10003ClientConfig.Datas
local npcs = Q10003ClientConfig.Npcs
local points = Q10003ClientConfig.Points

function Q1000301Trigger:OnPostDataPrepare()
    print("Q1000301Trigger - OnPostDataPrepare")
    this = self
end

function Q1000301Trigger:OnPostComponentPrepare()
    print("Q1000301Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10003)
end

function Q1000301Trigger:TriggerIn()
    print("Q1000301Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000301)
    this:DestroySelf()
end

function Q1000301Trigger:PreTriggerIn()
    print("Q1000301Trigger - PreTriggerIn")
end

function Q1000301Trigger:LightUpTriggerIn()
    print("Q1000301Trigger - LightUpTriggerIn")
end

function Q1000301Trigger:TriggerOut()
    print("Q1000301Trigger - TriggerOut")
end

return Q1000301Trigger
