require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501202Trigger = class("Q501202Trigger", GadgetActorProxy)
Q501202Trigger.defaultAlias = "Q501202Trigger"
local Q5012ClientConfig = require("Quest/Client/Q5012ClientConfig")

local this
local subIDs = Q5012ClientConfig.SubIDs
local datas = Q5012ClientConfig.Datas
local npcs = Q5012ClientConfig.Npcs
local points = Q5012ClientConfig.Points

function Q501202Trigger:OnPostDataPrepare()
    print("Q501202Trigger - OnPostDataPrepare")
    this = self
end

function Q501202Trigger:OnPostComponentPrepare()
    print("Q501202Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5012)
end

function Q501202Trigger:TriggerIn()
    print("Q501202Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 501202)
    actorMgr:GetActor("5012"):QuestNarratorTask(datas.NarratorWithId_501201, nil)
    this:DestroySelf()
end

function Q501202Trigger:PreTriggerIn()
    print("Q501202Trigger - PreTriggerIn")
end

function Q501202Trigger:LightUpTriggerIn()
    print("Q501202Trigger - LightUpTriggerIn")
end

function Q501202Trigger:TriggerOut()
    print("Q501202Trigger - TriggerOut")
end

return Q501202Trigger
