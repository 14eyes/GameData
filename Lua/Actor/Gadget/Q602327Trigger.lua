require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602327Trigger = class("Q602327Trigger", GadgetActorProxy)
Q602327Trigger.defaultAlias = "Q602327Trigger"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602327Trigger:OnPostDataPrepare()
    print("Q602327Trigger - OnPostDataPrepare")
    this = self
end

function Q602327Trigger:OnPostComponentPrepare()
    print("Q602327Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602327Trigger:TriggerIn()
    print("Q602327Trigger - TriggerIn")
end

function Q602327Trigger:PreTriggerIn()
    print("Q602327Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602327)
    this:DestroySelf()
end

function Q602327Trigger:LightUpTriggerIn()
    print("Q602327Trigger - LightUpTriggerIn")
end

function Q602327Trigger:TriggerOut()
    print("Q602327Trigger - TriggerOut")
end

return Q602327Trigger
