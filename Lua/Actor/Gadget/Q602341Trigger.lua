require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602341Trigger = class("Q602341Trigger", GadgetActorProxy)
Q602341Trigger.defaultAlias = "Q602341Trigger"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602341Trigger:OnPostDataPrepare()
    print("Q602341Trigger - OnPostDataPrepare")
    this = self
end

function Q602341Trigger:OnPostComponentPrepare()
    print("Q602341Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602341Trigger:TriggerIn()
    print("Q602341Trigger - TriggerIn")
end

function Q602341Trigger:PreTriggerIn()
    print("Q602341Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602341)
    this:DestroySelf()
end

function Q602341Trigger:LightUpTriggerIn()
    print("Q602341Trigger - LightUpTriggerIn")
end

function Q602341Trigger:TriggerOut()
    print("Q602341Trigger - TriggerOut")
end

return Q602341Trigger
