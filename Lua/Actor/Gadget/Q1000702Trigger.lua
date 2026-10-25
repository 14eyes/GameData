require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000702Trigger = class("Q1000702Trigger", GadgetActorProxy)
Q1000702Trigger.defaultAlias = "Q1000702Trigger"
local Q10007ClientConfig = require("Quest/Client/Q10007ClientConfig")

local this
local subIDs = Q10007ClientConfig.SubIDs
local datas = Q10007ClientConfig.Datas
local npcs = Q10007ClientConfig.Npcs
local points = Q10007ClientConfig.Points

function Q1000702Trigger:OnPostDataPrepare()
    print("Q1000702Trigger - OnPostDataPrepare")
    this = self
end

function Q1000702Trigger:OnPostComponentPrepare()
    print("Q1000702Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(32, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10007)
end

function Q1000702Trigger:TriggerIn()
    print("Q1000702Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000702)
    this:DestroySelf()
end

function Q1000702Trigger:PreTriggerIn()
    print("Q1000702Trigger - PreTriggerIn")
end

function Q1000702Trigger:LightUpTriggerIn()
    print("Q1000702Trigger - LightUpTriggerIn")
end

function Q1000702Trigger:TriggerOut()
    print("Q1000702Trigger - TriggerOut")
end

return Q1000702Trigger
