require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7701434Trigger = class("Q7701434Trigger", GadgetActorProxy)
Q7701434Trigger.defaultAlias = "Q7701434Trigger"
local Q77014ClientConfig = require("Quest/Client/Q77014ClientConfig")

local this
local subIDs = Q77014ClientConfig.SubIDs
local datas = Q77014ClientConfig.Datas
local npcs = Q77014ClientConfig.Npcs
local points = Q77014ClientConfig.Points

function Q7701434Trigger:OnPostDataPrepare()
    print("Q7701434Trigger - OnPostDataPrepare")
    this = self
end

function Q7701434Trigger:OnPostComponentPrepare()
    print("Q7701434Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77014)
end

function Q7701434Trigger:TriggerIn()
    print("Q7701434Trigger - TriggerIn")
    actorMgr:GetActor("77014"):TransmitPlayerWithQuestIdByData(7701434, 1, datas.TransmitData_Black, nil, nil, nil)
end

function Q7701434Trigger:PreTriggerIn()
    print("Q7701434Trigger - PreTriggerIn")
end

function Q7701434Trigger:LightUpTriggerIn()
    print("Q7701434Trigger - LightUpTriggerIn")
end

function Q7701434Trigger:TriggerOut()
    print("Q7701434Trigger - TriggerOut")
end

return Q7701434Trigger
