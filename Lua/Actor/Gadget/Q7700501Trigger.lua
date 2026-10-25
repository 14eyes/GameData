require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700501Trigger = class("Q7700501Trigger", GadgetActorProxy)
Q7700501Trigger.defaultAlias = "Q7700501Trigger"
local Q77005ClientConfig = require("Quest/Client/Q77005ClientConfig")

local this
local subIDs = Q77005ClientConfig.SubIDs
local datas = Q77005ClientConfig.Datas
local npcs = Q77005ClientConfig.Npcs
local points = Q77005ClientConfig.Points

function Q7700501Trigger:OnPostDataPrepare()
    print("Q7700501Trigger - OnPostDataPrepare")
    this = self
end

function Q7700501Trigger:OnPostComponentPrepare()
    print("Q7700501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77005)
end

function Q7700501Trigger:TriggerIn()
    print("Q7700501Trigger - TriggerIn")
    actorMgr:GetActor("77005"):TransmitPlayerWithQuestIdByData(7700501, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q7700501Trigger:PreTriggerIn()
    print("Q7700501Trigger - PreTriggerIn")
end

function Q7700501Trigger:LightUpTriggerIn()
    print("Q7700501Trigger - LightUpTriggerIn")
end

function Q7700501Trigger:TriggerOut()
    print("Q7700501Trigger - TriggerOut")
end

return Q7700501Trigger
