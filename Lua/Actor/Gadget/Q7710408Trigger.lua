require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710408Trigger = class("Q7710408Trigger", GadgetActorProxy)
Q7710408Trigger.defaultAlias = "Q7710408Trigger"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710408Trigger:OnPostDataPrepare()
    print("Q7710408Trigger - OnPostDataPrepare")
    this = self
end

function Q7710408Trigger:OnPostComponentPrepare()
    print("Q7710408Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710408Trigger:TriggerIn()
    print("Q7710408Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710408)
    this:DestroySelf()
end

function Q7710408Trigger:PreTriggerIn()
    print("Q7710408Trigger - PreTriggerIn")
end

function Q7710408Trigger:LightUpTriggerIn()
    print("Q7710408Trigger - LightUpTriggerIn")
end

function Q7710408Trigger:TriggerOut()
    print("Q7710408Trigger - TriggerOut")
end

return Q7710408Trigger
