require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600502Trigger = class("Q7600502Trigger", GadgetActorProxy)
Q7600502Trigger.defaultAlias = "Q7600502Trigger"
local Q76005ClientConfig = require("Quest/Client/Q76005ClientConfig")

local this
local subIDs = Q76005ClientConfig.SubIDs
local datas = Q76005ClientConfig.Datas
local npcs = Q76005ClientConfig.Npcs
local points = Q76005ClientConfig.Points

function Q7600502Trigger:OnPostDataPrepare()
    print("Q7600502Trigger - OnPostDataPrepare")
    this = self
end

function Q7600502Trigger:OnPostComponentPrepare()
    print("Q7600502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76005)
end

function Q7600502Trigger:TriggerIn()
    print("Q7600502Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600502)
    this:DestroySelf()
end

function Q7600502Trigger:PreTriggerIn()
    print("Q7600502Trigger - PreTriggerIn")
end

function Q7600502Trigger:LightUpTriggerIn()
    print("Q7600502Trigger - LightUpTriggerIn")
end

function Q7600502Trigger:TriggerOut()
    print("Q7600502Trigger - TriggerOut")
end

return Q7600502Trigger
