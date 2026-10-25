require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609915Trigger = class("Q7609915Trigger", GadgetActorProxy)
Q7609915Trigger.defaultAlias = "Q7609915Trigger"
local Q76099ClientConfig = require("Quest/Client/Q76099ClientConfig")

local this
local subIDs = Q76099ClientConfig.SubIDs
local datas = Q76099ClientConfig.Datas
local npcs = Q76099ClientConfig.Npcs
local points = Q76099ClientConfig.Points

function Q7609915Trigger:OnPostDataPrepare()
    print("Q7609915Trigger - OnPostDataPrepare")
    this = self
end

function Q7609915Trigger:OnPostComponentPrepare()
    print("Q7609915Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76099)
end

function Q7609915Trigger:TriggerIn()
    print("Q7609915Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609915)
    this:DestroySelf()
end

function Q7609915Trigger:PreTriggerIn()
    print("Q7609915Trigger - PreTriggerIn")
end

function Q7609915Trigger:LightUpTriggerIn()
    print("Q7609915Trigger - LightUpTriggerIn")
end

function Q7609915Trigger:TriggerOut()
    print("Q7609915Trigger - TriggerOut")
end

return Q7609915Trigger
