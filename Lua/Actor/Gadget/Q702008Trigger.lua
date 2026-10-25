require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q702008Trigger = class("Q702008Trigger", GadgetActorProxy)
Q702008Trigger.defaultAlias = "Q702008Trigger"
local Q7020ClientConfig = require("Quest/Client/Q7020ClientConfig")

local this
local subIDs = Q7020ClientConfig.SubIDs
local datas = Q7020ClientConfig.Datas
local npcs = Q7020ClientConfig.Npcs
local points = Q7020ClientConfig.Points

function Q702008Trigger:OnPostDataPrepare()
    print("Q702008Trigger - OnPostDataPrepare")
    this = self
end

function Q702008Trigger:OnPostComponentPrepare()
    print("Q702008Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7020)
end

function Q702008Trigger:TriggerIn()
    print("Q702008Trigger - TriggerIn")
    actorMgr:GetActor("7020"):TransmitPlayerWithQuestIdByData(702007, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q702008Trigger:PreTriggerIn()
    print("Q702008Trigger - PreTriggerIn")
end

function Q702008Trigger:LightUpTriggerIn()
    print("Q702008Trigger - LightUpTriggerIn")
end

function Q702008Trigger:TriggerOut()
    print("Q702008Trigger - TriggerOut")
end

return Q702008Trigger
