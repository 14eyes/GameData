require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602335Trigger = class("Q602335Trigger", GadgetActorProxy)
Q602335Trigger.defaultAlias = "Q602335Trigger"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602335Trigger:OnPostDataPrepare()
    print("Q602335Trigger - OnPostDataPrepare")
    this = self
end

function Q602335Trigger:OnPostComponentPrepare()
    print("Q602335Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602335Trigger:TriggerIn()
    print("Q602335Trigger - TriggerIn")
end

function Q602335Trigger:PreTriggerIn()
    print("Q602335Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602335)
    this:DestroySelf()
end

function Q602335Trigger:LightUpTriggerIn()
    print("Q602335Trigger - LightUpTriggerIn")
end

function Q602335Trigger:TriggerOut()
    print("Q602335Trigger - TriggerOut")
end

return Q602335Trigger
