require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600420Trigger = class("Q1600420Trigger", GadgetActorProxy)
Q1600420Trigger.defaultAlias = "Q1600420Trigger"
local Q16004ClientConfig = require("Quest/Client/Q16004ClientConfig")

local this
local subIDs = Q16004ClientConfig.SubIDs
local datas = Q16004ClientConfig.Datas
local npcs = Q16004ClientConfig.Npcs
local points = Q16004ClientConfig.Points

function Q1600420Trigger:OnPostDataPrepare()
    print("Q1600420Trigger - OnPostDataPrepare")
    this = self
end

function Q1600420Trigger:OnPostComponentPrepare()
    print("Q1600420Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16004)
end

function Q1600420Trigger:TriggerIn()
    print("Q1600420Trigger - TriggerIn")
    actorMgr:GetActor("16004"):TransmitPlayerWithQuestIdByData(1600420, 1, datas.TransmitData_ToCastle1, nil, nil, nil)
end

function Q1600420Trigger:PreTriggerIn()
    print("Q1600420Trigger - PreTriggerIn")
end

function Q1600420Trigger:LightUpTriggerIn()
    print("Q1600420Trigger - LightUpTriggerIn")
end

function Q1600420Trigger:TriggerOut()
    print("Q1600420Trigger - TriggerOut")
end

return Q1600420Trigger
