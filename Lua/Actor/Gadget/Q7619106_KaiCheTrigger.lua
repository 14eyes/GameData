require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7619106_KaiCheTrigger = class("Q7619106_KaiCheTrigger", GadgetActorProxy)
Q7619106_KaiCheTrigger.defaultAlias = "Q7619106_KaiCheTrigger"
local Q76191ClientConfig = require("Quest/Client/Q76191ClientConfig")

local this
local subIDs = Q76191ClientConfig.SubIDs
local datas = Q76191ClientConfig.Datas
local npcs = Q76191ClientConfig.Npcs
local points = Q76191ClientConfig.Points

function Q7619106_KaiCheTrigger:OnPostDataPrepare()
    print("Q7619106_KaiCheTrigger - OnPostDataPrepare")
    this = self
end

function Q7619106_KaiCheTrigger:OnPostComponentPrepare()
    print("Q7619106_KaiCheTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76191)
end

function Q7619106_KaiCheTrigger:TriggerIn()
    print("Q7619106_KaiCheTrigger - TriggerIn")
    actorMgr:GetActor("76191"):QuestNarratorTask(datas.NarratorWithId_7619102, nil)
    actorUtils.FinishQuestWithParam({false}, {7619106})
    actorMgr:GetActor("76191"):EnterSceneLookCamera({x = 5307.062, y = 240.274, z = 9625.52}, 15, 2, false, false)
    this:DestroySelf()
end

function Q7619106_KaiCheTrigger:PreTriggerIn()
    print("Q7619106_KaiCheTrigger - PreTriggerIn")
end

function Q7619106_KaiCheTrigger:LightUpTriggerIn()
    print("Q7619106_KaiCheTrigger - LightUpTriggerIn")
end

function Q7619106_KaiCheTrigger:TriggerOut()
    print("Q7619106_KaiCheTrigger - TriggerOut")
end

return Q7619106_KaiCheTrigger
