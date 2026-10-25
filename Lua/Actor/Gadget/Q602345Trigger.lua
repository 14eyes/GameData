require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602345Trigger = class("Q602345Trigger", GadgetActorProxy)
Q602345Trigger.defaultAlias = "Q602345Trigger"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602345Trigger:OnPostDataPrepare()
    print("Q602345Trigger - OnPostDataPrepare")
    this = self
end

function Q602345Trigger:OnPostComponentPrepare()
    print("Q602345Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50.70967, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602345Trigger:TriggerIn()
    print("Q602345Trigger - TriggerIn")
end

function Q602345Trigger:PreTriggerIn()
    print("Q602345Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602345)
    this:DestroySelf()
end

function Q602345Trigger:LightUpTriggerIn()
    print("Q602345Trigger - LightUpTriggerIn")
end

function Q602345Trigger:TriggerOut()
    print("Q602345Trigger - TriggerOut")
end

return Q602345Trigger
