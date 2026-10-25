require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501231Trigger = class("Q501231Trigger", GadgetActorProxy)
Q501231Trigger.defaultAlias = "Q501231Trigger"
local Q5012ClientConfig = require("Quest/Client/Q5012ClientConfig")

local this
local subIDs = Q5012ClientConfig.SubIDs
local datas = Q5012ClientConfig.Datas
local npcs = Q5012ClientConfig.Npcs
local points = Q5012ClientConfig.Points

function Q501231Trigger:OnPostDataPrepare()
    print("Q501231Trigger - OnPostDataPrepare")
    this = self
end

function Q501231Trigger:OnPostComponentPrepare()
    print("Q501231Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5012)
end

function Q501231Trigger:TriggerIn()
    print("Q501231Trigger - TriggerIn")
    actorMgr:GetActor("5012"):QuestNarratorTask(datas.NarratorWithId_501216, nil)
    this:DestroySelf()
end

function Q501231Trigger:PreTriggerIn()
    print("Q501231Trigger - PreTriggerIn")
end

function Q501231Trigger:LightUpTriggerIn()
    print("Q501231Trigger - LightUpTriggerIn")
end

function Q501231Trigger:TriggerOut()
    print("Q501231Trigger - TriggerOut")
end

return Q501231Trigger
