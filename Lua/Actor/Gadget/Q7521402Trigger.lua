require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7521402Trigger = class("Q7521402Trigger", GadgetActorProxy)
Q7521402Trigger.defaultAlias = "Q7521402Trigger"
local Q75214ClientConfig = require("Quest/Client/Q75214ClientConfig")

local this
local subIDs = Q75214ClientConfig.SubIDs
local datas = Q75214ClientConfig.Datas
local npcs = Q75214ClientConfig.Npcs
local points = Q75214ClientConfig.Points

function Q7521402Trigger:OnPostDataPrepare()
    print("Q7521402Trigger - OnPostDataPrepare")
    this = self
end

function Q7521402Trigger:OnPostComponentPrepare()
    print("Q7521402Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75214)
end

function Q7521402Trigger:TriggerIn()
    print("Q7521402Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7521402)
    this:DestroySelf()
end

function Q7521402Trigger:PreTriggerIn()
    print("Q7521402Trigger - PreTriggerIn")
end

function Q7521402Trigger:LightUpTriggerIn()
    print("Q7521402Trigger - LightUpTriggerIn")
end

function Q7521402Trigger:TriggerOut()
    print("Q7521402Trigger - TriggerOut")
end

return Q7521402Trigger
