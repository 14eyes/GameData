require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020301Trigger = class("Q4020301Trigger", GadgetActorProxy)
Q4020301Trigger.defaultAlias = "Q4020301Trigger"
local Q40203ClientConfig = require("Quest/Client/Q40203ClientConfig")

local this
local subIDs = Q40203ClientConfig.SubIDs
local datas = Q40203ClientConfig.Datas
local npcs = Q40203ClientConfig.Npcs
local points = Q40203ClientConfig.Points

function Q4020301Trigger:OnPostDataPrepare()
    print("Q4020301Trigger - OnPostDataPrepare")
    this = self
end

function Q4020301Trigger:OnPostComponentPrepare()
    print("Q4020301Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(11.448028, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40203)
end

function Q4020301Trigger:TriggerIn()
    print("Q4020301Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4020316)
    actorMgr:GetActor("40203"):ClearNarratorTask()
    actorMgr:GetActor("40203"):QuestNarratorTask(datas.NarratorWithId_4020302_PostFound, nil)
    actorMgr:GetActor("40203"):EnterSceneLookCamera({x = 1637.712, y = 226.525, z = 9459.639}, 0, 3, false, false)
    this:DestroySelf()
end

function Q4020301Trigger:PreTriggerIn()
    print("Q4020301Trigger - PreTriggerIn")
end

function Q4020301Trigger:LightUpTriggerIn()
    print("Q4020301Trigger - LightUpTriggerIn")
end

function Q4020301Trigger:TriggerOut()
    print("Q4020301Trigger - TriggerOut")
end

return Q4020301Trigger
