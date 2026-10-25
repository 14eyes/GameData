require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701736Trigger = class("Q701736Trigger", GadgetActorProxy)
Q701736Trigger.defaultAlias = "Q701736Trigger"
local Q7017ClientConfig = require("Quest/Client/Q7017ClientConfig")

local this
local subIDs = Q7017ClientConfig.SubIDs
local datas = Q7017ClientConfig.Datas
local npcs = Q7017ClientConfig.Npcs
local points = Q7017ClientConfig.Points

function Q701736Trigger:OnPostDataPrepare()
    print("Q701736Trigger - OnPostDataPrepare")
    this = self
end

function Q701736Trigger:OnPostComponentPrepare()
    print("Q701736Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7017)
end

function Q701736Trigger:TriggerIn()
    print("Q701736Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701736})
    this:DestroySelf()
end

function Q701736Trigger:PreTriggerIn()
    print("Q701736Trigger - PreTriggerIn")
end

function Q701736Trigger:LightUpTriggerIn()
    print("Q701736Trigger - LightUpTriggerIn")
end

function Q701736Trigger:TriggerOut()
    print("Q701736Trigger - TriggerOut")
end

return Q701736Trigger
