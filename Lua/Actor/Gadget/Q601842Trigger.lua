require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601842Trigger = class("Q601842Trigger", GadgetActorProxy)
Q601842Trigger.defaultAlias = "Q601842Trigger"
local Q6018ClientConfig = require("Quest/Client/Q6018ClientConfig")

local this
local subIDs = Q6018ClientConfig.SubIDs
local datas = Q6018ClientConfig.Datas
local npcs = Q6018ClientConfig.Npcs
local points = Q6018ClientConfig.Points

function Q601842Trigger:OnPostDataPrepare()
    print("Q601842Trigger - OnPostDataPrepare")
    this = self
end

function Q601842Trigger:OnPostComponentPrepare()
    print("Q601842Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6018)
end

function Q601842Trigger:TriggerIn()
    print("Q601842Trigger - TriggerIn")
    actorMgr:GetActor("6018"):QuestNarratorTask(datas.NarratorWithId_601820, nil)
    this:DestroySelf()
end

function Q601842Trigger:PreTriggerIn()
    print("Q601842Trigger - PreTriggerIn")
end

function Q601842Trigger:LightUpTriggerIn()
    print("Q601842Trigger - LightUpTriggerIn")
end

function Q601842Trigger:TriggerOut()
    print("Q601842Trigger - TriggerOut")
end

return Q601842Trigger
