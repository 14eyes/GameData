require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600408Trigger = class("Q1600408Trigger", GadgetActorProxy)
Q1600408Trigger.defaultAlias = "Q1600408Trigger"
local Q16004ClientConfig = require("Quest/Client/Q16004ClientConfig")

local this
local subIDs = Q16004ClientConfig.SubIDs
local datas = Q16004ClientConfig.Datas
local npcs = Q16004ClientConfig.Npcs
local points = Q16004ClientConfig.Points

function Q1600408Trigger:OnPostDataPrepare()
    print("Q1600408Trigger - OnPostDataPrepare")
    this = self
end

function Q1600408Trigger:OnPostComponentPrepare()
    print("Q1600408Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16004)
end

function Q1600408Trigger:TriggerIn()
    print("Q1600408Trigger - TriggerIn")
end

function Q1600408Trigger:PreTriggerIn()
    print("Q1600408Trigger - PreTriggerIn")
    actorMgr:GetActor("16004"):TransmitPlayerWithQuestIdByData(1600408, 1, datas.TransmitData_ToBoss1, nil, nil, nil)
end

function Q1600408Trigger:LightUpTriggerIn()
    print("Q1600408Trigger - LightUpTriggerIn")
end

function Q1600408Trigger:TriggerOut()
    print("Q1600408Trigger - TriggerOut")
end

return Q1600408Trigger
