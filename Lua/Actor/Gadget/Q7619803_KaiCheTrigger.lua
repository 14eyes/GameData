require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7619803_KaiCheTrigger = class("Q7619803_KaiCheTrigger", GadgetActorProxy)
Q7619803_KaiCheTrigger.defaultAlias = "Q7619803_KaiCheTrigger"
local Q76198ClientConfig = require("Quest/Client/Q76198ClientConfig")

local this
local subIDs = Q76198ClientConfig.SubIDs
local datas = Q76198ClientConfig.Datas
local npcs = Q76198ClientConfig.Npcs
local points = Q76198ClientConfig.Points

function Q7619803_KaiCheTrigger:OnPostDataPrepare()
    print("Q7619803_KaiCheTrigger - OnPostDataPrepare")
    this = self
end

function Q7619803_KaiCheTrigger:OnPostComponentPrepare()
    print("Q7619803_KaiCheTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76198)
end

function Q7619803_KaiCheTrigger:TriggerIn()
    print("Q7619803_KaiCheTrigger - TriggerIn")
    actorMgr:GetActor("76198"):QuestNarratorTask(datas.NarratorWithId_7619801, nil)
    this:DestroySelf()
end

function Q7619803_KaiCheTrigger:PreTriggerIn()
    print("Q7619803_KaiCheTrigger - PreTriggerIn")
end

function Q7619803_KaiCheTrigger:LightUpTriggerIn()
    print("Q7619803_KaiCheTrigger - LightUpTriggerIn")
end

function Q7619803_KaiCheTrigger:TriggerOut()
    print("Q7619803_KaiCheTrigger - TriggerOut")
end

return Q7619803_KaiCheTrigger
