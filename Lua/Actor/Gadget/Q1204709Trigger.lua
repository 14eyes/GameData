require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1204709Trigger = class("Q1204709Trigger", GadgetActorProxy)
Q1204709Trigger.defaultAlias = "Q1204709Trigger"
local Q12047ClientConfig = require("Quest/Client/Q12047ClientConfig")

local this
local subIDs = Q12047ClientConfig.SubIDs
local datas = Q12047ClientConfig.Datas
local npcs = Q12047ClientConfig.Npcs
local points = Q12047ClientConfig.Points

function Q1204709Trigger:OnPostDataPrepare()
    print("Q1204709Trigger - OnPostDataPrepare")
    this = self
end

function Q1204709Trigger:OnPostComponentPrepare()
    print("Q1204709Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 12047)
end

function Q1204709Trigger:TriggerIn()
    print("Q1204709Trigger - TriggerIn")
    actorMgr:GetActor("12047"):TransmitPlayerWithQuestIdByData(1204709, 8, datas.TransmitData01, nil, nil, nil)
    this:DestroySelf()
end

function Q1204709Trigger:PreTriggerIn()
    print("Q1204709Trigger - PreTriggerIn")
end

function Q1204709Trigger:LightUpTriggerIn()
    print("Q1204709Trigger - LightUpTriggerIn")
end

function Q1204709Trigger:TriggerOut()
    print("Q1204709Trigger - TriggerOut")
end

return Q1204709Trigger
