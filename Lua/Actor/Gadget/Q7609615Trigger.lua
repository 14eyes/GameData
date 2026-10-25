require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609615Trigger = class("Q7609615Trigger", GadgetActorProxy)
Q7609615Trigger.defaultAlias = "Q7609615Trigger"
local Q76096ClientConfig = require("Quest/Client/Q76096ClientConfig")

local this
local subIDs = Q76096ClientConfig.SubIDs
local datas = Q76096ClientConfig.Datas
local npcs = Q76096ClientConfig.Npcs
local points = Q76096ClientConfig.Points

function Q7609615Trigger:OnPostDataPrepare()
    print("Q7609615Trigger - OnPostDataPrepare")
    this = self
end

function Q7609615Trigger:OnPostComponentPrepare()
    print("Q7609615Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(70, 160, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76096)
end

function Q7609615Trigger:TriggerIn()
    print("Q7609615Trigger - TriggerIn")
end

function Q7609615Trigger:PreTriggerIn()
    print("Q7609615Trigger - PreTriggerIn")
end

function Q7609615Trigger:LightUpTriggerIn()
    print("Q7609615Trigger - LightUpTriggerIn")
end

function Q7609615Trigger:TriggerOut()
    print("Q7609615Trigger - TriggerOut")
    actorUtils.FinishQuestID(true, 7609615)
    this:DestroySelf()
end

return Q7609615Trigger
