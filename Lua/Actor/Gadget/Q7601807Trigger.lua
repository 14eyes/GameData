require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601807Trigger = class("Q7601807Trigger", GadgetActorProxy)
Q7601807Trigger.defaultAlias = "Q7601807Trigger"
local Q76018ClientConfig = require("Quest/Client/Q76018ClientConfig")

local this
local subIDs = Q76018ClientConfig.SubIDs
local datas = Q76018ClientConfig.Datas
local npcs = Q76018ClientConfig.Npcs
local points = Q76018ClientConfig.Points

function Q7601807Trigger:OnPostDataPrepare()
    print("Q7601807Trigger - OnPostDataPrepare")
    this = self
end

function Q7601807Trigger:OnPostComponentPrepare()
    print("Q7601807Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76018)
end

function Q7601807Trigger:TriggerIn()
    print("Q7601807Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7601807)
    this:DestroySelf()
end

function Q7601807Trigger:PreTriggerIn()
    print("Q7601807Trigger - PreTriggerIn")
end

function Q7601807Trigger:LightUpTriggerIn()
    print("Q7601807Trigger - LightUpTriggerIn")
end

function Q7601807Trigger:TriggerOut()
    print("Q7601807Trigger - TriggerOut")
end

return Q7601807Trigger
