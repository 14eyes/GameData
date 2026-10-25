require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7701303Trigger = class("Q7701303Trigger", GadgetActorProxy)
Q7701303Trigger.defaultAlias = "Q7701303Trigger"
local Q77013ClientConfig = require("Quest/Client/Q77013ClientConfig")

local this
local subIDs = Q77013ClientConfig.SubIDs
local datas = Q77013ClientConfig.Datas
local npcs = Q77013ClientConfig.Npcs
local points = Q77013ClientConfig.Points

function Q7701303Trigger:OnPostDataPrepare()
    print("Q7701303Trigger - OnPostDataPrepare")
    this = self
end

function Q7701303Trigger:OnPostComponentPrepare()
    print("Q7701303Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77013)
end

function Q7701303Trigger:TriggerIn()
    print("Q7701303Trigger - TriggerIn")
    actorMgr:GetActor("77013"):TransmitPlayerWithQuestIdByData(7701303, 1, datas.TransmitData_9, nil, nil, nil)
    this:DestroySelf()
end

function Q7701303Trigger:PreTriggerIn()
    print("Q7701303Trigger - PreTriggerIn")
end

function Q7701303Trigger:LightUpTriggerIn()
    print("Q7701303Trigger - LightUpTriggerIn")
end

function Q7701303Trigger:TriggerOut()
    print("Q7701303Trigger - TriggerOut")
end

return Q7701303Trigger
