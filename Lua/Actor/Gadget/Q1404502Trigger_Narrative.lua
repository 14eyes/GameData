require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1404502Trigger_Narrative = class("Q1404502Trigger_Narrative", GadgetActorProxy)
Q1404502Trigger_Narrative.defaultAlias = "Q1404502Trigger_Narrative"
local Q14045ClientConfig = require("Quest/Client/Q14045ClientConfig")

local this
local subIDs = Q14045ClientConfig.SubIDs
local datas = Q14045ClientConfig.Datas
local npcs = Q14045ClientConfig.Npcs
local points = Q14045ClientConfig.Points

function Q1404502Trigger_Narrative:OnPostDataPrepare()
    print("Q1404502Trigger_Narrative - OnPostDataPrepare")
    this = self
end

function Q1404502Trigger_Narrative:OnPostComponentPrepare()
    print("Q1404502Trigger_Narrative - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14045)
end

function Q1404502Trigger_Narrative:TriggerIn()
    print("Q1404502Trigger_Narrative - TriggerIn")
    actorMgr:GetActor("14045"):CallDelayByQuest("1", 1, function(arg1)
        actorMgr:GetActor("14045"):QuestNarratorTask(datas.NarratorWithId_1404502, nil)
        this:DestroySelf()
    end)
end

function Q1404502Trigger_Narrative:PreTriggerIn()
    print("Q1404502Trigger_Narrative - PreTriggerIn")
end

function Q1404502Trigger_Narrative:LightUpTriggerIn()
    print("Q1404502Trigger_Narrative - LightUpTriggerIn")
end

function Q1404502Trigger_Narrative:TriggerOut()
    print("Q1404502Trigger_Narrative - TriggerOut")
end

return Q1404502Trigger_Narrative
