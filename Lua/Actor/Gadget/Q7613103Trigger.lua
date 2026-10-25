require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613103Trigger = class("Q7613103Trigger", GadgetActorProxy)
Q7613103Trigger.defaultAlias = "Q7613103Trigger"
local Q76131ClientConfig = require("Quest/Client/Q76131ClientConfig")

local this
local subIDs = Q76131ClientConfig.SubIDs
local npcs = Q76131ClientConfig.Npcs
local points = Q76131ClientConfig.Points

function Q7613103Trigger:OnPostDataPrepare()
    print("Q7613103Trigger - OnPostDataPrepare")
    this = self
end

function Q7613103Trigger:OnPostComponentPrepare()
    print("Q7613103Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(30, 80, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76131)
end

function Q7613103Trigger:TriggerIn()
    print("Q7613103Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7613103})
    this:DestroySelf()
end

function Q7613103Trigger:PreTriggerIn()
    print("Q7613103Trigger - PreTriggerIn")
end

function Q7613103Trigger:LightUpTriggerIn()
    print("Q7613103Trigger - LightUpTriggerIn")
end

function Q7613103Trigger:TriggerOut()
    print("Q7613103Trigger - TriggerOut")
end

return Q7613103Trigger
