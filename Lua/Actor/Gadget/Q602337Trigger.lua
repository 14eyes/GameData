require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602337Trigger = class("Q602337Trigger", GadgetActorProxy)
Q602337Trigger.defaultAlias = "Q602337Trigger"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602337Trigger:OnPostDataPrepare()
    print("Q602337Trigger - OnPostDataPrepare")
    this = self
end

function Q602337Trigger:OnPostComponentPrepare()
    print("Q602337Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602337Trigger:TriggerIn()
    print("Q602337Trigger - TriggerIn")
end

function Q602337Trigger:PreTriggerIn()
    print("Q602337Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602337)
    this:DestroySelf()
end

function Q602337Trigger:LightUpTriggerIn()
    print("Q602337Trigger - LightUpTriggerIn")
end

function Q602337Trigger:TriggerOut()
    print("Q602337Trigger - TriggerOut")
end

return Q602337Trigger
