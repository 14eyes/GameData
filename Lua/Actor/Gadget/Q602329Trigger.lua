require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602329Trigger = class("Q602329Trigger", GadgetActorProxy)
Q602329Trigger.defaultAlias = "Q602329Trigger"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602329Trigger:OnPostDataPrepare()
    print("Q602329Trigger - OnPostDataPrepare")
    this = self
end

function Q602329Trigger:OnPostComponentPrepare()
    print("Q602329Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602329Trigger:TriggerIn()
    print("Q602329Trigger - TriggerIn")
end

function Q602329Trigger:PreTriggerIn()
    print("Q602329Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602329)
    this:DestroySelf()
end

function Q602329Trigger:LightUpTriggerIn()
    print("Q602329Trigger - LightUpTriggerIn")
end

function Q602329Trigger:TriggerOut()
    print("Q602329Trigger - TriggerOut")
end

return Q602329Trigger
