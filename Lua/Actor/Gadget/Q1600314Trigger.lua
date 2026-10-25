require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600314Trigger = class("Q1600314Trigger", GadgetActorProxy)
Q1600314Trigger.defaultAlias = "Q1600314Trigger"
local Q16003ClientConfig = require("Quest/Client/Q16003ClientConfig")

local this
local subIDs = Q16003ClientConfig.SubIDs
local datas = Q16003ClientConfig.Datas
local npcs = Q16003ClientConfig.Npcs
local points = Q16003ClientConfig.Points

function Q1600314Trigger:OnPostDataPrepare()
    print("Q1600314Trigger - OnPostDataPrepare")
    this = self
end

function Q1600314Trigger:OnPostComponentPrepare()
    print("Q1600314Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16003)
end

function Q1600314Trigger:TriggerIn()
    print("Q1600314Trigger - TriggerIn")
    actorMgr:GetActor("16003"):TransmitPlayerWithQuestIdByData(1600314, 1, datas.TransmitData_ToCastle, nil, nil, nil)
end

function Q1600314Trigger:PreTriggerIn()
    print("Q1600314Trigger - PreTriggerIn")
end

function Q1600314Trigger:LightUpTriggerIn()
    print("Q1600314Trigger - LightUpTriggerIn")
end

function Q1600314Trigger:TriggerOut()
    print("Q1600314Trigger - TriggerOut")
end

return Q1600314Trigger
