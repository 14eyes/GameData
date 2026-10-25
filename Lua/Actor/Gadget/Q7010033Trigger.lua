require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7010033Trigger = class("Q7010033Trigger", GadgetActorProxy)
Q7010033Trigger.defaultAlias = "Q7010033Trigger"
local Q70100ClientConfig = require("Quest/Client/Q70100ClientConfig")

local this
local subIDs = Q70100ClientConfig.SubIDs
local datas = Q70100ClientConfig.Datas
local npcs = Q70100ClientConfig.Npcs
local points = Q70100ClientConfig.Points

function Q7010033Trigger:OnPostDataPrepare()
    print("Q7010033Trigger - OnPostDataPrepare")
    this = self
end

function Q7010033Trigger:OnPostComponentPrepare()
    print("Q7010033Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70100)
end

function Q7010033Trigger:TriggerIn()
    print("Q7010033Trigger - TriggerIn")
    actorMgr:GetActor("70100"):PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2248, dungeonId = 1351, questId = 7010033, questPointCfgId = 4}, datas.__EmbedClientConfig_33, nil, nil)
end

function Q7010033Trigger:PreTriggerIn()
    print("Q7010033Trigger - PreTriggerIn")
end

function Q7010033Trigger:LightUpTriggerIn()
    print("Q7010033Trigger - LightUpTriggerIn")
end

function Q7010033Trigger:TriggerOut()
    print("Q7010033Trigger - TriggerOut")
end

return Q7010033Trigger
