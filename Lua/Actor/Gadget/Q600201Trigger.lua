require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600201Trigger = class("Q600201Trigger", GadgetActorProxy)
Q600201Trigger.defaultAlias = "Q600201Trigger"
local Q6002ClientConfig = require("Quest/Client/Q6002ClientConfig")

local this
local subIDs = Q6002ClientConfig.SubIDs
local datas = Q6002ClientConfig.Datas
local npcs = Q6002ClientConfig.Npcs
local points = Q6002ClientConfig.Points

function Q600201Trigger:OnPostDataPrepare()
    print("Q600201Trigger - OnPostDataPrepare")
    this = self
end

function Q600201Trigger:OnPostComponentPrepare()
    print("Q600201Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6002)
end

function Q600201Trigger:TriggerIn()
    print("Q600201Trigger - TriggerIn")
    actorMgr:GetActor("6002"):TransmitPlayerWithQuestIdByData(600201, 1, datas.TransmitData, nil, nil, nil)
    actorMgr:GetActor("6002"):SetQuestVarByMainId(2, 1)
    this:DestroySelf()
end

function Q600201Trigger:PreTriggerIn()
    print("Q600201Trigger - PreTriggerIn")
end

function Q600201Trigger:LightUpTriggerIn()
    print("Q600201Trigger - LightUpTriggerIn")
end

function Q600201Trigger:TriggerOut()
    print("Q600201Trigger - TriggerOut")
end

return Q600201Trigger
