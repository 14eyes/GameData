require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77663Trigger = class("Q77663Trigger", GadgetActorProxy)
Q77663Trigger.defaultAlias = "Q77663Trigger"
local Q77663ClientConfig = require("Quest/Client/Q77663ClientConfig")

local this
local subIDs = Q77663ClientConfig.SubIDs
local datas = Q77663ClientConfig.Datas
local points = Q77663ClientConfig.Points

function Q77663Trigger:OnPostDataPrepare()
    print("Q77663Trigger - OnPostDataPrepare")
    this = self
end

function Q77663Trigger:OnPostComponentPrepare()
    print("Q77663Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77663)
end

function Q77663Trigger:TriggerIn()
    print("Q77663Trigger - TriggerIn")
    actorMgr:GetActor("77663"):PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2159, dungeonId = 10964, questId = 7766307, questPointCfgId = 1}, datas.__EmbedClientConfig_2, nil, nil)
    this:DestroySelf()
end

function Q77663Trigger:PreTriggerIn()
    print("Q77663Trigger - PreTriggerIn")
end

function Q77663Trigger:LightUpTriggerIn()
    print("Q77663Trigger - LightUpTriggerIn")
end

function Q77663Trigger:TriggerOut()
    print("Q77663Trigger - TriggerOut")
end

return Q77663Trigger
