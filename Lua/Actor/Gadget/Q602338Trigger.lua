require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602338Trigger = class("Q602338Trigger", GadgetActorProxy)
Q602338Trigger.defaultAlias = "Q602338Trigger"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602338Trigger:OnPostDataPrepare()
    print("Q602338Trigger - OnPostDataPrepare")
    this = self
end

function Q602338Trigger:OnPostComponentPrepare()
    print("Q602338Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602338Trigger:TriggerIn()
    print("Q602338Trigger - TriggerIn")
end

function Q602338Trigger:PreTriggerIn()
    print("Q602338Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602338)
    this:DestroySelf()
end

function Q602338Trigger:LightUpTriggerIn()
    print("Q602338Trigger - LightUpTriggerIn")
end

function Q602338Trigger:TriggerOut()
    print("Q602338Trigger - TriggerOut")
end

return Q602338Trigger
