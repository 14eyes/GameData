require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501214Trigger = class("Q501214Trigger", GadgetActorProxy)
Q501214Trigger.defaultAlias = "Q501214Trigger"
local Q5012ClientConfig = require("Quest/Client/Q5012ClientConfig")

local this
local subIDs = Q5012ClientConfig.SubIDs
local datas = Q5012ClientConfig.Datas
local npcs = Q5012ClientConfig.Npcs
local points = Q5012ClientConfig.Points

function Q501214Trigger:OnPostDataPrepare()
    print("Q501214Trigger - OnPostDataPrepare")
    this = self
end

function Q501214Trigger:OnPostComponentPrepare()
    print("Q501214Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5012)
end

function Q501214Trigger:TriggerIn()
    print("Q501214Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 501214)
    actorMgr:GetActor("5012"):QuestNarratorTask(datas.NarratorWithId_501206, nil)
    this:DestroySelf()
end

function Q501214Trigger:PreTriggerIn()
    print("Q501214Trigger - PreTriggerIn")
end

function Q501214Trigger:LightUpTriggerIn()
    print("Q501214Trigger - LightUpTriggerIn")
end

function Q501214Trigger:TriggerOut()
    print("Q501214Trigger - TriggerOut")
end

return Q501214Trigger
