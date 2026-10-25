require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402912_NarratorTrigger = class("Q1402912_NarratorTrigger", GadgetActorProxy)
Q1402912_NarratorTrigger.defaultAlias = "Q1402912_NarratorTrigger"
local Q14029ClientConfig = require("Quest/Client/Q14029ClientConfig")

local this
local subIDs = Q14029ClientConfig.SubIDs
local datas = Q14029ClientConfig.Datas
local npcs = Q14029ClientConfig.Npcs
local points = Q14029ClientConfig.Points

function Q1402912_NarratorTrigger:OnPostDataPrepare()
    print("Q1402912_NarratorTrigger - OnPostDataPrepare")
    this = self
end

function Q1402912_NarratorTrigger:OnPostComponentPrepare()
    print("Q1402912_NarratorTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8.962456, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14029)
end

function Q1402912_NarratorTrigger:TriggerIn()
    print("Q1402912_NarratorTrigger - TriggerIn")
    actorMgr:GetActor("14029"):QuestNarratorTask(datas.Narrator_1402901, function(arg1)
        actorMgr:GetActor("14029"):SetQuestVarByMainId(0, 1)
    end)

    this:DestroySelf()
end

function Q1402912_NarratorTrigger:PreTriggerIn()
    print("Q1402912_NarratorTrigger - PreTriggerIn")
end

function Q1402912_NarratorTrigger:LightUpTriggerIn()
    print("Q1402912_NarratorTrigger - LightUpTriggerIn")
end

function Q1402912_NarratorTrigger:TriggerOut()
    print("Q1402912_NarratorTrigger - TriggerOut")
end

return Q1402912_NarratorTrigger
