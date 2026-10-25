require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602319Trigger = class("Q602319Trigger", GadgetActorProxy)
Q602319Trigger.defaultAlias = "Q602319Trigger"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602319Trigger:OnPostDataPrepare()
    print("Q602319Trigger - OnPostDataPrepare")
    this = self
end

function Q602319Trigger:OnPostComponentPrepare()
    print("Q602319Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602319Trigger:TriggerIn()
    print("Q602319Trigger - TriggerIn")
end

function Q602319Trigger:PreTriggerIn()
    print("Q602319Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602319)
    this:DestroySelf()
end

function Q602319Trigger:LightUpTriggerIn()
    print("Q602319Trigger - LightUpTriggerIn")
end

function Q602319Trigger:TriggerOut()
    print("Q602319Trigger - TriggerOut")
end

return Q602319Trigger
