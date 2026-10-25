require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7521417Trigger = class("Q7521417Trigger", GadgetActorProxy)
Q7521417Trigger.defaultAlias = "Q7521417Trigger"
local Q75214ClientConfig = require("Quest/Client/Q75214ClientConfig")

local this
local subIDs = Q75214ClientConfig.SubIDs
local datas = Q75214ClientConfig.Datas
local npcs = Q75214ClientConfig.Npcs
local points = Q75214ClientConfig.Points

function Q7521417Trigger:OnPostDataPrepare()
    print("Q7521417Trigger - OnPostDataPrepare")
    this = self
end

function Q7521417Trigger:OnPostComponentPrepare()
    print("Q7521417Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75214)
end

function Q7521417Trigger:TriggerIn()
    print("Q7521417Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7521417)
    this:DestroySelf()
end

function Q7521417Trigger:PreTriggerIn()
    print("Q7521417Trigger - PreTriggerIn")
end

function Q7521417Trigger:LightUpTriggerIn()
    print("Q7521417Trigger - LightUpTriggerIn")
end

function Q7521417Trigger:TriggerOut()
    print("Q7521417Trigger - TriggerOut")
end

return Q7521417Trigger
