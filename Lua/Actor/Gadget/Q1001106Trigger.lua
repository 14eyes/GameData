require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1001106Trigger = class("Q1001106Trigger", GadgetActorProxy)
Q1001106Trigger.defaultAlias = "Q1001106Trigger"
local Q10011ClientConfig = require("Quest/Client/Q10011ClientConfig")

local this
local subIDs = Q10011ClientConfig.SubIDs
local datas = Q10011ClientConfig.Datas
local npcs = Q10011ClientConfig.Npcs
local points = Q10011ClientConfig.Points

function Q1001106Trigger:OnPostDataPrepare()
    print("Q1001106Trigger - OnPostDataPrepare")
    this = self
end

function Q1001106Trigger:OnPostComponentPrepare()
    print("Q1001106Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10011)
end

function Q1001106Trigger:TriggerIn()
    print("Q1001106Trigger - TriggerIn")
    actorMgr:GetActor("10011"):TransmitPlayerWithQuestIdByData(1001117, 1, datas.TransmitData_1001117, nil, nil, nil)
end

function Q1001106Trigger:PreTriggerIn()
    print("Q1001106Trigger - PreTriggerIn")
end

function Q1001106Trigger:LightUpTriggerIn()
    print("Q1001106Trigger - LightUpTriggerIn")
end

function Q1001106Trigger:TriggerOut()
    print("Q1001106Trigger - TriggerOut")
end

return Q1001106Trigger
