require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710209Trigger = class("Q7710209Trigger", GadgetActorProxy)
Q7710209Trigger.defaultAlias = "Q7710209Trigger"
local Q77102ClientConfig = require("Quest/Client/Q77102ClientConfig")

local this
local subIDs = Q77102ClientConfig.SubIDs
local datas = Q77102ClientConfig.Datas
local npcs = Q77102ClientConfig.Npcs
local points = Q77102ClientConfig.Points

function Q7710209Trigger:OnPostDataPrepare()
    print("Q7710209Trigger - OnPostDataPrepare")
    this = self
end

function Q7710209Trigger:OnPostComponentPrepare()
    print("Q7710209Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(5, 5, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77102)
end

function Q7710209Trigger:TriggerIn()
    print("Q7710209Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710209)
    this:DestroySelf()
end

function Q7710209Trigger:PreTriggerIn()
    print("Q7710209Trigger - PreTriggerIn")
end

function Q7710209Trigger:LightUpTriggerIn()
    print("Q7710209Trigger - LightUpTriggerIn")
end

function Q7710209Trigger:TriggerOut()
    print("Q7710209Trigger - TriggerOut")
end

return Q7710209Trigger
