require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613127Trigger = class("Q7613127Trigger", GadgetActorProxy)
Q7613127Trigger.defaultAlias = "Q7613127Trigger"
local Q76131ClientConfig = require("Quest/Client/Q76131ClientConfig")

local this
local subIDs = Q76131ClientConfig.SubIDs
local npcs = Q76131ClientConfig.Npcs
local points = Q76131ClientConfig.Points

function Q7613127Trigger:OnPostDataPrepare()
    print("Q7613127Trigger - OnPostDataPrepare")
    this = self
end

function Q7613127Trigger:OnPostComponentPrepare()
    print("Q7613127Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(200, 200, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76131)
end

function Q7613127Trigger:TriggerIn()
    print("Q7613127Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7613127})
    this:DestroySelf()
end

function Q7613127Trigger:PreTriggerIn()
    print("Q7613127Trigger - PreTriggerIn")
end

function Q7613127Trigger:LightUpTriggerIn()
    print("Q7613127Trigger - LightUpTriggerIn")
end

function Q7613127Trigger:TriggerOut()
    print("Q7613127Trigger - TriggerOut")
end

return Q7613127Trigger
