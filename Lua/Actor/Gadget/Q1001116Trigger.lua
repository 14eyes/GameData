require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1001116Trigger = class("Q1001116Trigger", GadgetActorProxy)
Q1001116Trigger.defaultAlias = "Q1001116Trigger"
local Q10011ClientConfig = require("Quest/Client/Q10011ClientConfig")

local this
local subIDs = Q10011ClientConfig.SubIDs
local datas = Q10011ClientConfig.Datas
local npcs = Q10011ClientConfig.Npcs
local points = Q10011ClientConfig.Points

function Q1001116Trigger:OnPostDataPrepare()
    print("Q1001116Trigger - OnPostDataPrepare")
    this = self
end

function Q1001116Trigger:OnPostComponentPrepare()
    print("Q1001116Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10011)
end

function Q1001116Trigger:TriggerIn()
    print("Q1001116Trigger - TriggerIn")
    actorMgr:GetActor("10011"):TransmitPlayerWithQuestIdByData(1001116, 1, datas.TransmitData_1001116, nil, nil, nil)
end

function Q1001116Trigger:PreTriggerIn()
    print("Q1001116Trigger - PreTriggerIn")
end

function Q1001116Trigger:LightUpTriggerIn()
    print("Q1001116Trigger - LightUpTriggerIn")
end

function Q1001116Trigger:TriggerOut()
    print("Q1001116Trigger - TriggerOut")
end

return Q1001116Trigger
