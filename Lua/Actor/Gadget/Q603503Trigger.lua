require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603503Trigger = class("Q603503Trigger", GadgetActorProxy)
Q603503Trigger.defaultAlias = "Q603503Trigger"
local Q6035ClientConfig = require("Quest/Client/Q6035ClientConfig")

local this
local subIDs = Q6035ClientConfig.SubIDs
local datas = Q6035ClientConfig.Datas
local npcs = Q6035ClientConfig.Npcs
local points = Q6035ClientConfig.Points

function Q603503Trigger:OnPostDataPrepare()
    print("Q603503Trigger - OnPostDataPrepare")
    this = self
end

function Q603503Trigger:OnPostComponentPrepare()
    print("Q603503Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6035)
end

function Q603503Trigger:TriggerIn()
    print("Q603503Trigger - TriggerIn")
    actorMgr:GetActor("6035"):TransmitPlayerWithQuestIdByData(603503, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q603503Trigger:PreTriggerIn()
    print("Q603503Trigger - PreTriggerIn")
end

function Q603503Trigger:LightUpTriggerIn()
    print("Q603503Trigger - LightUpTriggerIn")
end

function Q603503Trigger:TriggerOut()
    print("Q603503Trigger - TriggerOut")
end

return Q603503Trigger
