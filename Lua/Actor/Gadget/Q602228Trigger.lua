require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602228Trigger = class("Q602228Trigger", GadgetActorProxy)
Q602228Trigger.defaultAlias = "Q602228Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602228Trigger:OnPostDataPrepare()
    print("Q602228Trigger - OnPostDataPrepare")
    this = self
end

function Q602228Trigger:OnPostComponentPrepare()
    print("Q602228Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602228Trigger:TriggerIn()
    print("Q602228Trigger - TriggerIn")
end

function Q602228Trigger:PreTriggerIn()
    print("Q602228Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602228)
    this:DestroySelf()
end

function Q602228Trigger:LightUpTriggerIn()
    print("Q602228Trigger - LightUpTriggerIn")
end

function Q602228Trigger:TriggerOut()
    print("Q602228Trigger - TriggerOut")
end

return Q602228Trigger
