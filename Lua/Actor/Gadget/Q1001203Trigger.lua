require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1001203Trigger = class("Q1001203Trigger", GadgetActorProxy)
Q1001203Trigger.defaultAlias = "Q1001203Trigger"
local Q10012ClientConfig = require("Quest/Client/Q10012ClientConfig")

local this
local subIDs = Q10012ClientConfig.SubIDs
local datas = Q10012ClientConfig.Datas
local npcs = Q10012ClientConfig.Npcs

function Q1001203Trigger:OnPostDataPrepare()
    print("Q1001203Trigger - OnPostDataPrepare")
    this = self
end

function Q1001203Trigger:OnPostComponentPrepare()
    print("Q1001203Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(16, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10012)
end

function Q1001203Trigger:TriggerIn()
    print("Q1001203Trigger - TriggerIn")
    actorMgr:GetActor("10012"):QuestNarratorTask(datas.NarratorWithId_1001203, nil)
    this:DestroySelf()
end

function Q1001203Trigger:PreTriggerIn()
    print("Q1001203Trigger - PreTriggerIn")
end

function Q1001203Trigger:LightUpTriggerIn()
    print("Q1001203Trigger - LightUpTriggerIn")
end

function Q1001203Trigger:TriggerOut()
    print("Q1001203Trigger - TriggerOut")
end

return Q1001203Trigger
