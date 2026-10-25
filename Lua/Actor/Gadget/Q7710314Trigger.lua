require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710314Trigger = class("Q7710314Trigger", GadgetActorProxy)
Q7710314Trigger.defaultAlias = "Q7710314Trigger"
local Q77103ClientConfig = require("Quest/Client/Q77103ClientConfig")

local this
local subIDs = Q77103ClientConfig.SubIDs
local datas = Q77103ClientConfig.Datas
local npcs = Q77103ClientConfig.Npcs
local points = Q77103ClientConfig.Points

function Q7710314Trigger:OnPostDataPrepare()
    print("Q7710314Trigger - OnPostDataPrepare")
    this = self
end

function Q7710314Trigger:OnPostComponentPrepare()
    print("Q7710314Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77103)
end

function Q7710314Trigger:TriggerIn()
    print("Q7710314Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710314)
    this:DestroySelf()
end

function Q7710314Trigger:PreTriggerIn()
    print("Q7710314Trigger - PreTriggerIn")
end

function Q7710314Trigger:LightUpTriggerIn()
    print("Q7710314Trigger - LightUpTriggerIn")
end

function Q7710314Trigger:TriggerOut()
    print("Q7710314Trigger - TriggerOut")
end

return Q7710314Trigger
