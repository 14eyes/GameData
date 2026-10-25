require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600317Trigger = class("Q1600317Trigger", GadgetActorProxy)
Q1600317Trigger.defaultAlias = "Q1600317Trigger"
local Q16003ClientConfig = require("Quest/Client/Q16003ClientConfig")

local this
local subIDs = Q16003ClientConfig.SubIDs
local datas = Q16003ClientConfig.Datas
local npcs = Q16003ClientConfig.Npcs
local points = Q16003ClientConfig.Points

function Q1600317Trigger:OnPostDataPrepare()
    print("Q1600317Trigger - OnPostDataPrepare")
    this = self
end

function Q1600317Trigger:OnPostComponentPrepare()
    print("Q1600317Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16003)
end

function Q1600317Trigger:TriggerIn()
    print("Q1600317Trigger - TriggerIn")
    actorMgr:GetActor("16003"):TransmitPlayerWithQuestIdByData(1600317, 1, datas.TransmitData_ToBoss, nil, nil, nil)
end

function Q1600317Trigger:PreTriggerIn()
    print("Q1600317Trigger - PreTriggerIn")
end

function Q1600317Trigger:LightUpTriggerIn()
    print("Q1600317Trigger - LightUpTriggerIn")
end

function Q1600317Trigger:TriggerOut()
    print("Q1600317Trigger - TriggerOut")
end

return Q1600317Trigger
