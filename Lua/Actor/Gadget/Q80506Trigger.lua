require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q80506Trigger = class("Q80506Trigger", GadgetActorProxy)
Q80506Trigger.defaultAlias = "Q80506Trigger"
local Q805ClientConfig = require("Quest/Client/Q805ClientConfig")

local this
local subIDs = Q805ClientConfig.SubIDs
local npcs = Q805ClientConfig.Npcs
local points = Q805ClientConfig.Points

function Q80506Trigger:OnPostDataPrepare()
    print("Q80506Trigger - OnPostDataPrepare")
    this = self
end

function Q80506Trigger:OnPostComponentPrepare()
    print("Q80506Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 805)
end

function Q80506Trigger:TriggerIn()
    print("Q80506Trigger - TriggerIn")
end

function Q80506Trigger:PreTriggerIn()
    print("Q80506Trigger - PreTriggerIn")
end

function Q80506Trigger:LightUpTriggerIn()
    print("Q80506Trigger - LightUpTriggerIn")
end

function Q80506Trigger:TriggerOut()
    print("Q80506Trigger - TriggerOut")
    actorUtils.FinishQuestID(false, 80506)
    this:DestroySelf()
end

return Q80506Trigger
