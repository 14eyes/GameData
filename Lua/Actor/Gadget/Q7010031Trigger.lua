require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7010031Trigger = class("Q7010031Trigger", GadgetActorProxy)
Q7010031Trigger.defaultAlias = "Q7010031Trigger"
local Q70100ClientConfig = require("Quest/Client/Q70100ClientConfig")

local this
local subIDs = Q70100ClientConfig.SubIDs
local datas = Q70100ClientConfig.Datas
local npcs = Q70100ClientConfig.Npcs
local points = Q70100ClientConfig.Points

function Q7010031Trigger:OnPostDataPrepare()
    print("Q7010031Trigger - OnPostDataPrepare")
    this = self
end

function Q7010031Trigger:OnPostComponentPrepare()
    print("Q7010031Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70100)
end

function Q7010031Trigger:TriggerIn()
    print("Q7010031Trigger - TriggerIn")
    actorMgr:GetActor("70100"):PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2248, dungeonId = 1351, questId = 7010031, questPointCfgId = 2}, datas.__EmbedClientConfig_31, nil, nil)
end

function Q7010031Trigger:PreTriggerIn()
    print("Q7010031Trigger - PreTriggerIn")
end

function Q7010031Trigger:LightUpTriggerIn()
    print("Q7010031Trigger - LightUpTriggerIn")
end

function Q7010031Trigger:TriggerOut()
    print("Q7010031Trigger - TriggerOut")
end

return Q7010031Trigger
