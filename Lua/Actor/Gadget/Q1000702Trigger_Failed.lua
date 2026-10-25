require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000702Trigger_Failed = class("Q1000702Trigger_Failed", GadgetActorProxy)
Q1000702Trigger_Failed.defaultAlias = "Q1000702Trigger_Failed"
local Q10007ClientConfig = require("Quest/Client/Q10007ClientConfig")

local this
local subIDs = Q10007ClientConfig.SubIDs
local datas = Q10007ClientConfig.Datas
local npcs = Q10007ClientConfig.Npcs
local points = Q10007ClientConfig.Points

function Q1000702Trigger_Failed:OnPostDataPrepare()
    print("Q1000702Trigger_Failed - OnPostDataPrepare")
    this = self
end

function Q1000702Trigger_Failed:OnPostComponentPrepare()
    print("Q1000702Trigger_Failed - OnPostComponentPrepare")
    this:AddComponentTrigger(420, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10007)
end

function Q1000702Trigger_Failed:TriggerIn()
    print("Q1000702Trigger_Failed - TriggerIn")
end

function Q1000702Trigger_Failed:PreTriggerIn()
    print("Q1000702Trigger_Failed - PreTriggerIn")
end

function Q1000702Trigger_Failed:LightUpTriggerIn()
    print("Q1000702Trigger_Failed - LightUpTriggerIn")
end

function Q1000702Trigger_Failed:TriggerOut()
    print("Q1000702Trigger_Failed - TriggerOut")
    actorUtils.FinishQuestID(false, 1000701)
    this:DestroySelf()
end

return Q1000702Trigger_Failed
