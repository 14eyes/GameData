require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q550108WallKaiche = class("Q550108WallKaiche", GadgetActorProxy)
Q550108WallKaiche.defaultAlias = "Q550108WallKaiche"
local Q5001ClientConfig = require("Quest/Client/Q5001ClientConfig")

local this
local subIDs = Q5001ClientConfig.SubIDs
local datas = Q5001ClientConfig.Datas
local npcs = Q5001ClientConfig.Npcs
local points = Q5001ClientConfig.Points

function Q550108WallKaiche:OnPostDataPrepare()
    print("Q550108WallKaiche - OnPostDataPrepare")
    this = self
end

function Q550108WallKaiche:OnPostComponentPrepare()
    print("Q550108WallKaiche - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5001)
end

function Q550108WallKaiche:TriggerIn()
    print("Q550108WallKaiche - TriggerIn")
    local actor = actorMgr:GetActor("5001")
    local v = actorMgr:GetActor("5001")
    local questNpcActor = v:GetQuestNpcActor(npcs.Npc14333.alias, 0)
    v:NpcNarratorOnlyTaskByData(questNpcActor, datas.Q500108Kaiche02, nil, 5001)
    this:DestroySelf()
end

function Q550108WallKaiche:PreTriggerIn()
    print("Q550108WallKaiche - PreTriggerIn")
end

function Q550108WallKaiche:LightUpTriggerIn()
    print("Q550108WallKaiche - LightUpTriggerIn")
end

function Q550108WallKaiche:TriggerOut()
    print("Q550108WallKaiche - TriggerOut")
end

return Q550108WallKaiche
