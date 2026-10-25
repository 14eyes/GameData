require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700201Trigger = class("Q7700201Trigger", GadgetActorProxy)
Q7700201Trigger.defaultAlias = "Q7700201Trigger"
local Q77002ClientConfig = require("Quest/Client/Q77002ClientConfig")

local this
local subIDs = Q77002ClientConfig.SubIDs
local datas = Q77002ClientConfig.Datas
local npcs = Q77002ClientConfig.Npcs

function Q7700201Trigger:OnPostDataPrepare()
    print("Q7700201Trigger - OnPostDataPrepare")
    this = self
end

function Q7700201Trigger:OnPostComponentPrepare()
    print("Q7700201Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77002)
end

function Q7700201Trigger:TriggerIn()
    print("Q7700201Trigger - TriggerIn")
    actorMgr:GetActor("77002"):TransmitPlayerWithQuestIdByData(7700201, 1, datas.TransmitData_2, nil, nil, nil)
    this:DestroySelf()
end

function Q7700201Trigger:PreTriggerIn()
    print("Q7700201Trigger - PreTriggerIn")
end

function Q7700201Trigger:LightUpTriggerIn()
    print("Q7700201Trigger - LightUpTriggerIn")
end

function Q7700201Trigger:TriggerOut()
    print("Q7700201Trigger - TriggerOut")
end

return Q7700201Trigger
