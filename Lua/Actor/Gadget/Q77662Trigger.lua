require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77662Trigger = class("Q77662Trigger", GadgetActorProxy)
Q77662Trigger.defaultAlias = "Q77662Trigger"
local Q77662ClientConfig = require("Quest/Client/Q77662ClientConfig")

local this
local subIDs = Q77662ClientConfig.SubIDs
local datas = Q77662ClientConfig.Datas
local points = Q77662ClientConfig.Points

function Q77662Trigger:OnPostDataPrepare()
    print("Q77662Trigger - OnPostDataPrepare")
    this = self
end

function Q77662Trigger:OnPostComponentPrepare()
    print("Q77662Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77662)
end

function Q77662Trigger:TriggerIn()
    print("Q77662Trigger - TriggerIn")
    actorMgr:GetActor("77662"):PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2159, dungeonId = 10963, questId = 7766207, questPointCfgId = 1}, datas.__EmbedClientConfig_2, nil, nil)
    this:DestroySelf()
end

function Q77662Trigger:PreTriggerIn()
    print("Q77662Trigger - PreTriggerIn")
end

function Q77662Trigger:LightUpTriggerIn()
    print("Q77662Trigger - LightUpTriggerIn")
end

function Q77662Trigger:TriggerOut()
    print("Q77662Trigger - TriggerOut")
end

return Q77662Trigger
