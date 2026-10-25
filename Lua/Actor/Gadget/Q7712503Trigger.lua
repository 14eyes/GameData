require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7712503Trigger = class("Q7712503Trigger", GadgetActorProxy)
Q7712503Trigger.defaultAlias = "Q7712503Trigger"
local Q77125ClientConfig = require("Quest/Client/Q77125ClientConfig")

local this
local subIDs = Q77125ClientConfig.SubIDs
local datas = Q77125ClientConfig.Datas
local npcs = Q77125ClientConfig.Npcs
local points = Q77125ClientConfig.Points

function Q7712503Trigger:OnPostDataPrepare()
    print("Q7712503Trigger - OnPostDataPrepare")
    this = self
end

function Q7712503Trigger:OnPostComponentPrepare()
    print("Q7712503Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(250, 100, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77125)
end

function Q7712503Trigger:TriggerIn()
    print("Q7712503Trigger - TriggerIn")
    actorMgr:GetActor("77125"):QuestNarratorTask(datas.NarratorWithId_97712503, nil)
    actorUtils.FinishQuestID(false, 7712503)
    this:DestroySelf()
end

function Q7712503Trigger:PreTriggerIn()
    print("Q7712503Trigger - PreTriggerIn")
end

function Q7712503Trigger:LightUpTriggerIn()
    print("Q7712503Trigger - LightUpTriggerIn")
end

function Q7712503Trigger:TriggerOut()
    print("Q7712503Trigger - TriggerOut")
end

return Q7712503Trigger
