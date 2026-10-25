require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701248Trigger = class("Q701248Trigger", GadgetActorProxy)
Q701248Trigger.defaultAlias = "Q701248Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701248Trigger:OnPostDataPrepare()
    print("Q701248Trigger - OnPostDataPrepare")
    this = self
end

function Q701248Trigger:OnPostComponentPrepare()
    print("Q701248Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701248Trigger:TriggerIn()
    print("Q701248Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701248})
    this:DestroySelf()
end

function Q701248Trigger:PreTriggerIn()
    print("Q701248Trigger - PreTriggerIn")
end

function Q701248Trigger:LightUpTriggerIn()
    print("Q701248Trigger - LightUpTriggerIn")
end

function Q701248Trigger:TriggerOut()
    print("Q701248Trigger - TriggerOut")
end

return Q701248Trigger
