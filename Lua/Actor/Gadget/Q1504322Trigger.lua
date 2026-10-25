require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504322Trigger = class("Q1504322Trigger", GadgetActorProxy)
Q1504322Trigger.defaultAlias = "Q1504322Trigger"
local Q15043ClientConfig = require("Quest/Client/Q15043ClientConfig")

local this
local subIDs = Q15043ClientConfig.SubIDs
local datas = Q15043ClientConfig.Datas
local npcs = Q15043ClientConfig.Npcs
local points = Q15043ClientConfig.Points

function Q1504322Trigger:OnPostDataPrepare()
    print("Q1504322Trigger - OnPostDataPrepare")
    this = self
end

function Q1504322Trigger:OnPostComponentPrepare()
    print("Q1504322Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(15, 4.7117257, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15043)
end

function Q1504322Trigger:TriggerIn()
    print("Q1504322Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1504322)
    this:DestroySelf()
end

function Q1504322Trigger:PreTriggerIn()
    print("Q1504322Trigger - PreTriggerIn")
end

function Q1504322Trigger:LightUpTriggerIn()
    print("Q1504322Trigger - LightUpTriggerIn")
end

function Q1504322Trigger:TriggerOut()
    print("Q1504322Trigger - TriggerOut")
end

return Q1504322Trigger
