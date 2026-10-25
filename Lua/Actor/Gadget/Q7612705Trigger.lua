require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612705Trigger = class("Q7612705Trigger", GadgetActorProxy)
Q7612705Trigger.defaultAlias = "Q7612705Trigger"
local Q76127ClientConfig = require("Quest/Client/Q76127ClientConfig")

local this
local subIDs = Q76127ClientConfig.SubIDs
local datas = Q76127ClientConfig.Datas
local npcs = Q76127ClientConfig.Npcs
local points = Q76127ClientConfig.Points

function Q7612705Trigger:OnPostDataPrepare()
    print("Q7612705Trigger - OnPostDataPrepare")
    this = self
end

function Q7612705Trigger:OnPostComponentPrepare()
    print("Q7612705Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(100, 150, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76127)
end

function Q7612705Trigger:TriggerIn()
    print("Q7612705Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7612705)
    actorUtils.FinishQuestID(false, 7612730)
    this:DestroySelf()
end

function Q7612705Trigger:PreTriggerIn()
    print("Q7612705Trigger - PreTriggerIn")
end

function Q7612705Trigger:LightUpTriggerIn()
    print("Q7612705Trigger - LightUpTriggerIn")
end

function Q7612705Trigger:TriggerOut()
    print("Q7612705Trigger - TriggerOut")
end

return Q7612705Trigger
