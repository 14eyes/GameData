require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614319Trigger = class("Q7614319Trigger", GadgetActorProxy)
Q7614319Trigger.defaultAlias = "Q7614319Trigger"
local Q76143ClientConfig = require("Quest/Client/Q76143ClientConfig")

local this
local subIDs = Q76143ClientConfig.SubIDs
local datas = Q76143ClientConfig.Datas
local npcs = Q76143ClientConfig.Npcs
local points = Q76143ClientConfig.Points

function Q7614319Trigger:OnPostDataPrepare()
    print("Q7614319Trigger - OnPostDataPrepare")
    this = self
end

function Q7614319Trigger:OnPostComponentPrepare()
    print("Q7614319Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76143)
end

function Q7614319Trigger:TriggerIn()
    print("Q7614319Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7614319})
    this:DestroySelf()
end

function Q7614319Trigger:PreTriggerIn()
    print("Q7614319Trigger - PreTriggerIn")
end

function Q7614319Trigger:LightUpTriggerIn()
    print("Q7614319Trigger - LightUpTriggerIn")
end

function Q7614319Trigger:TriggerOut()
    print("Q7614319Trigger - TriggerOut")
end

return Q7614319Trigger
