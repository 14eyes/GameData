require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501005Nargger = class("Q501005Nargger", GadgetActorProxy)
Q501005Nargger.defaultAlias = "Q501005Nargger"
local Q5010ClientConfig = require("Quest/Client/Q5010ClientConfig")

local this
local subIDs = Q5010ClientConfig.SubIDs
local datas = Q5010ClientConfig.Datas
local npcs = Q5010ClientConfig.Npcs
local points = Q5010ClientConfig.Points

function Q501005Nargger:OnPostDataPrepare()
    print("Q501005Nargger - OnPostDataPrepare")
    this = self
end

function Q501005Nargger:OnPostComponentPrepare()
    print("Q501005Nargger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5010)
end

function Q501005Nargger:TriggerIn()
    print("Q501005Nargger - TriggerIn")
    actorMgr:GetActor("5010"):LevelLoadFinishSafeCall(function(arg1)
        actorMgr:GetActor("5010"):CallDelayByQuest("delayNar", 1, function(arg1)
            actorMgr:GetActor("5010"):QuestNarratorTask(datas.NarratorWithId_501001, nil)
            this:DestroySelf()
        end)
    end)

    actorMgr:GetActor("5010"):CreateQuestNpcById(501005, npcs.Npc1096.id, 0, false, 0)
    actorMgr:GetActor("5010"):CreateQuestNpcWithTrigger("Q501005_RequestTrigger", 501005, npcs.Npc1095.id, 0, 6, 2)
    actorMgr:GetActor("5010"):GetQuestNpcActor(npcs.Npc1095.alias, 5010):DoFreeStyle(1230, true, nil, true, true, false, false)
    actorMgr:GetActor("5010"):GetQuestNpcActor(npcs.Npc1096.alias, 5010):DoFreeStyle(1220, true, nil, true, true, false, false)
end

function Q501005Nargger:PreTriggerIn()
    print("Q501005Nargger - PreTriggerIn")
end

function Q501005Nargger:LightUpTriggerIn()
    print("Q501005Nargger - LightUpTriggerIn")
end

function Q501005Nargger:TriggerOut()
    print("Q501005Nargger - TriggerOut")
end

return Q501005Nargger
