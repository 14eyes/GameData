require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501219Trigger = class("Q501219Trigger", GadgetActorProxy)
Q501219Trigger.defaultAlias = "Q501219Trigger"
local Q5012ClientConfig = require("Quest/Client/Q5012ClientConfig")

local this
local subIDs = Q5012ClientConfig.SubIDs
local datas = Q5012ClientConfig.Datas
local npcs = Q5012ClientConfig.Npcs
local points = Q5012ClientConfig.Points

function Q501219Trigger:OnPostDataPrepare()
    print("Q501219Trigger - OnPostDataPrepare")
    this = self
end

function Q501219Trigger:OnPostComponentPrepare()
    print("Q501219Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5012)
end

function Q501219Trigger:TriggerIn()
    print("Q501219Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 501219)
    actorMgr:GetActor("5012"):QuestNarratorTask(datas.NarratorWithId_501208, nil)
    this:DestroySelf()
end

function Q501219Trigger:PreTriggerIn()
    print("Q501219Trigger - PreTriggerIn")
end

function Q501219Trigger:LightUpTriggerIn()
    print("Q501219Trigger - LightUpTriggerIn")
end

function Q501219Trigger:TriggerOut()
    print("Q501219Trigger - TriggerOut")
end

return Q501219Trigger
