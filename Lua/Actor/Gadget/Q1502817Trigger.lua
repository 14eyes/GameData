require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502817Trigger = class("Q1502817Trigger", GadgetActorProxy)
Q1502817Trigger.defaultAlias = "Q1502817Trigger"
local Q15028ClientConfig = require("Quest/Client/Q15028ClientConfig")

local this
local subIDs = Q15028ClientConfig.SubIDs
local datas = Q15028ClientConfig.Datas
local npcs = Q15028ClientConfig.Npcs
local points = Q15028ClientConfig.Points

function Q1502817Trigger:OnPostDataPrepare()
    print("Q1502817Trigger - OnPostDataPrepare")
    this = self
end

function Q1502817Trigger:OnPostComponentPrepare()
    print("Q1502817Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(17, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15028)
end

function Q1502817Trigger:TriggerIn()
    print("Q1502817Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1502817)
    this:DestroySelf()
end

function Q1502817Trigger:PreTriggerIn()
    print("Q1502817Trigger - PreTriggerIn")
end

function Q1502817Trigger:LightUpTriggerIn()
    print("Q1502817Trigger - LightUpTriggerIn")
end

function Q1502817Trigger:TriggerOut()
    print("Q1502817Trigger - TriggerOut")
end

return Q1502817Trigger
