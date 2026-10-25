require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q702014Trigger = class("Q702014Trigger", GadgetActorProxy)
Q702014Trigger.defaultAlias = "Q702014Trigger"
local Q7020ClientConfig = require("Quest/Client/Q7020ClientConfig")

local this
local subIDs = Q7020ClientConfig.SubIDs
local datas = Q7020ClientConfig.Datas
local npcs = Q7020ClientConfig.Npcs
local points = Q7020ClientConfig.Points

function Q702014Trigger:OnPostDataPrepare()
    print("Q702014Trigger - OnPostDataPrepare")
    this = self
end

function Q702014Trigger:OnPostComponentPrepare()
    print("Q702014Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7020)
end

function Q702014Trigger:TriggerIn()
    print("Q702014Trigger - TriggerIn")
    actorMgr:GetActor("7020"):TransmitPlayerWithQuestIdByData(702014, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q702014Trigger:PreTriggerIn()
    print("Q702014Trigger - PreTriggerIn")
end

function Q702014Trigger:LightUpTriggerIn()
    print("Q702014Trigger - LightUpTriggerIn")
end

function Q702014Trigger:TriggerOut()
    print("Q702014Trigger - TriggerOut")
end

return Q702014Trigger
