require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402703_NarratorTrigger = class("Q1402703_NarratorTrigger", GadgetActorProxy)
Q1402703_NarratorTrigger.defaultAlias = "Q1402703_NarratorTrigger"
local Q14027ClientConfig = require("Quest/Client/Q14027ClientConfig")

local this
local subIDs = Q14027ClientConfig.SubIDs
local datas = Q14027ClientConfig.Datas
local npcs = Q14027ClientConfig.Npcs
local points = Q14027ClientConfig.Points

function Q1402703_NarratorTrigger:OnPostDataPrepare()
    print("Q1402703_NarratorTrigger - OnPostDataPrepare")
    this = self
end

function Q1402703_NarratorTrigger:OnPostComponentPrepare()
    print("Q1402703_NarratorTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14027)
end

function Q1402703_NarratorTrigger:TriggerIn()
    print("Q1402703_NarratorTrigger - TriggerIn")
    actorMgr:GetActor("14027"):QuestNarratorTask(datas.Narrator_1402701, function(arg1)
        actorMgr:GetActor("14027"):SetQuestVarByMainId(0, 1)
    end)

    this:DestroySelf()
end

function Q1402703_NarratorTrigger:PreTriggerIn()
    print("Q1402703_NarratorTrigger - PreTriggerIn")
end

function Q1402703_NarratorTrigger:LightUpTriggerIn()
    print("Q1402703_NarratorTrigger - LightUpTriggerIn")
end

function Q1402703_NarratorTrigger:TriggerOut()
    print("Q1402703_NarratorTrigger - TriggerOut")
end

return Q1402703_NarratorTrigger
