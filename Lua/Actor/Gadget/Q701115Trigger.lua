require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701115Trigger = class("Q701115Trigger", GadgetActorProxy)
Q701115Trigger.defaultAlias = "Q701115Trigger"
local Q7011ClientConfig = require("Quest/Client/Q7011ClientConfig")

local this
local subIDs = Q7011ClientConfig.SubIDs
local datas = Q7011ClientConfig.Datas
local npcs = Q7011ClientConfig.Npcs
local points = Q7011ClientConfig.Points

function Q701115Trigger:OnPostDataPrepare()
    print("Q701115Trigger - OnPostDataPrepare")
    this = self
end

function Q701115Trigger:OnPostComponentPrepare()
    print("Q701115Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(18.740244, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7011)
end

function Q701115Trigger:TriggerIn()
    print("Q701115Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701115})
    this:DestroySelf()
end

function Q701115Trigger:PreTriggerIn()
    print("Q701115Trigger - PreTriggerIn")
end

function Q701115Trigger:LightUpTriggerIn()
    print("Q701115Trigger - LightUpTriggerIn")
end

function Q701115Trigger:TriggerOut()
    print("Q701115Trigger - TriggerOut")
end

return Q701115Trigger
