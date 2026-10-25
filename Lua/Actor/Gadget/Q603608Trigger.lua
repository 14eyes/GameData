require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603608Trigger = class("Q603608Trigger", GadgetActorProxy)
Q603608Trigger.defaultAlias = "Q603608Trigger"
local Q6036ClientConfig = require("Quest/Client/Q6036ClientConfig")

local this
local subIDs = Q6036ClientConfig.SubIDs
local datas = Q6036ClientConfig.Datas
local npcs = Q6036ClientConfig.Npcs
local points = Q6036ClientConfig.Points

function Q603608Trigger:OnPostDataPrepare()
    print("Q603608Trigger - OnPostDataPrepare")
    this = self
end

function Q603608Trigger:OnPostComponentPrepare()
    print("Q603608Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6036)
end

function Q603608Trigger:TriggerIn()
    print("Q603608Trigger - TriggerIn")
    actorMgr:GetActor("6036"):TransmitPlayerWithQuestIdByData(603608, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q603608Trigger:PreTriggerIn()
    print("Q603608Trigger - PreTriggerIn")
end

function Q603608Trigger:LightUpTriggerIn()
    print("Q603608Trigger - LightUpTriggerIn")
end

function Q603608Trigger:TriggerOut()
    print("Q603608Trigger - TriggerOut")
end

return Q603608Trigger
