require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602324_Trigger_RocketArea = class("Q7602324_Trigger_RocketArea", GadgetActorProxy)
Q7602324_Trigger_RocketArea.defaultAlias = "Q7602324_Trigger_RocketArea"
local Q76023ClientConfig = require("Quest/Client/Q76023ClientConfig")

local this
local subIDs = Q76023ClientConfig.SubIDs
local datas = Q76023ClientConfig.Datas
local npcs = Q76023ClientConfig.Npcs
local points = Q76023ClientConfig.Points

function Q7602324_Trigger_RocketArea:OnPostDataPrepare()
    print("Q7602324_Trigger_RocketArea - OnPostDataPrepare")
    this = self
end

function Q7602324_Trigger_RocketArea:OnPostComponentPrepare()
    print("Q7602324_Trigger_RocketArea - OnPostComponentPrepare")
    this:AddComponentTrigger(42, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76023)
end

function Q7602324_Trigger_RocketArea:TriggerIn()
    print("Q7602324_Trigger_RocketArea - TriggerIn")
    actorMgr:GetActor("76023"):QuestNarratorTask(datas.NarratorWithId_7602304, nil)
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 7602324)
end

function Q7602324_Trigger_RocketArea:PreTriggerIn()
    print("Q7602324_Trigger_RocketArea - PreTriggerIn")
end

function Q7602324_Trigger_RocketArea:LightUpTriggerIn()
    print("Q7602324_Trigger_RocketArea - LightUpTriggerIn")
end

function Q7602324_Trigger_RocketArea:TriggerOut()
    print("Q7602324_Trigger_RocketArea - TriggerOut")
end

return Q7602324_Trigger_RocketArea
