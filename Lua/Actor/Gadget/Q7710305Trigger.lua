require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710305Trigger = class("Q7710305Trigger", GadgetActorProxy)
Q7710305Trigger.defaultAlias = "Q7710305Trigger"
local Q77103ClientConfig = require("Quest/Client/Q77103ClientConfig")

local this
local subIDs = Q77103ClientConfig.SubIDs
local datas = Q77103ClientConfig.Datas
local npcs = Q77103ClientConfig.Npcs
local points = Q77103ClientConfig.Points

function Q7710305Trigger:OnPostDataPrepare()
    print("Q7710305Trigger - OnPostDataPrepare")
    this = self
end

function Q7710305Trigger:OnPostComponentPrepare()
    print("Q7710305Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77103)
end

function Q7710305Trigger:TriggerIn()
    print("Q7710305Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710305)
    this:DestroySelf()
end

function Q7710305Trigger:PreTriggerIn()
    print("Q7710305Trigger - PreTriggerIn")
end

function Q7710305Trigger:LightUpTriggerIn()
    print("Q7710305Trigger - LightUpTriggerIn")
end

function Q7710305Trigger:TriggerOut()
    print("Q7710305Trigger - TriggerOut")
end

return Q7710305Trigger
