require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600311Trigger = class("Q1600311Trigger", GadgetActorProxy)
Q1600311Trigger.defaultAlias = "Q1600311Trigger"
local Q16003ClientConfig = require("Quest/Client/Q16003ClientConfig")

local this
local subIDs = Q16003ClientConfig.SubIDs
local datas = Q16003ClientConfig.Datas
local npcs = Q16003ClientConfig.Npcs
local points = Q16003ClientConfig.Points

function Q1600311Trigger:OnPostDataPrepare()
    print("Q1600311Trigger - OnPostDataPrepare")
    this = self
end

function Q1600311Trigger:OnPostComponentPrepare()
    print("Q1600311Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16003)
end

function Q1600311Trigger:TriggerIn()
    print("Q1600311Trigger - TriggerIn")
end

function Q1600311Trigger:PreTriggerIn()
    print("Q1600311Trigger - PreTriggerIn")
    actorMgr:GetActor("16003"):TransmitPlayerWithQuestIdByData(1600311, 1, datas.TransmitData_FromOutdoors, nil, nil, nil)
end

function Q1600311Trigger:LightUpTriggerIn()
    print("Q1600311Trigger - LightUpTriggerIn")
end

function Q1600311Trigger:TriggerOut()
    print("Q1600311Trigger - TriggerOut")
end

return Q1600311Trigger
