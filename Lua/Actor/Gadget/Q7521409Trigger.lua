require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7521409Trigger = class("Q7521409Trigger", GadgetActorProxy)
Q7521409Trigger.defaultAlias = "Q7521409Trigger"
local Q75214ClientConfig = require("Quest/Client/Q75214ClientConfig")

local this
local subIDs = Q75214ClientConfig.SubIDs
local datas = Q75214ClientConfig.Datas
local npcs = Q75214ClientConfig.Npcs
local points = Q75214ClientConfig.Points

function Q7521409Trigger:OnPostDataPrepare()
    print("Q7521409Trigger - OnPostDataPrepare")
    this = self
end

function Q7521409Trigger:OnPostComponentPrepare()
    print("Q7521409Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75214)
end

function Q7521409Trigger:TriggerIn()
    print("Q7521409Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7521409)
    this:DestroySelf()
end

function Q7521409Trigger:PreTriggerIn()
    print("Q7521409Trigger - PreTriggerIn")
end

function Q7521409Trigger:LightUpTriggerIn()
    print("Q7521409Trigger - LightUpTriggerIn")
end

function Q7521409Trigger:TriggerOut()
    print("Q7521409Trigger - TriggerOut")
end

return Q7521409Trigger
