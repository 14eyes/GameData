require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600422Trigger = class("Q1600422Trigger", GadgetActorProxy)
Q1600422Trigger.defaultAlias = "Q1600422Trigger"
local Q16004ClientConfig = require("Quest/Client/Q16004ClientConfig")

local this
local subIDs = Q16004ClientConfig.SubIDs
local datas = Q16004ClientConfig.Datas
local npcs = Q16004ClientConfig.Npcs
local points = Q16004ClientConfig.Points

function Q1600422Trigger:OnPostDataPrepare()
    print("Q1600422Trigger - OnPostDataPrepare")
    this = self
end

function Q1600422Trigger:OnPostComponentPrepare()
    print("Q1600422Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16004)
end

function Q1600422Trigger:TriggerIn()
    print("Q1600422Trigger - TriggerIn")
    actorMgr:GetActor("16004"):TransmitPlayerWithQuestIdByData(1600422, 1, datas.TransmitData_ToBoss1, nil, nil, nil)
end

function Q1600422Trigger:PreTriggerIn()
    print("Q1600422Trigger - PreTriggerIn")
end

function Q1600422Trigger:LightUpTriggerIn()
    print("Q1600422Trigger - LightUpTriggerIn")
end

function Q1600422Trigger:TriggerOut()
    print("Q1600422Trigger - TriggerOut")
end

return Q1600422Trigger
