require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77661Trigger = class("Q77661Trigger", GadgetActorProxy)
Q77661Trigger.defaultAlias = "Q77661Trigger"
local Q77661ClientConfig = require("Quest/Client/Q77661ClientConfig")

local this
local subIDs = Q77661ClientConfig.SubIDs
local datas = Q77661ClientConfig.Datas
local points = Q77661ClientConfig.Points

function Q77661Trigger:OnPostDataPrepare()
    print("Q77661Trigger - OnPostDataPrepare")
    this = self
end

function Q77661Trigger:OnPostComponentPrepare()
    print("Q77661Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77661)
end

function Q77661Trigger:TriggerIn()
    print("Q77661Trigger - TriggerIn")
    actorMgr:GetActor("77661"):PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2159, dungeonId = 10962, questId = 7766107, questPointCfgId = 1}, datas.__EmbedClientConfig_2, nil, nil)
    this:DestroySelf()
end

function Q77661Trigger:PreTriggerIn()
    print("Q77661Trigger - PreTriggerIn")
end

function Q77661Trigger:LightUpTriggerIn()
    print("Q77661Trigger - LightUpTriggerIn")
end

function Q77661Trigger:TriggerOut()
    print("Q77661Trigger - TriggerOut")
end

return Q77661Trigger
