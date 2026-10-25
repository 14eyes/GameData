require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403101NarratorTrigger = class("Q1403101NarratorTrigger", GadgetActorProxy)
Q1403101NarratorTrigger.defaultAlias = "Q1403101NarratorTrigger"
local Q14031ClientConfig = require("Quest/Client/Q14031ClientConfig")

local this
local subIDs = Q14031ClientConfig.SubIDs
local datas = Q14031ClientConfig.Datas
local npcs = Q14031ClientConfig.Npcs
local points = Q14031ClientConfig.Points

function Q1403101NarratorTrigger:OnPostDataPrepare()
    print("Q1403101NarratorTrigger - OnPostDataPrepare")
    this = self
end

function Q1403101NarratorTrigger:OnPostComponentPrepare()
    print("Q1403101NarratorTrigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(60, 18, 15, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14031)
end

function Q1403101NarratorTrigger:TriggerIn()
    print("Q1403101NarratorTrigger - TriggerIn")
    actorMgr:GetActor("14031"):QuestNarratorTask(datas.NarratorWithId_1403101, function(arg1)
        actorUtils.FinishQuestID(false, 1403101)
    end)

    actorMgr:GetActor("14031"):EnterSceneLookCameraByParam(datas.SceneLookCameraParams)
    this:DestroySelf()
end

function Q1403101NarratorTrigger:PreTriggerIn()
    print("Q1403101NarratorTrigger - PreTriggerIn")
end

function Q1403101NarratorTrigger:LightUpTriggerIn()
    print("Q1403101NarratorTrigger - LightUpTriggerIn")
end

function Q1403101NarratorTrigger:TriggerOut()
    print("Q1403101NarratorTrigger - TriggerOut")
end

return Q1403101NarratorTrigger
