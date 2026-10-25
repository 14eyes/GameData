require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1204708Trigger = class("Q1204708Trigger", GadgetActorProxy)
Q1204708Trigger.defaultAlias = "Q1204708Trigger"
local Q12047ClientConfig = require("Quest/Client/Q12047ClientConfig")

local this
local subIDs = Q12047ClientConfig.SubIDs
local datas = Q12047ClientConfig.Datas
local npcs = Q12047ClientConfig.Npcs
local points = Q12047ClientConfig.Points

function Q1204708Trigger:OnPostDataPrepare()
    print("Q1204708Trigger - OnPostDataPrepare")
    this = self
end

function Q1204708Trigger:OnPostComponentPrepare()
    print("Q1204708Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 12047)
end

function Q1204708Trigger:TriggerIn()
    print("Q1204708Trigger - TriggerIn")
    actorMgr:GetActor("12047"):TransmitPlayerWithQuestIdByData(1204708, 7, datas.TransmitData01, nil, nil, nil)
    this:DestroySelf()
end

function Q1204708Trigger:PreTriggerIn()
    print("Q1204708Trigger - PreTriggerIn")
end

function Q1204708Trigger:LightUpTriggerIn()
    print("Q1204708Trigger - LightUpTriggerIn")
end

function Q1204708Trigger:TriggerOut()
    print("Q1204708Trigger - TriggerOut")
end

return Q1204708Trigger
