require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603512Trigger = class("Q603512Trigger", GadgetActorProxy)
Q603512Trigger.defaultAlias = "Q603512Trigger"
local Q6035ClientConfig = require("Quest/Client/Q6035ClientConfig")

local this
local subIDs = Q6035ClientConfig.SubIDs
local datas = Q6035ClientConfig.Datas
local npcs = Q6035ClientConfig.Npcs
local points = Q6035ClientConfig.Points

function Q603512Trigger:OnPostDataPrepare()
    print("Q603512Trigger - OnPostDataPrepare")
    this = self
end

function Q603512Trigger:OnPostComponentPrepare()
    print("Q603512Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6035)
end

function Q603512Trigger:TriggerIn()
    print("Q603512Trigger - TriggerIn")
    actorMgr:GetActor("6035"):TransmitPlayerWithQuestIdByData(603512, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q603512Trigger:PreTriggerIn()
    print("Q603512Trigger - PreTriggerIn")
end

function Q603512Trigger:LightUpTriggerIn()
    print("Q603512Trigger - LightUpTriggerIn")
end

function Q603512Trigger:TriggerOut()
    print("Q603512Trigger - TriggerOut")
end

return Q603512Trigger
