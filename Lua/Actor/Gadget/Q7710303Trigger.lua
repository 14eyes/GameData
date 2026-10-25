require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710303Trigger = class("Q7710303Trigger", GadgetActorProxy)
Q7710303Trigger.defaultAlias = "Q7710303Trigger"
local Q77103ClientConfig = require("Quest/Client/Q77103ClientConfig")

local this
local subIDs = Q77103ClientConfig.SubIDs
local datas = Q77103ClientConfig.Datas
local npcs = Q77103ClientConfig.Npcs
local points = Q77103ClientConfig.Points

function Q7710303Trigger:OnPostDataPrepare()
    print("Q7710303Trigger - OnPostDataPrepare")
    this = self
end

function Q7710303Trigger:OnPostComponentPrepare()
    print("Q7710303Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77103)
end

function Q7710303Trigger:TriggerIn()
    print("Q7710303Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710303)
    this:DestroySelf()
end

function Q7710303Trigger:PreTriggerIn()
    print("Q7710303Trigger - PreTriggerIn")
end

function Q7710303Trigger:LightUpTriggerIn()
    print("Q7710303Trigger - LightUpTriggerIn")
end

function Q7710303Trigger:TriggerOut()
    print("Q7710303Trigger - TriggerOut")
end

return Q7710303Trigger
