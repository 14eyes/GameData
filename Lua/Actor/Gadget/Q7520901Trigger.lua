require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7520901Trigger = class("Q7520901Trigger", GadgetActorProxy)
Q7520901Trigger.defaultAlias = "Q7520901Trigger"
local Q75209ClientConfig = require("Quest/Client/Q75209ClientConfig")

local this
local subIDs = Q75209ClientConfig.SubIDs
local datas = Q75209ClientConfig.Datas
local npcs = Q75209ClientConfig.Npcs
local points = Q75209ClientConfig.Points

function Q7520901Trigger:OnPostDataPrepare()
    print("Q7520901Trigger - OnPostDataPrepare")
    this = self
end

function Q7520901Trigger:OnPostComponentPrepare()
    print("Q7520901Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75209)
end

function Q7520901Trigger:TriggerIn()
    print("Q7520901Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7520901)
    this:DestroySelf()
end

function Q7520901Trigger:PreTriggerIn()
    print("Q7520901Trigger - PreTriggerIn")
end

function Q7520901Trigger:LightUpTriggerIn()
    print("Q7520901Trigger - LightUpTriggerIn")
end

function Q7520901Trigger:TriggerOut()
    print("Q7520901Trigger - TriggerOut")
end

return Q7520901Trigger
