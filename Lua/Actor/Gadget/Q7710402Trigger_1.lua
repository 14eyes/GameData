require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710402Trigger_1 = class("Q7710402Trigger_1", GadgetActorProxy)
Q7710402Trigger_1.defaultAlias = "Q7710402Trigger_1"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710402Trigger_1:OnPostDataPrepare()
    print("Q7710402Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7710402Trigger_1:OnPostComponentPrepare()
    print("Q7710402Trigger_1 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(4, 15.602565, 16.655514, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710402Trigger_1:TriggerIn()
    print("Q7710402Trigger_1 - TriggerIn")
    actorMgr:GetActor("77104"):EnterSceneLookCamera({x = 8354.354, y = 505.332, z = 6246.187}, 0.5, 4, true, false)
    actorMgr:GetActor("77104"):QuestNarratorTask(datas.NarratorWithId_7710402, nil)
    this:DestroySelf()
end

function Q7710402Trigger_1:PreTriggerIn()
    print("Q7710402Trigger_1 - PreTriggerIn")
end

function Q7710402Trigger_1:LightUpTriggerIn()
    print("Q7710402Trigger_1 - LightUpTriggerIn")
end

function Q7710402Trigger_1:TriggerOut()
    print("Q7710402Trigger_1 - TriggerOut")
end

return Q7710402Trigger_1
