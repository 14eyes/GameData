require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613114Trigger = class("Q7613114Trigger", GadgetActorProxy)
Q7613114Trigger.defaultAlias = "Q7613114Trigger"
local Q76131ClientConfig = require("Quest/Client/Q76131ClientConfig")

local this
local subIDs = Q76131ClientConfig.SubIDs
local npcs = Q76131ClientConfig.Npcs
local points = Q76131ClientConfig.Points

function Q7613114Trigger:OnPostDataPrepare()
    print("Q7613114Trigger - OnPostDataPrepare")
    this = self
end

function Q7613114Trigger:OnPostComponentPrepare()
    print("Q7613114Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 25, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76131)
end

function Q7613114Trigger:TriggerIn()
    print("Q7613114Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7613114})
    this:DestroySelf()
end

function Q7613114Trigger:PreTriggerIn()
    print("Q7613114Trigger - PreTriggerIn")
end

function Q7613114Trigger:LightUpTriggerIn()
    print("Q7613114Trigger - LightUpTriggerIn")
end

function Q7613114Trigger:TriggerOut()
    print("Q7613114Trigger - TriggerOut")
end

return Q7613114Trigger
