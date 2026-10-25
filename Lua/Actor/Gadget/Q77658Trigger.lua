require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77658Trigger = class("Q77658Trigger", GadgetActorProxy)
Q77658Trigger.defaultAlias = "Q77658Trigger"
local Q77658ClientConfig = require("Quest/Client/Q77658ClientConfig")

local this
local subIDs = Q77658ClientConfig.SubIDs
local datas = Q77658ClientConfig.Datas
local points = Q77658ClientConfig.Points

function Q77658Trigger:OnPostDataPrepare()
    print("Q77658Trigger - OnPostDataPrepare")
    this = self
end

function Q77658Trigger:OnPostComponentPrepare()
    print("Q77658Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77658)
end

function Q77658Trigger:TriggerIn()
    print("Q77658Trigger - TriggerIn")
    actorMgr:GetActor("77658"):PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2159, dungeonId = 10953, questId = 7765805, questPointCfgId = 1}, datas.__EmbedClientConfig_2, nil, nil)
    this:DestroySelf()
end

function Q77658Trigger:PreTriggerIn()
    print("Q77658Trigger - PreTriggerIn")
end

function Q77658Trigger:LightUpTriggerIn()
    print("Q77658Trigger - LightUpTriggerIn")
end

function Q77658Trigger:TriggerOut()
    print("Q77658Trigger - TriggerOut")
end

return Q77658Trigger
