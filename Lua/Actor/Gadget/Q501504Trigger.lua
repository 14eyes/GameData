require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501504Trigger = class("Q501504Trigger", GadgetActorProxy)
Q501504Trigger.defaultAlias = "Q501504Trigger"
local Q5015ClientConfig = require("Quest/Client/Q5015ClientConfig")

local this
local subIDs = Q5015ClientConfig.SubIDs
local datas = Q5015ClientConfig.Datas
local npcs = Q5015ClientConfig.Npcs
local points = Q5015ClientConfig.Points

function Q501504Trigger:OnPostDataPrepare()
    print("Q501504Trigger - OnPostDataPrepare")
    this = self
end

function Q501504Trigger:OnPostComponentPrepare()
    print("Q501504Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(65, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5015)
end

function Q501504Trigger:TriggerIn()
    print("Q501504Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 501504)
    this:DestroySelf()
end

function Q501504Trigger:PreTriggerIn()
    print("Q501504Trigger - PreTriggerIn")
end

function Q501504Trigger:LightUpTriggerIn()
    print("Q501504Trigger - LightUpTriggerIn")
end

function Q501504Trigger:TriggerOut()
    print("Q501504Trigger - TriggerOut")
end

return Q501504Trigger
