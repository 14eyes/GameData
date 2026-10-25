require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504306Trigger = class("Q1504306Trigger", GadgetActorProxy)
Q1504306Trigger.defaultAlias = "Q1504306Trigger"
local Q15043ClientConfig = require("Quest/Client/Q15043ClientConfig")

local this
local subIDs = Q15043ClientConfig.SubIDs
local datas = Q15043ClientConfig.Datas
local npcs = Q15043ClientConfig.Npcs
local points = Q15043ClientConfig.Points

function Q1504306Trigger:OnPostDataPrepare()
    print("Q1504306Trigger - OnPostDataPrepare")
    this = self
end

function Q1504306Trigger:OnPostComponentPrepare()
    print("Q1504306Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(103.551704, 79.37927, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15043)
end

function Q1504306Trigger:TriggerIn()
    print("Q1504306Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1504306)
    this:DestroySelf()
end

function Q1504306Trigger:PreTriggerIn()
    print("Q1504306Trigger - PreTriggerIn")
end

function Q1504306Trigger:LightUpTriggerIn()
    print("Q1504306Trigger - LightUpTriggerIn")
end

function Q1504306Trigger:TriggerOut()
    print("Q1504306Trigger - TriggerOut")
end

return Q1504306Trigger
