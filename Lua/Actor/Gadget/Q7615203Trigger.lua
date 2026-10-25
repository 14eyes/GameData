require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615203Trigger = class("Q7615203Trigger", GadgetActorProxy)
Q7615203Trigger.defaultAlias = "Q7615203Trigger"
local Q76152ClientConfig = require("Quest/Client/Q76152ClientConfig")

local this
local subIDs = Q76152ClientConfig.SubIDs
local datas = Q76152ClientConfig.Datas
local npcs = Q76152ClientConfig.Npcs
local points = Q76152ClientConfig.Points

function Q7615203Trigger:OnPostDataPrepare()
    print("Q7615203Trigger - OnPostDataPrepare")
    this = self
end

function Q7615203Trigger:OnPostComponentPrepare()
    print("Q7615203Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76152)
end

function Q7615203Trigger:TriggerIn()
    print("Q7615203Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7615203)
    this:DestroySelf()
end

function Q7615203Trigger:PreTriggerIn()
    print("Q7615203Trigger - PreTriggerIn")
end

function Q7615203Trigger:LightUpTriggerIn()
    print("Q7615203Trigger - LightUpTriggerIn")
end

function Q7615203Trigger:TriggerOut()
    print("Q7615203Trigger - TriggerOut")
end

return Q7615203Trigger
