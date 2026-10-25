require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q702001Trigger = class("Q702001Trigger", GadgetActorProxy)
Q702001Trigger.defaultAlias = "Q702001Trigger"
local Q7020ClientConfig = require("Quest/Client/Q7020ClientConfig")

local this
local subIDs = Q7020ClientConfig.SubIDs
local datas = Q7020ClientConfig.Datas
local npcs = Q7020ClientConfig.Npcs
local points = Q7020ClientConfig.Points

function Q702001Trigger:OnPostDataPrepare()
    print("Q702001Trigger - OnPostDataPrepare")
    this = self
end

function Q702001Trigger:OnPostComponentPrepare()
    print("Q702001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7020)
end

function Q702001Trigger:TriggerIn()
    print("Q702001Trigger - TriggerIn")
    actorMgr:GetActor("7020"):TransmitPlayerWithQuestIdByData(702001, 1, datas.TransmitData_3, nil, nil, nil)
    this:DestroySelf()
end

function Q702001Trigger:PreTriggerIn()
    print("Q702001Trigger - PreTriggerIn")
end

function Q702001Trigger:LightUpTriggerIn()
    print("Q702001Trigger - LightUpTriggerIn")
end

function Q702001Trigger:TriggerOut()
    print("Q702001Trigger - TriggerOut")
end

return Q702001Trigger
