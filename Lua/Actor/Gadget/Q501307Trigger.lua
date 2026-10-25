require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501307Trigger = class("Q501307Trigger", GadgetActorProxy)
Q501307Trigger.defaultAlias = "Q501307Trigger"
local Q5013ClientConfig = require("Quest/Client/Q5013ClientConfig")

local this
local subIDs = Q5013ClientConfig.SubIDs
local datas = Q5013ClientConfig.Datas
local npcs = Q5013ClientConfig.Npcs
local points = Q5013ClientConfig.Points

function Q501307Trigger:OnPostDataPrepare()
    print("Q501307Trigger - OnPostDataPrepare")
    this = self
end

function Q501307Trigger:OnPostComponentPrepare()
    print("Q501307Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(85, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5013)
end

function Q501307Trigger:TriggerIn()
    print("Q501307Trigger - TriggerIn")
    actorMgr:GetActor("5013"):PlayCutsceneIndex(50130801, nil, nil, nil, false)
    actorMgr:GetActor("5013"):NatsaurusVehicleOff()
    this:DestroySelf()
end

function Q501307Trigger:PreTriggerIn()
    print("Q501307Trigger - PreTriggerIn")
end

function Q501307Trigger:LightUpTriggerIn()
    print("Q501307Trigger - LightUpTriggerIn")
end

function Q501307Trigger:TriggerOut()
    print("Q501307Trigger - TriggerOut")
end

return Q501307Trigger
