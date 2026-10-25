require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1404401Trigger_Narrative = class("Q1404401Trigger_Narrative", GadgetActorProxy)
Q1404401Trigger_Narrative.defaultAlias = "Q1404401Trigger_Narrative"
local Q14044ClientConfig = require("Quest/Client/Q14044ClientConfig")

local this
local subIDs = Q14044ClientConfig.SubIDs
local datas = Q14044ClientConfig.Datas
local npcs = Q14044ClientConfig.Npcs
local points = Q14044ClientConfig.Points

function Q1404401Trigger_Narrative:OnPostDataPrepare()
    print("Q1404401Trigger_Narrative - OnPostDataPrepare")
    this = self
end

function Q1404401Trigger_Narrative:OnPostComponentPrepare()
    print("Q1404401Trigger_Narrative - OnPostComponentPrepare")
    this:AddComponentTrigger(34.896862, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14044)
end

function Q1404401Trigger_Narrative:TriggerIn()
    print("Q1404401Trigger_Narrative - TriggerIn")
    actorMgr:GetActor("14044"):QuestNarratorTask(datas.NarratorWithId_1404401, nil)
    actorMgr:GetActor("14044"):EnterSceneLookCamera({x = 3433.702, y = 454.922, z = 4618.988}, 0, 3, false, true)
    this:DestroySelf()
end

function Q1404401Trigger_Narrative:PreTriggerIn()
    print("Q1404401Trigger_Narrative - PreTriggerIn")
end

function Q1404401Trigger_Narrative:LightUpTriggerIn()
    print("Q1404401Trigger_Narrative - LightUpTriggerIn")
end

function Q1404401Trigger_Narrative:TriggerOut()
    print("Q1404401Trigger_Narrative - TriggerOut")
end

return Q1404401Trigger_Narrative
