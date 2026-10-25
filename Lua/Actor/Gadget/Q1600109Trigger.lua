require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600109Trigger = class("Q1600109Trigger", GadgetActorProxy)
Q1600109Trigger.defaultAlias = "Q1600109Trigger"
local Q16001ClientConfig = require("Quest/Client/Q16001ClientConfig")

local this
local subIDs = Q16001ClientConfig.SubIDs
local datas = Q16001ClientConfig.Datas
local npcs = Q16001ClientConfig.Npcs
local points = Q16001ClientConfig.Points

function Q1600109Trigger:OnPostDataPrepare()
    print("Q1600109Trigger - OnPostDataPrepare")
    this = self
end

function Q1600109Trigger:OnPostComponentPrepare()
    print("Q1600109Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16001)
end

function Q1600109Trigger:TriggerIn()
    print("Q1600109Trigger - TriggerIn")
end

function Q1600109Trigger:PreTriggerIn()
    print("Q1600109Trigger - PreTriggerIn")
    actorMgr:GetActor("16001"):TransmitPlayerWithQuestIdByData(1600109, 1, datas.TransmitData_FromParty, nil, nil, nil)
end

function Q1600109Trigger:LightUpTriggerIn()
    print("Q1600109Trigger - LightUpTriggerIn")
end

function Q1600109Trigger:TriggerOut()
    print("Q1600109Trigger - TriggerOut")
end

return Q1600109Trigger
