require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710202Trigger = class("Q7710202Trigger", GadgetActorProxy)
Q7710202Trigger.defaultAlias = "Q7710202Trigger"
local Q77102ClientConfig = require("Quest/Client/Q77102ClientConfig")

local this
local subIDs = Q77102ClientConfig.SubIDs
local datas = Q77102ClientConfig.Datas
local npcs = Q77102ClientConfig.Npcs
local points = Q77102ClientConfig.Points

function Q7710202Trigger:OnPostDataPrepare()
    print("Q7710202Trigger - OnPostDataPrepare")
    this = self
end

function Q7710202Trigger:OnPostComponentPrepare()
    print("Q7710202Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77102)
end

function Q7710202Trigger:TriggerIn()
    print("Q7710202Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7710202})
    this:DestroySelf()
end

function Q7710202Trigger:PreTriggerIn()
    print("Q7710202Trigger - PreTriggerIn")
end

function Q7710202Trigger:LightUpTriggerIn()
    print("Q7710202Trigger - LightUpTriggerIn")
end

function Q7710202Trigger:TriggerOut()
    print("Q7710202Trigger - TriggerOut")
end

return Q7710202Trigger
