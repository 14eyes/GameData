require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609807Trigger = class("Q7609807Trigger", GadgetActorProxy)
Q7609807Trigger.defaultAlias = "Q7609807Trigger"
local Q76098ClientConfig = require("Quest/Client/Q76098ClientConfig")

local this
local subIDs = Q76098ClientConfig.SubIDs
local datas = Q76098ClientConfig.Datas
local npcs = Q76098ClientConfig.Npcs
local points = Q76098ClientConfig.Points

function Q7609807Trigger:OnPostDataPrepare()
    print("Q7609807Trigger - OnPostDataPrepare")
    this = self
end

function Q7609807Trigger:OnPostComponentPrepare()
    print("Q7609807Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(20, 3, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76098)
end

function Q7609807Trigger:TriggerIn()
    print("Q7609807Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609807)
    this:DestroySelf()
end

function Q7609807Trigger:PreTriggerIn()
    print("Q7609807Trigger - PreTriggerIn")
end

function Q7609807Trigger:LightUpTriggerIn()
    print("Q7609807Trigger - LightUpTriggerIn")
end

function Q7609807Trigger:TriggerOut()
    print("Q7609807Trigger - TriggerOut")
end

return Q7609807Trigger
