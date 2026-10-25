require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613133Trigger = class("Q7613133Trigger", GadgetActorProxy)
Q7613133Trigger.defaultAlias = "Q7613133Trigger"
local Q76131ClientConfig = require("Quest/Client/Q76131ClientConfig")

local this
local subIDs = Q76131ClientConfig.SubIDs
local npcs = Q76131ClientConfig.Npcs
local points = Q76131ClientConfig.Points

function Q7613133Trigger:OnPostDataPrepare()
    print("Q7613133Trigger - OnPostDataPrepare")
    this = self
end

function Q7613133Trigger:OnPostComponentPrepare()
    print("Q7613133Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 5, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76131)
end

function Q7613133Trigger:TriggerIn()
    print("Q7613133Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7613133})
    this:DestroySelf()
end

function Q7613133Trigger:PreTriggerIn()
    print("Q7613133Trigger - PreTriggerIn")
end

function Q7613133Trigger:LightUpTriggerIn()
    print("Q7613133Trigger - LightUpTriggerIn")
end

function Q7613133Trigger:TriggerOut()
    print("Q7613133Trigger - TriggerOut")
end

return Q7613133Trigger
