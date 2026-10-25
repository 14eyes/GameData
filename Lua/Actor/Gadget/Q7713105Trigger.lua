require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713105Trigger = class("Q7713105Trigger", GadgetActorProxy)
Q7713105Trigger.defaultAlias = "Q7713105Trigger"
local Q77131ClientConfig = require("Quest/Client/Q77131ClientConfig")

local this
local subIDs = Q77131ClientConfig.SubIDs
local datas = Q77131ClientConfig.Datas
local npcs = Q77131ClientConfig.Npcs
local points = Q77131ClientConfig.Points

function Q7713105Trigger:OnPostDataPrepare()
    print("Q7713105Trigger - OnPostDataPrepare")
    this = self
end

function Q7713105Trigger:OnPostComponentPrepare()
    print("Q7713105Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77131)
end

function Q7713105Trigger:TriggerIn()
    print("Q7713105Trigger - TriggerIn")
    actorMgr:GetActor("77131"):QuestNarratorTask(datas.NarratorWithId_7713105, nil)
    this:DestroySelf()
end

function Q7713105Trigger:PreTriggerIn()
    print("Q7713105Trigger - PreTriggerIn")
end

function Q7713105Trigger:LightUpTriggerIn()
    print("Q7713105Trigger - LightUpTriggerIn")
end

function Q7713105Trigger:TriggerOut()
    print("Q7713105Trigger - TriggerOut")
end

return Q7713105Trigger
