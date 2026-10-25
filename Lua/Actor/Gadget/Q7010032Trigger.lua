require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7010032Trigger = class("Q7010032Trigger", GadgetActorProxy)
Q7010032Trigger.defaultAlias = "Q7010032Trigger"
local Q70100ClientConfig = require("Quest/Client/Q70100ClientConfig")

local this
local subIDs = Q70100ClientConfig.SubIDs
local datas = Q70100ClientConfig.Datas
local npcs = Q70100ClientConfig.Npcs
local points = Q70100ClientConfig.Points

function Q7010032Trigger:OnPostDataPrepare()
    print("Q7010032Trigger - OnPostDataPrepare")
    this = self
end

function Q7010032Trigger:OnPostComponentPrepare()
    print("Q7010032Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70100)
end

function Q7010032Trigger:TriggerIn()
    print("Q7010032Trigger - TriggerIn")
    actorMgr:GetActor("70100"):PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2248, dungeonId = 1351, questId = 7010032, questPointCfgId = 3}, datas.__EmbedClientConfig_32, nil, nil)
end

function Q7010032Trigger:PreTriggerIn()
    print("Q7010032Trigger - PreTriggerIn")
end

function Q7010032Trigger:LightUpTriggerIn()
    print("Q7010032Trigger - LightUpTriggerIn")
end

function Q7010032Trigger:TriggerOut()
    print("Q7010032Trigger - TriggerOut")
end

return Q7010032Trigger
