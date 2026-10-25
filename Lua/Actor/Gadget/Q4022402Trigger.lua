require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022402Trigger = class("Q4022402Trigger", GadgetActorProxy)
Q4022402Trigger.defaultAlias = "Q4022402Trigger"
local Q40224ClientConfig = require("Quest/Client/Q40224ClientConfig")

local this
local subIDs = Q40224ClientConfig.SubIDs
local datas = Q40224ClientConfig.Datas
local npcs = Q40224ClientConfig.Npcs
local points = Q40224ClientConfig.Points

function Q4022402Trigger:OnPostDataPrepare()
    print("Q4022402Trigger - OnPostDataPrepare")
    this = self
end

function Q4022402Trigger:OnPostComponentPrepare()
    print("Q4022402Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40224)
end

function Q4022402Trigger:TriggerIn()
    print("Q4022402Trigger - TriggerIn")
    actorMgr:GetActor("40224"):QuestNarratorTask(datas.NarratorWithId4022402, nil)
    this:DestroySelf()
end

function Q4022402Trigger:PreTriggerIn()
    print("Q4022402Trigger - PreTriggerIn")
end

function Q4022402Trigger:LightUpTriggerIn()
    print("Q4022402Trigger - LightUpTriggerIn")
end

function Q4022402Trigger:TriggerOut()
    print("Q4022402Trigger - TriggerOut")
end

return Q4022402Trigger
