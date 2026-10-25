require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710232Trigger = class("Q7710232Trigger", GadgetActorProxy)
Q7710232Trigger.defaultAlias = "Q7710232Trigger"
local Q77102ClientConfig = require("Quest/Client/Q77102ClientConfig")

local this
local subIDs = Q77102ClientConfig.SubIDs
local datas = Q77102ClientConfig.Datas
local npcs = Q77102ClientConfig.Npcs
local points = Q77102ClientConfig.Points

function Q7710232Trigger:OnPostDataPrepare()
    print("Q7710232Trigger - OnPostDataPrepare")
    this = self
end

function Q7710232Trigger:OnPostComponentPrepare()
    print("Q7710232Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77102)
end

function Q7710232Trigger:TriggerIn()
    print("Q7710232Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7710232})
    this:DestroySelf()
end

function Q7710232Trigger:PreTriggerIn()
    print("Q7710232Trigger - PreTriggerIn")
end

function Q7710232Trigger:LightUpTriggerIn()
    print("Q7710232Trigger - LightUpTriggerIn")
end

function Q7710232Trigger:TriggerOut()
    print("Q7710232Trigger - TriggerOut")
end

return Q7710232Trigger
