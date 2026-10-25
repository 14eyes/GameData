require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40210Trigger_3 = class("Q40210Trigger_3", GadgetActorProxy)
Q40210Trigger_3.defaultAlias = "Q40210Trigger_3"
local Q40210ClientConfig = require("Quest/Client/Q40210ClientConfig")

local this
local subIDs = Q40210ClientConfig.SubIDs
local datas = Q40210ClientConfig.Datas
local npcs = Q40210ClientConfig.Npcs
local points = Q40210ClientConfig.Points

function Q40210Trigger_3:OnPostDataPrepare()
    print("Q40210Trigger_3 - OnPostDataPrepare")
    this = self
end

function Q40210Trigger_3:OnPostComponentPrepare()
    print("Q40210Trigger_3 - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40210)
end

function Q40210Trigger_3:TriggerIn()
    print("Q40210Trigger_3 - TriggerIn")
    actorMgr:GetActor("40210"):EnterSceneLookCameraByParam(datas.SceneLookCameraParams)
    actorMgr:GetActor("40210"):CallDelayByQuest("2", 1, function(arg1)
        actorMgr:GetActor("40210"):QuestNarratorTask(datas.NarratorWithId_4021001, nil)
        actorMgr:GetActor("40210"):CallDelayByQuest("3", 2, function(arg1)
            actorUtils.FinishQuestID(false, 4021012)
            this:DestroySelf()
        end)
    end)
end

function Q40210Trigger_3:PreTriggerIn()
    print("Q40210Trigger_3 - PreTriggerIn")
end

function Q40210Trigger_3:LightUpTriggerIn()
    print("Q40210Trigger_3 - LightUpTriggerIn")
end

function Q40210Trigger_3:TriggerOut()
    print("Q40210Trigger_3 - TriggerOut")
end

return Q40210Trigger_3
