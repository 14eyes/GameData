require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602236Trigger = class("Q602236Trigger", GadgetActorProxy)
Q602236Trigger.defaultAlias = "Q602236Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602236Trigger:OnPostDataPrepare()
    print("Q602236Trigger - OnPostDataPrepare")
    this = self
end

function Q602236Trigger:OnPostComponentPrepare()
    print("Q602236Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602236Trigger:TriggerIn()
    print("Q602236Trigger - TriggerIn")
end

function Q602236Trigger:PreTriggerIn()
    print("Q602236Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602236)
    this:DestroySelf()
end

function Q602236Trigger:LightUpTriggerIn()
    print("Q602236Trigger - LightUpTriggerIn")
end

function Q602236Trigger:TriggerOut()
    print("Q602236Trigger - TriggerOut")
end

return Q602236Trigger
