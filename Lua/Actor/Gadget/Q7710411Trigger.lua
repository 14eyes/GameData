require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710411Trigger = class("Q7710411Trigger", GadgetActorProxy)
Q7710411Trigger.defaultAlias = "Q7710411Trigger"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710411Trigger:OnPostDataPrepare()
    print("Q7710411Trigger - OnPostDataPrepare")
    this = self
end

function Q7710411Trigger:OnPostComponentPrepare()
    print("Q7710411Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710411Trigger:TriggerIn()
    print("Q7710411Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710411)
    this:DestroySelf()
end

function Q7710411Trigger:PreTriggerIn()
    print("Q7710411Trigger - PreTriggerIn")
end

function Q7710411Trigger:LightUpTriggerIn()
    print("Q7710411Trigger - LightUpTriggerIn")
end

function Q7710411Trigger:TriggerOut()
    print("Q7710411Trigger - TriggerOut")
end

return Q7710411Trigger
