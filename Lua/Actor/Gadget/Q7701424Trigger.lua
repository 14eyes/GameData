require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7701424Trigger = class("Q7701424Trigger", GadgetActorProxy)
Q7701424Trigger.defaultAlias = "Q7701424Trigger"
local Q77014ClientConfig = require("Quest/Client/Q77014ClientConfig")

local this
local subIDs = Q77014ClientConfig.SubIDs
local datas = Q77014ClientConfig.Datas
local npcs = Q77014ClientConfig.Npcs
local points = Q77014ClientConfig.Points

function Q7701424Trigger:OnPostDataPrepare()
    print("Q7701424Trigger - OnPostDataPrepare")
    this = self
end

function Q7701424Trigger:OnPostComponentPrepare()
    print("Q7701424Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77014)
end

function Q7701424Trigger:TriggerIn()
    print("Q7701424Trigger - TriggerIn")
    actorMgr:GetActor("77014"):TransmitPlayerWithQuestIdByData(7701424, 2, datas.TransmitData_Black, nil, nil, nil)
end

function Q7701424Trigger:PreTriggerIn()
    print("Q7701424Trigger - PreTriggerIn")
end

function Q7701424Trigger:LightUpTriggerIn()
    print("Q7701424Trigger - LightUpTriggerIn")
end

function Q7701424Trigger:TriggerOut()
    print("Q7701424Trigger - TriggerOut")
end

return Q7701424Trigger
