require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710216Trigger = class("Q7710216Trigger", GadgetActorProxy)
Q7710216Trigger.defaultAlias = "Q7710216Trigger"
local Q77102ClientConfig = require("Quest/Client/Q77102ClientConfig")

local this
local subIDs = Q77102ClientConfig.SubIDs
local datas = Q77102ClientConfig.Datas
local npcs = Q77102ClientConfig.Npcs
local points = Q77102ClientConfig.Points

function Q7710216Trigger:OnPostDataPrepare()
    print("Q7710216Trigger - OnPostDataPrepare")
    this = self
end

function Q7710216Trigger:OnPostComponentPrepare()
    print("Q7710216Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(5, 5, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77102)
end

function Q7710216Trigger:TriggerIn()
    print("Q7710216Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710216)
    this:DestroySelf()
end

function Q7710216Trigger:PreTriggerIn()
    print("Q7710216Trigger - PreTriggerIn")
end

function Q7710216Trigger:LightUpTriggerIn()
    print("Q7710216Trigger - LightUpTriggerIn")
end

function Q7710216Trigger:TriggerOut()
    print("Q7710216Trigger - TriggerOut")
end

return Q7710216Trigger
