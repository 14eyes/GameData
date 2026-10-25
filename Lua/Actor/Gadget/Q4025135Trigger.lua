require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4025135Trigger = class("Q4025135Trigger", GadgetActorProxy)
Q4025135Trigger.defaultAlias = "Q4025135Trigger"
local Q40251ClientConfig = require("Quest/Client/Q40251ClientConfig")

local this
local subIDs = Q40251ClientConfig.SubIDs
local datas = Q40251ClientConfig.Datas
local npcs = Q40251ClientConfig.Npcs
local points = Q40251ClientConfig.Points

function Q4025135Trigger:OnPostDataPrepare()
    print("Q4025135Trigger - OnPostDataPrepare")
    this = self
end

function Q4025135Trigger:OnPostComponentPrepare()
    print("Q4025135Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(19, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40251)
end

function Q4025135Trigger:TriggerIn()
    print("Q4025135Trigger - TriggerIn")
    actorMgr:GetActor("40251"):PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2195, dungeonId = 1348, questId = 4025107, questPointCfgId = 1}, datas.__EmbedClientConfig_25, nil, nil)
    this:DestroySelf()
end

function Q4025135Trigger:PreTriggerIn()
    print("Q4025135Trigger - PreTriggerIn")
end

function Q4025135Trigger:LightUpTriggerIn()
    print("Q4025135Trigger - LightUpTriggerIn")
end

function Q4025135Trigger:TriggerOut()
    print("Q4025135Trigger - TriggerOut")
end

return Q4025135Trigger
