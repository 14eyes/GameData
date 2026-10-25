require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602203Trigger = class("Q602203Trigger", GadgetActorProxy)
Q602203Trigger.defaultAlias = "Q602203Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602203Trigger:OnPostDataPrepare()
    print("Q602203Trigger - OnPostDataPrepare")
    this = self
end

function Q602203Trigger:OnPostComponentPrepare()
    print("Q602203Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602203Trigger:TriggerIn()
    print("Q602203Trigger - TriggerIn")
end

function Q602203Trigger:PreTriggerIn()
    print("Q602203Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602203)
    this:DestroySelf()
end

function Q602203Trigger:LightUpTriggerIn()
    print("Q602203Trigger - LightUpTriggerIn")
end

function Q602203Trigger:TriggerOut()
    print("Q602203Trigger - TriggerOut")
end

return Q602203Trigger
