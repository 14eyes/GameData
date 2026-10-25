require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501216Trigger = class("Q501216Trigger", GadgetActorProxy)
Q501216Trigger.defaultAlias = "Q501216Trigger"
local Q5012ClientConfig = require("Quest/Client/Q5012ClientConfig")

local this
local subIDs = Q5012ClientConfig.SubIDs
local datas = Q5012ClientConfig.Datas
local npcs = Q5012ClientConfig.Npcs
local points = Q5012ClientConfig.Points

function Q501216Trigger:OnPostDataPrepare()
    print("Q501216Trigger - OnPostDataPrepare")
    this = self
end

function Q501216Trigger:OnPostComponentPrepare()
    print("Q501216Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5012)
end

function Q501216Trigger:TriggerIn()
    print("Q501216Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 501216)
    actorMgr:GetActor("5012"):QuestNarratorTask(datas.NarratorWithId_501205, nil)
    this:DestroySelf()
end

function Q501216Trigger:PreTriggerIn()
    print("Q501216Trigger - PreTriggerIn")
end

function Q501216Trigger:LightUpTriggerIn()
    print("Q501216Trigger - LightUpTriggerIn")
end

function Q501216Trigger:TriggerOut()
    print("Q501216Trigger - TriggerOut")
end

return Q501216Trigger
