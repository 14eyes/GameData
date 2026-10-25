require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000709Trigger = class("Q1000709Trigger", GadgetActorProxy)
Q1000709Trigger.defaultAlias = "Q1000709Trigger"
local Q10007ClientConfig = require("Quest/Client/Q10007ClientConfig")

local this
local subIDs = Q10007ClientConfig.SubIDs
local datas = Q10007ClientConfig.Datas
local npcs = Q10007ClientConfig.Npcs
local points = Q10007ClientConfig.Points

function Q1000709Trigger:OnPostDataPrepare()
    print("Q1000709Trigger - OnPostDataPrepare")
    this = self
end

function Q1000709Trigger:OnPostComponentPrepare()
    print("Q1000709Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10007)
end

function Q1000709Trigger:TriggerIn()
    print("Q1000709Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000709)
    this:DestroySelf()
end

function Q1000709Trigger:PreTriggerIn()
    print("Q1000709Trigger - PreTriggerIn")
end

function Q1000709Trigger:LightUpTriggerIn()
    print("Q1000709Trigger - LightUpTriggerIn")
end

function Q1000709Trigger:TriggerOut()
    print("Q1000709Trigger - TriggerOut")
end

return Q1000709Trigger
