require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701123Trigger = class("Q701123Trigger", GadgetActorProxy)
Q701123Trigger.defaultAlias = "Q701123Trigger"
local Q7011ClientConfig = require("Quest/Client/Q7011ClientConfig")

local this
local subIDs = Q7011ClientConfig.SubIDs
local datas = Q7011ClientConfig.Datas
local npcs = Q7011ClientConfig.Npcs
local points = Q7011ClientConfig.Points

function Q701123Trigger:OnPostDataPrepare()
    print("Q701123Trigger - OnPostDataPrepare")
    this = self
end

function Q701123Trigger:OnPostComponentPrepare()
    print("Q701123Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(26.045444, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7011)
end

function Q701123Trigger:TriggerIn()
    print("Q701123Trigger - TriggerIn")
    actorMgr:GetActor("7011"):QuestNarratorTask(datas.NarratorWithId_701118, nil)
    actorMgr:GetActor("7011"):EnterSceneLookCamera({x = 7525.217, y = 239.516, z = 8168.6}, 0.5, 5, false, true)
    actorUtils.FinishQuestWithParam({false}, {701123})
    this:DestroySelf()
end

function Q701123Trigger:PreTriggerIn()
    print("Q701123Trigger - PreTriggerIn")
end

function Q701123Trigger:LightUpTriggerIn()
    print("Q701123Trigger - LightUpTriggerIn")
end

function Q701123Trigger:TriggerOut()
    print("Q701123Trigger - TriggerOut")
end

return Q701123Trigger
