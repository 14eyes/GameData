require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7010020Trigger = class("Q7010020Trigger", GadgetActorProxy)
Q7010020Trigger.defaultAlias = "Q7010020Trigger"
local Q70100ClientConfig = require("Quest/Client/Q70100ClientConfig")

local this
local subIDs = Q70100ClientConfig.SubIDs
local datas = Q70100ClientConfig.Datas
local npcs = Q70100ClientConfig.Npcs
local points = Q70100ClientConfig.Points

function Q7010020Trigger:OnPostDataPrepare()
    print("Q7010020Trigger - OnPostDataPrepare")
    this = self
end

function Q7010020Trigger:OnPostComponentPrepare()
    print("Q7010020Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70100)
end

function Q7010020Trigger:TriggerIn()
    print("Q7010020Trigger - TriggerIn")
    actorMgr:GetActor("70100"):PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2250, dungeonId = 10951, questId = 7010020, questPointCfgId = 5}, datas.__EmbedClientConfig_28, nil, nil)
    this:DestroySelf()
end

function Q7010020Trigger:PreTriggerIn()
    print("Q7010020Trigger - PreTriggerIn")
end

function Q7010020Trigger:LightUpTriggerIn()
    print("Q7010020Trigger - LightUpTriggerIn")
end

function Q7010020Trigger:TriggerOut()
    print("Q7010020Trigger - TriggerOut")
end

return Q7010020Trigger
