require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7604101Trigger = class("Q7604101Trigger", GadgetActorProxy)
Q7604101Trigger.defaultAlias = "Q7604101Trigger"
local Q76041ClientConfig = require("Quest/Client/Q76041ClientConfig")

local this
local subIDs = Q76041ClientConfig.SubIDs
local datas = Q76041ClientConfig.Datas
local npcs = Q76041ClientConfig.Npcs
local points = Q76041ClientConfig.Points

function Q7604101Trigger:OnPostDataPrepare()
    print("Q7604101Trigger - OnPostDataPrepare")
    this = self
end

function Q7604101Trigger:OnPostComponentPrepare()
    print("Q7604101Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(60, 40, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76041)
end

function Q7604101Trigger:TriggerIn()
    print("Q7604101Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7604101)
    this:DestroySelf()
end

function Q7604101Trigger:PreTriggerIn()
    print("Q7604101Trigger - PreTriggerIn")
end

function Q7604101Trigger:LightUpTriggerIn()
    print("Q7604101Trigger - LightUpTriggerIn")
end

function Q7604101Trigger:TriggerOut()
    print("Q7604101Trigger - TriggerOut")
end

return Q7604101Trigger
