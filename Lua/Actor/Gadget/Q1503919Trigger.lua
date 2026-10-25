require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503919Trigger = class("Q1503919Trigger", GadgetActorProxy)
Q1503919Trigger.defaultAlias = "Q1503919Trigger"
local Q15039ClientConfig = require("Quest/Client/Q15039ClientConfig")

local this
local subIDs = Q15039ClientConfig.SubIDs
local datas = Q15039ClientConfig.Datas
local npcs = Q15039ClientConfig.Npcs
local points = Q15039ClientConfig.Points

function Q1503919Trigger:OnPostDataPrepare()
    print("Q1503919Trigger - OnPostDataPrepare")
    this = self
end

function Q1503919Trigger:OnPostComponentPrepare()
    print("Q1503919Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15039)
end

function Q1503919Trigger:TriggerIn()
    print("Q1503919Trigger - TriggerIn")
    actorMgr:GetActor("15039"):QuestNarratorTask(datas.NarratorWithId_1503908, nil)
    actorMgr:GetActor("15039"):SetQuestVarByMainId(4, 1)
    this:DestroySelf()
end

function Q1503919Trigger:PreTriggerIn()
    print("Q1503919Trigger - PreTriggerIn")
end

function Q1503919Trigger:LightUpTriggerIn()
    print("Q1503919Trigger - LightUpTriggerIn")
end

function Q1503919Trigger:TriggerOut()
    print("Q1503919Trigger - TriggerOut")
end

return Q1503919Trigger
