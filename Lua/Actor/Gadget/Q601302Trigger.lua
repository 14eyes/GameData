require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601302Trigger = class("Q601302Trigger", GadgetActorProxy)
Q601302Trigger.defaultAlias = "Q601302Trigger"
local Q6013ClientConfig = require("Quest/Client/Q6013ClientConfig")

local this
local subIDs = Q6013ClientConfig.SubIDs
local datas = Q6013ClientConfig.Datas
local npcs = Q6013ClientConfig.Npcs
local points = Q6013ClientConfig.Points

function Q601302Trigger:OnPostDataPrepare()
    print("Q601302Trigger - OnPostDataPrepare")
    this = self
end

function Q601302Trigger:OnPostComponentPrepare()
    print("Q601302Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6013)
end

function Q601302Trigger:TriggerIn()
    print("Q601302Trigger - TriggerIn")
    actorMgr:GetActor("6013"):TransmitPlayerWithQuestIdByData(601302, 4, datas.TransmitDataBlackScreen, nil, nil, nil)
    this:DestroySelf()
end

function Q601302Trigger:PreTriggerIn()
    print("Q601302Trigger - PreTriggerIn")
end

function Q601302Trigger:LightUpTriggerIn()
    print("Q601302Trigger - LightUpTriggerIn")
end

function Q601302Trigger:TriggerOut()
    print("Q601302Trigger - TriggerOut")
end

return Q601302Trigger
