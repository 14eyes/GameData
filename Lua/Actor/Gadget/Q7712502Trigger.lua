require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7712502Trigger = class("Q7712502Trigger", GadgetActorProxy)
Q7712502Trigger.defaultAlias = "Q7712502Trigger"
local Q77125ClientConfig = require("Quest/Client/Q77125ClientConfig")

local this
local subIDs = Q77125ClientConfig.SubIDs
local datas = Q77125ClientConfig.Datas
local npcs = Q77125ClientConfig.Npcs
local points = Q77125ClientConfig.Points

function Q7712502Trigger:OnPostDataPrepare()
    print("Q7712502Trigger - OnPostDataPrepare")
    this = self
end

function Q7712502Trigger:OnPostComponentPrepare()
    print("Q7712502Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(250, 100, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77125)
end

function Q7712502Trigger:TriggerIn()
    print("Q7712502Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7712502})
    actorMgr:GetActor("77125"):QuestNarratorTask(datas.NarratorWithId_97712502, nil)
    this:DestroySelf()
end

function Q7712502Trigger:PreTriggerIn()
    print("Q7712502Trigger - PreTriggerIn")
end

function Q7712502Trigger:LightUpTriggerIn()
    print("Q7712502Trigger - LightUpTriggerIn")
end

function Q7712502Trigger:TriggerOut()
    print("Q7712502Trigger - TriggerOut")
end

return Q7712502Trigger
