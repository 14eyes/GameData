require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7009DungeonKaiche = class("Q7009DungeonKaiche", GadgetActorProxy)
Q7009DungeonKaiche.defaultAlias = "Q7009DungeonKaiche"
local Q7009ClientConfig = require("Quest/Client/Q7009ClientConfig")

local this
local subIDs = Q7009ClientConfig.SubIDs
local datas = Q7009ClientConfig.Datas
local npcs = Q7009ClientConfig.Npcs
local points = Q7009ClientConfig.Points

function Q7009DungeonKaiche:OnPostDataPrepare()
    print("Q7009DungeonKaiche - OnPostDataPrepare")
    this = self
end

function Q7009DungeonKaiche:OnPostComponentPrepare()
    print("Q7009DungeonKaiche - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7009)
end

function Q7009DungeonKaiche:TriggerIn()
    print("Q7009DungeonKaiche - TriggerIn")
    actorMgr:GetActor("7009"):QuestNarratorTask(datas.Q7009DungeonKaiche03, nil)
    this:DestroySelf()
end

function Q7009DungeonKaiche:PreTriggerIn()
    print("Q7009DungeonKaiche - PreTriggerIn")
end

function Q7009DungeonKaiche:LightUpTriggerIn()
    print("Q7009DungeonKaiche - LightUpTriggerIn")
end

function Q7009DungeonKaiche:TriggerOut()
    print("Q7009DungeonKaiche - TriggerOut")
end

return Q7009DungeonKaiche
