require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1404505Trigger = class("Q1404505Trigger", GadgetActorProxy)
Q1404505Trigger.defaultAlias = "Q1404505Trigger"
local Q14045ClientConfig = require("Quest/Client/Q14045ClientConfig")

local this
local subIDs = Q14045ClientConfig.SubIDs
local datas = Q14045ClientConfig.Datas
local npcs = Q14045ClientConfig.Npcs
local points = Q14045ClientConfig.Points

function Q1404505Trigger:OnPostDataPrepare()
    print("Q1404505Trigger - OnPostDataPrepare")
    this = self
end

function Q1404505Trigger:OnPostComponentPrepare()
    print("Q1404505Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(300, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14045)
end

function Q1404505Trigger:TriggerIn()
    print("Q1404505Trigger - TriggerIn")
    actorMgr:GetActor("14045"):TransmitPlayerByQuestId(1404505, 1, nil, nil, nil)
    this:DestroySelf()
end

function Q1404505Trigger:PreTriggerIn()
    print("Q1404505Trigger - PreTriggerIn")
end

function Q1404505Trigger:LightUpTriggerIn()
    print("Q1404505Trigger - LightUpTriggerIn")
end

function Q1404505Trigger:TriggerOut()
    print("Q1404505Trigger - TriggerOut")
end

return Q1404505Trigger
