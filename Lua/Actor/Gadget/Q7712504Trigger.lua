require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7712504Trigger = class("Q7712504Trigger", GadgetActorProxy)
Q7712504Trigger.defaultAlias = "Q7712504Trigger"
local Q77125ClientConfig = require("Quest/Client/Q77125ClientConfig")

local this
local subIDs = Q77125ClientConfig.SubIDs
local datas = Q77125ClientConfig.Datas
local npcs = Q77125ClientConfig.Npcs
local points = Q77125ClientConfig.Points

function Q7712504Trigger:OnPostDataPrepare()
    print("Q7712504Trigger - OnPostDataPrepare")
    this = self
end

function Q7712504Trigger:OnPostComponentPrepare()
    print("Q7712504Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77125)
end

function Q7712504Trigger:TriggerIn()
    print("Q7712504Trigger - TriggerIn")
    actorMgr:GetActor("77125"):QuestNarratorTask(datas.NarratorWithId_97712504, nil)
    actorUtils.FinishQuestWithParam({false}, {7712504})
    this:DestroySelf()
end

function Q7712504Trigger:PreTriggerIn()
    print("Q7712504Trigger - PreTriggerIn")
end

function Q7712504Trigger:LightUpTriggerIn()
    print("Q7712504Trigger - LightUpTriggerIn")
end

function Q7712504Trigger:TriggerOut()
    print("Q7712504Trigger - TriggerOut")
end

return Q7712504Trigger
