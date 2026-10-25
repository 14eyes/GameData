require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602336Trigger = class("Q602336Trigger", GadgetActorProxy)
Q602336Trigger.defaultAlias = "Q602336Trigger"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602336Trigger:OnPostDataPrepare()
    print("Q602336Trigger - OnPostDataPrepare")
    this = self
end

function Q602336Trigger:OnPostComponentPrepare()
    print("Q602336Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10.660165, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602336Trigger:TriggerIn()
    print("Q602336Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 602336)
    this:DestroySelf()
end

function Q602336Trigger:PreTriggerIn()
    print("Q602336Trigger - PreTriggerIn")
end

function Q602336Trigger:LightUpTriggerIn()
    print("Q602336Trigger - LightUpTriggerIn")
end

function Q602336Trigger:TriggerOut()
    print("Q602336Trigger - TriggerOut")
end

return Q602336Trigger
