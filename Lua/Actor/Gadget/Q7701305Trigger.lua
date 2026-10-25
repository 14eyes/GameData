require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7701305Trigger = class("Q7701305Trigger", GadgetActorProxy)
Q7701305Trigger.defaultAlias = "Q7701305Trigger"
local Q77013ClientConfig = require("Quest/Client/Q77013ClientConfig")

local this
local subIDs = Q77013ClientConfig.SubIDs
local datas = Q77013ClientConfig.Datas
local npcs = Q77013ClientConfig.Npcs
local points = Q77013ClientConfig.Points

function Q7701305Trigger:OnPostDataPrepare()
    print("Q7701305Trigger - OnPostDataPrepare")
    this = self
end

function Q7701305Trigger:OnPostComponentPrepare()
    print("Q7701305Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77013)
end

function Q7701305Trigger:TriggerIn()
    print("Q7701305Trigger - TriggerIn")
    actorMgr:GetActor("77013"):TransmitPlayerWithQuestIdByData(7701305, 1, datas.TransmitData_9, nil, nil, nil)
    this:DestroySelf()
end

function Q7701305Trigger:PreTriggerIn()
    print("Q7701305Trigger - PreTriggerIn")
end

function Q7701305Trigger:LightUpTriggerIn()
    print("Q7701305Trigger - LightUpTriggerIn")
end

function Q7701305Trigger:TriggerOut()
    print("Q7701305Trigger - TriggerOut")
end

return Q7701305Trigger
