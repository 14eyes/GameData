require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7521007Trigger = class("Q7521007Trigger", GadgetActorProxy)
Q7521007Trigger.defaultAlias = "Q7521007Trigger"
local Q75210ClientConfig = require("Quest/Client/Q75210ClientConfig")

local this
local subIDs = Q75210ClientConfig.SubIDs
local datas = Q75210ClientConfig.Datas
local npcs = Q75210ClientConfig.Npcs
local points = Q75210ClientConfig.Points

function Q7521007Trigger:OnPostDataPrepare()
    print("Q7521007Trigger - OnPostDataPrepare")
    this = self
end

function Q7521007Trigger:OnPostComponentPrepare()
    print("Q7521007Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(500, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75210)
end

function Q7521007Trigger:TriggerIn()
    print("Q7521007Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7521007)
    this:DestroySelf()
end

function Q7521007Trigger:PreTriggerIn()
    print("Q7521007Trigger - PreTriggerIn")
end

function Q7521007Trigger:LightUpTriggerIn()
    print("Q7521007Trigger - LightUpTriggerIn")
end

function Q7521007Trigger:TriggerOut()
    print("Q7521007Trigger - TriggerOut")
end

return Q7521007Trigger
