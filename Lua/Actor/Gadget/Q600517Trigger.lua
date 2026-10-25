require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600517Trigger = class("Q600517Trigger", GadgetActorProxy)
Q600517Trigger.defaultAlias = "Q600517Trigger"
local Q6005ClientConfig = require("Quest/Client/Q6005ClientConfig")

local this
local subIDs = Q6005ClientConfig.SubIDs
local datas = Q6005ClientConfig.Datas
local npcs = Q6005ClientConfig.Npcs
local points = Q6005ClientConfig.Points

function Q600517Trigger:OnPostDataPrepare()
    print("Q600517Trigger - OnPostDataPrepare")
    this = self
end

function Q600517Trigger:OnPostComponentPrepare()
    print("Q600517Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6005)
end

function Q600517Trigger:TriggerIn()
    print("Q600517Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 600517)
    this:DestroySelf()
end

function Q600517Trigger:PreTriggerIn()
    print("Q600517Trigger - PreTriggerIn")
end

function Q600517Trigger:LightUpTriggerIn()
    print("Q600517Trigger - LightUpTriggerIn")
end

function Q600517Trigger:TriggerOut()
    print("Q600517Trigger - TriggerOut")
end

return Q600517Trigger
