require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603637Trigger = class("Q603637Trigger", GadgetActorProxy)
Q603637Trigger.defaultAlias = "Q603637Trigger"
local Q6036ClientConfig = require("Quest/Client/Q6036ClientConfig")

local this
local subIDs = Q6036ClientConfig.SubIDs
local datas = Q6036ClientConfig.Datas
local npcs = Q6036ClientConfig.Npcs
local points = Q6036ClientConfig.Points

function Q603637Trigger:OnPostDataPrepare()
    print("Q603637Trigger - OnPostDataPrepare")
    this = self
end

function Q603637Trigger:OnPostComponentPrepare()
    print("Q603637Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6036)
end

function Q603637Trigger:TriggerIn()
    print("Q603637Trigger - TriggerIn")
    actorMgr:GetActor("6036"):TransmitPlayerWithQuestIdByData(603637, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q603637Trigger:PreTriggerIn()
    print("Q603637Trigger - PreTriggerIn")
end

function Q603637Trigger:LightUpTriggerIn()
    print("Q603637Trigger - LightUpTriggerIn")
end

function Q603637Trigger:TriggerOut()
    print("Q603637Trigger - TriggerOut")
end

return Q603637Trigger
