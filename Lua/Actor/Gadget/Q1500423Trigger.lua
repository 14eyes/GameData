require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500423Trigger = class("Q1500423Trigger", GadgetActorProxy)
Q1500423Trigger.defaultAlias = "Q1500423Trigger"
local Q15004ClientConfig = require("Quest/Client/Q15004ClientConfig")

local this
local subIDs = Q15004ClientConfig.SubIDs
local datas = Q15004ClientConfig.Datas
local npcs = Q15004ClientConfig.Npcs
local points = Q15004ClientConfig.Points

function Q1500423Trigger:OnPostDataPrepare()
    print("Q1500423Trigger - OnPostDataPrepare")
    this = self
end

function Q1500423Trigger:OnPostComponentPrepare()
    print("Q1500423Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15004)
end

function Q1500423Trigger:TriggerIn()
    print("Q1500423Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1500423)
    this:DestroySelf()
end

function Q1500423Trigger:PreTriggerIn()
    print("Q1500423Trigger - PreTriggerIn")
end

function Q1500423Trigger:LightUpTriggerIn()
    print("Q1500423Trigger - LightUpTriggerIn")
end

function Q1500423Trigger:TriggerOut()
    print("Q1500423Trigger - TriggerOut")
end

return Q1500423Trigger
