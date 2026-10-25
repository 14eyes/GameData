require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608920Trigger = class("Q7608920Trigger", GadgetActorProxy)
Q7608920Trigger.defaultAlias = "Q7608920Trigger"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608920Trigger:OnPostDataPrepare()
    print("Q7608920Trigger - OnPostDataPrepare")
    this = self
end

function Q7608920Trigger:OnPostComponentPrepare()
    print("Q7608920Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608920Trigger:TriggerIn()
    print("Q7608920Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7608920)
    this:DestroySelf()
end

function Q7608920Trigger:PreTriggerIn()
    print("Q7608920Trigger - PreTriggerIn")
end

function Q7608920Trigger:LightUpTriggerIn()
    print("Q7608920Trigger - LightUpTriggerIn")
end

function Q7608920Trigger:TriggerOut()
    print("Q7608920Trigger - TriggerOut")
end

return Q7608920Trigger
