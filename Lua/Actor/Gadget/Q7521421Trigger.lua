require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7521421Trigger = class("Q7521421Trigger", GadgetActorProxy)
Q7521421Trigger.defaultAlias = "Q7521421Trigger"
local Q75214ClientConfig = require("Quest/Client/Q75214ClientConfig")

local this
local subIDs = Q75214ClientConfig.SubIDs
local datas = Q75214ClientConfig.Datas
local npcs = Q75214ClientConfig.Npcs
local points = Q75214ClientConfig.Points

function Q7521421Trigger:OnPostDataPrepare()
    print("Q7521421Trigger - OnPostDataPrepare")
    this = self
end

function Q7521421Trigger:OnPostComponentPrepare()
    print("Q7521421Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75214)
end

function Q7521421Trigger:TriggerIn()
    print("Q7521421Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7521421)
    this:DestroySelf()
end

function Q7521421Trigger:PreTriggerIn()
    print("Q7521421Trigger - PreTriggerIn")
end

function Q7521421Trigger:LightUpTriggerIn()
    print("Q7521421Trigger - LightUpTriggerIn")
end

function Q7521421Trigger:TriggerOut()
    print("Q7521421Trigger - TriggerOut")
end

return Q7521421Trigger
