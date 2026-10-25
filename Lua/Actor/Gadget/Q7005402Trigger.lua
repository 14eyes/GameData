require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7005402Trigger = class("Q7005402Trigger", GadgetActorProxy)
Q7005402Trigger.defaultAlias = "Q7005402Trigger"
local Q70054ClientConfig = require("Quest/Client/Q70054ClientConfig")

local this
local subIDs = Q70054ClientConfig.SubIDs
local npcs = Q70054ClientConfig.Npcs
local points = Q70054ClientConfig.Points

function Q7005402Trigger:OnPostDataPrepare()
    print("Q7005402Trigger - OnPostDataPrepare")
    this = self
end

function Q7005402Trigger:OnPostComponentPrepare()
    print("Q7005402Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70054)
end

function Q7005402Trigger:TriggerIn()
    print("Q7005402Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7005402)
    this:DestroySelf()
end

function Q7005402Trigger:PreTriggerIn()
    print("Q7005402Trigger - PreTriggerIn")
end

function Q7005402Trigger:LightUpTriggerIn()
    print("Q7005402Trigger - LightUpTriggerIn")
end

function Q7005402Trigger:TriggerOut()
    print("Q7005402Trigger - TriggerOut")
end

return Q7005402Trigger
