require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602301Trigger = class("Q7602301Trigger", GadgetActorProxy)
Q7602301Trigger.defaultAlias = "Q7602301Trigger"
local Q76023ClientConfig = require("Quest/Client/Q76023ClientConfig")

local this
local subIDs = Q76023ClientConfig.SubIDs
local datas = Q76023ClientConfig.Datas
local npcs = Q76023ClientConfig.Npcs
local points = Q76023ClientConfig.Points

function Q7602301Trigger:OnPostDataPrepare()
    print("Q7602301Trigger - OnPostDataPrepare")
    this = self
end

function Q7602301Trigger:OnPostComponentPrepare()
    print("Q7602301Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76023)
end

function Q7602301Trigger:TriggerIn()
    print("Q7602301Trigger - TriggerIn")
    actorMgr:GetActor("76023"):CallDelayByQuest("", 2, function(arg1)
        actorMgr:GetActor("76023"):GetQuestNpcActor(npcs.Npc21945.alias, 76023):DoFreeStyle(1070, true, nil, true, true, false, false)
        actorMgr:GetActor("76023"):QuestNarratorTask(datas.NarratorWithId_7602302, function(arg1)
            this:DestroySelf()
            actorUtils.FinishQuestID(false, 7602302)
        end)
    end)

    actorMgr:GetActor("76023"):EnterSceneLookCamera({x = 2499.93, y = 340.858, z = 9290.32}, 0, 3, true, false)
end

function Q7602301Trigger:PreTriggerIn()
    print("Q7602301Trigger - PreTriggerIn")
end

function Q7602301Trigger:LightUpTriggerIn()
    print("Q7602301Trigger - LightUpTriggerIn")
end

function Q7602301Trigger:TriggerOut()
    print("Q7602301Trigger - TriggerOut")
end

return Q7602301Trigger
