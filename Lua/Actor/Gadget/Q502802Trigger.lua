require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502802Trigger = class("Q502802Trigger", GadgetActorProxy)
Q502802Trigger.defaultAlias = "Q502802Trigger"
local Q5028ClientConfig = require("Quest/Client/Q5028ClientConfig")

local this
local subIDs = Q5028ClientConfig.SubIDs
local datas = Q5028ClientConfig.Datas
local npcs = Q5028ClientConfig.Npcs
local points = Q5028ClientConfig.Points

function Q502802Trigger:OnPostDataPrepare()
    print("Q502802Trigger - OnPostDataPrepare")
    this = self
end

function Q502802Trigger:OnPostComponentPrepare()
    print("Q502802Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5028)
end

function Q502802Trigger:TriggerIn()
    print("Q502802Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 502802)
    this:DestroySelf()
end

function Q502802Trigger:PreTriggerIn()
    print("Q502802Trigger - PreTriggerIn")
end

function Q502802Trigger:LightUpTriggerIn()
    print("Q502802Trigger - LightUpTriggerIn")
end

function Q502802Trigger:TriggerOut()
    print("Q502802Trigger - TriggerOut")
end

return Q502802Trigger
