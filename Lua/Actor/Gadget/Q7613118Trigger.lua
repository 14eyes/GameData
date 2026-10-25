require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613118Trigger = class("Q7613118Trigger", GadgetActorProxy)
Q7613118Trigger.defaultAlias = "Q7613118Trigger"
local Q76131ClientConfig = require("Quest/Client/Q76131ClientConfig")

local this
local subIDs = Q76131ClientConfig.SubIDs
local npcs = Q76131ClientConfig.Npcs
local points = Q76131ClientConfig.Points

function Q7613118Trigger:OnPostDataPrepare()
    print("Q7613118Trigger - OnPostDataPrepare")
    this = self
end

function Q7613118Trigger:OnPostComponentPrepare()
    print("Q7613118Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 35, 40, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76131)
end

function Q7613118Trigger:TriggerIn()
    print("Q7613118Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7613118})
    this:DestroySelf()
end

function Q7613118Trigger:PreTriggerIn()
    print("Q7613118Trigger - PreTriggerIn")
end

function Q7613118Trigger:LightUpTriggerIn()
    print("Q7613118Trigger - LightUpTriggerIn")
end

function Q7613118Trigger:TriggerOut()
    print("Q7613118Trigger - TriggerOut")
end

return Q7613118Trigger
