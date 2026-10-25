require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710402Trigger = class("Q7710402Trigger", GadgetActorProxy)
Q7710402Trigger.defaultAlias = "Q7710402Trigger"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710402Trigger:OnPostDataPrepare()
    print("Q7710402Trigger - OnPostDataPrepare")
    this = self
end

function Q7710402Trigger:OnPostComponentPrepare()
    print("Q7710402Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710402Trigger:TriggerIn()
    print("Q7710402Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710402)
    this:DestroySelf()
end

function Q7710402Trigger:PreTriggerIn()
    print("Q7710402Trigger - PreTriggerIn")
end

function Q7710402Trigger:LightUpTriggerIn()
    print("Q7710402Trigger - LightUpTriggerIn")
end

function Q7710402Trigger:TriggerOut()
    print("Q7710402Trigger - TriggerOut")
end

return Q7710402Trigger
