require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77666Trigger_1 = class("Q77666Trigger_1", GadgetActorProxy)
Q77666Trigger_1.defaultAlias = "Q77666Trigger_1"
local Q77666ClientConfig = require("Quest/Client/Q77666ClientConfig")

local this
local subIDs = Q77666ClientConfig.SubIDs
local datas = Q77666ClientConfig.Datas
local npcs = Q77666ClientConfig.Npcs
local points = Q77666ClientConfig.Points

function Q77666Trigger_1:OnPostDataPrepare()
    print("Q77666Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q77666Trigger_1:OnPostComponentPrepare()
    print("Q77666Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77666)
end

function Q77666Trigger_1:TriggerIn()
    print("Q77666Trigger_1 - TriggerIn")
    actorMgr:GetActor("77666"):TransmitPlayerByQuestId(7766608, 2, nil, nil, nil)
    this:DestroySelf()
end

function Q77666Trigger_1:PreTriggerIn()
    print("Q77666Trigger_1 - PreTriggerIn")
end

function Q77666Trigger_1:LightUpTriggerIn()
    print("Q77666Trigger_1 - LightUpTriggerIn")
end

function Q77666Trigger_1:TriggerOut()
    print("Q77666Trigger_1 - TriggerOut")
end

return Q77666Trigger_1
