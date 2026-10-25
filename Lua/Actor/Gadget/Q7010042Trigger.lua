require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7010042Trigger = class("Q7010042Trigger", GadgetActorProxy)
Q7010042Trigger.defaultAlias = "Q7010042Trigger"
local Q70100ClientConfig = require("Quest/Client/Q70100ClientConfig")

local this
local subIDs = Q70100ClientConfig.SubIDs
local datas = Q70100ClientConfig.Datas
local npcs = Q70100ClientConfig.Npcs
local points = Q70100ClientConfig.Points

function Q7010042Trigger:OnPostDataPrepare()
    print("Q7010042Trigger - OnPostDataPrepare")
    this = self
end

function Q7010042Trigger:OnPostComponentPrepare()
    print("Q7010042Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70100)
end

function Q7010042Trigger:TriggerIn()
    print("Q7010042Trigger - TriggerIn")
    actorMgr:GetActor("70100"):PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2250, dungeonId = 10951, questId = 7010042, questPointCfgId = 5}, datas.__EmbedClientConfig_34, nil, nil)
end

function Q7010042Trigger:PreTriggerIn()
    print("Q7010042Trigger - PreTriggerIn")
end

function Q7010042Trigger:LightUpTriggerIn()
    print("Q7010042Trigger - LightUpTriggerIn")
end

function Q7010042Trigger:TriggerOut()
    print("Q7010042Trigger - TriggerOut")
end

return Q7010042Trigger
