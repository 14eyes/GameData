require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600212Trigger = class("Q1600212Trigger", GadgetActorProxy)
Q1600212Trigger.defaultAlias = "Q1600212Trigger"
local Q16002ClientConfig = require("Quest/Client/Q16002ClientConfig")

local this
local subIDs = Q16002ClientConfig.SubIDs
local datas = Q16002ClientConfig.Datas
local npcs = Q16002ClientConfig.Npcs
local points = Q16002ClientConfig.Points

function Q1600212Trigger:OnPostDataPrepare()
    print("Q1600212Trigger - OnPostDataPrepare")
    this = self
end

function Q1600212Trigger:OnPostComponentPrepare()
    print("Q1600212Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16002)
end

function Q1600212Trigger:TriggerIn()
    print("Q1600212Trigger - TriggerIn")
end

function Q1600212Trigger:PreTriggerIn()
    print("Q1600212Trigger - PreTriggerIn")
    actorMgr:GetActor("16002"):TransmitPlayerWithQuestIdByData(1600212, 1, datas.TransmitData_FromCastle, nil, nil, nil)
end

function Q1600212Trigger:LightUpTriggerIn()
    print("Q1600212Trigger - LightUpTriggerIn")
end

function Q1600212Trigger:TriggerOut()
    print("Q1600212Trigger - TriggerOut")
end

return Q1600212Trigger
