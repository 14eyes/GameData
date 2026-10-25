require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7750401Trigger = class("Q7750401Trigger", GadgetActorProxy)
Q7750401Trigger.defaultAlias = "Q7750401Trigger"
local Q77504ClientConfig = require("Quest/Client/Q77504ClientConfig")

local this
local subIDs = Q77504ClientConfig.SubIDs
local datas = Q77504ClientConfig.Datas
local npcs = Q77504ClientConfig.Npcs
local points = Q77504ClientConfig.Points

function Q7750401Trigger:OnPostDataPrepare()
    print("Q7750401Trigger - OnPostDataPrepare")
    this = self
end

function Q7750401Trigger:OnPostComponentPrepare()
    print("Q7750401Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(250, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77504)
end

function Q7750401Trigger:TriggerIn()
    print("Q7750401Trigger - TriggerIn")
    actorMgr:GetActor("77504"):QuestNarratorTask(datas.NarratorWithId_775040101, nil)
    actorUtils.FinishQuestWithParam({false}, {7750401})
    this:DestroySelf()
end

function Q7750401Trigger:PreTriggerIn()
    print("Q7750401Trigger - PreTriggerIn")
end

function Q7750401Trigger:LightUpTriggerIn()
    print("Q7750401Trigger - LightUpTriggerIn")
end

function Q7750401Trigger:TriggerOut()
    print("Q7750401Trigger - TriggerOut")
end

return Q7750401Trigger
