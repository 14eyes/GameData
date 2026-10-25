require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612711Trigger = class("Q7612711Trigger", GadgetActorProxy)
Q7612711Trigger.defaultAlias = "Q7612711Trigger"
local Q76127ClientConfig = require("Quest/Client/Q76127ClientConfig")

local this
local subIDs = Q76127ClientConfig.SubIDs
local datas = Q76127ClientConfig.Datas
local npcs = Q76127ClientConfig.Npcs
local points = Q76127ClientConfig.Points

function Q7612711Trigger:OnPostDataPrepare()
    print("Q7612711Trigger - OnPostDataPrepare")
    this = self
end

function Q7612711Trigger:OnPostComponentPrepare()
    print("Q7612711Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76127)
end

function Q7612711Trigger:TriggerIn()
    print("Q7612711Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7612711)
    this:DestroySelf()
end

function Q7612711Trigger:PreTriggerIn()
    print("Q7612711Trigger - PreTriggerIn")
end

function Q7612711Trigger:LightUpTriggerIn()
    print("Q7612711Trigger - LightUpTriggerIn")
end

function Q7612711Trigger:TriggerOut()
    print("Q7612711Trigger - TriggerOut")
end

return Q7612711Trigger
