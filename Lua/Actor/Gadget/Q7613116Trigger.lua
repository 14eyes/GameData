require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613116Trigger = class("Q7613116Trigger", GadgetActorProxy)
Q7613116Trigger.defaultAlias = "Q7613116Trigger"
local Q76131ClientConfig = require("Quest/Client/Q76131ClientConfig")

local this
local subIDs = Q76131ClientConfig.SubIDs
local npcs = Q76131ClientConfig.Npcs
local points = Q76131ClientConfig.Points

function Q7613116Trigger:OnPostDataPrepare()
    print("Q7613116Trigger - OnPostDataPrepare")
    this = self
end

function Q7613116Trigger:OnPostComponentPrepare()
    print("Q7613116Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76131)
end

function Q7613116Trigger:TriggerIn()
    print("Q7613116Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7613116})
    this:DestroySelf()
end

function Q7613116Trigger:PreTriggerIn()
    print("Q7613116Trigger - PreTriggerIn")
end

function Q7613116Trigger:LightUpTriggerIn()
    print("Q7613116Trigger - LightUpTriggerIn")
end

function Q7613116Trigger:TriggerOut()
    print("Q7613116Trigger - TriggerOut")
end

return Q7613116Trigger
