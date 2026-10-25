require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q702019Trigger = class("Q702019Trigger", GadgetActorProxy)
Q702019Trigger.defaultAlias = "Q702019Trigger"
local Q7020ClientConfig = require("Quest/Client/Q7020ClientConfig")

local this
local subIDs = Q7020ClientConfig.SubIDs
local datas = Q7020ClientConfig.Datas
local npcs = Q7020ClientConfig.Npcs
local points = Q7020ClientConfig.Points

function Q702019Trigger:OnPostDataPrepare()
    print("Q702019Trigger - OnPostDataPrepare")
    this = self
end

function Q702019Trigger:OnPostComponentPrepare()
    print("Q702019Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7020)
end

function Q702019Trigger:TriggerIn()
    print("Q702019Trigger - TriggerIn")
    actorMgr:GetActor("7020"):TransmitPlayerWithQuestIdByData(702019, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q702019Trigger:PreTriggerIn()
    print("Q702019Trigger - PreTriggerIn")
end

function Q702019Trigger:LightUpTriggerIn()
    print("Q702019Trigger - LightUpTriggerIn")
end

function Q702019Trigger:TriggerOut()
    print("Q702019Trigger - TriggerOut")
end

return Q702019Trigger
