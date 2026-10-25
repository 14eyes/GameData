require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601814Trigger_1 = class("Q601814Trigger_1", GadgetActorProxy)
Q601814Trigger_1.defaultAlias = "Q601814Trigger_1"
local Q6018ClientConfig = require("Quest/Client/Q6018ClientConfig")

local this
local subIDs = Q6018ClientConfig.SubIDs
local datas = Q6018ClientConfig.Datas
local npcs = Q6018ClientConfig.Npcs
local points = Q6018ClientConfig.Points

function Q601814Trigger_1:OnPostDataPrepare()
    print("Q601814Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q601814Trigger_1:OnPostComponentPrepare()
    print("Q601814Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6018)
end

function Q601814Trigger_1:TriggerIn()
    print("Q601814Trigger_1 - TriggerIn")
    actorMgr:GetActor("6018"):QuestNarratorTask(datas.NarratorWithId_601803, nil)
    this:DestroySelf()
end

function Q601814Trigger_1:PreTriggerIn()
    print("Q601814Trigger_1 - PreTriggerIn")
end

function Q601814Trigger_1:LightUpTriggerIn()
    print("Q601814Trigger_1 - LightUpTriggerIn")
end

function Q601814Trigger_1:TriggerOut()
    print("Q601814Trigger_1 - TriggerOut")
end

return Q601814Trigger_1
