require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1404403Trigger_1 = class("Q1404403Trigger_1", GadgetActorProxy)
Q1404403Trigger_1.defaultAlias = "Q1404403Trigger_1"
local Q14044ClientConfig = require("Quest/Client/Q14044ClientConfig")

local this
local subIDs = Q14044ClientConfig.SubIDs
local datas = Q14044ClientConfig.Datas
local npcs = Q14044ClientConfig.Npcs
local points = Q14044ClientConfig.Points

function Q1404403Trigger_1:OnPostDataPrepare()
    print("Q1404403Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q1404403Trigger_1:OnPostComponentPrepare()
    print("Q1404403Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14044)
end

function Q1404403Trigger_1:TriggerIn()
    print("Q1404403Trigger_1 - TriggerIn")
    actorMgr:GetActor("14044"):QuestNarratorTask(datas.NarratorWithId_1404403, nil)
    this:DestroySelf()
end

function Q1404403Trigger_1:PreTriggerIn()
    print("Q1404403Trigger_1 - PreTriggerIn")
end

function Q1404403Trigger_1:LightUpTriggerIn()
    print("Q1404403Trigger_1 - LightUpTriggerIn")
end

function Q1404403Trigger_1:TriggerOut()
    print("Q1404403Trigger_1 - TriggerOut")
end

return Q1404403Trigger_1
