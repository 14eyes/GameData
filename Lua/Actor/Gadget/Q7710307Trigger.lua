require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710307Trigger = class("Q7710307Trigger", GadgetActorProxy)
Q7710307Trigger.defaultAlias = "Q7710307Trigger"
local Q77103ClientConfig = require("Quest/Client/Q77103ClientConfig")

local this
local subIDs = Q77103ClientConfig.SubIDs
local datas = Q77103ClientConfig.Datas
local npcs = Q77103ClientConfig.Npcs
local points = Q77103ClientConfig.Points

function Q7710307Trigger:OnPostDataPrepare()
    print("Q7710307Trigger - OnPostDataPrepare")
    this = self
end

function Q7710307Trigger:OnPostComponentPrepare()
    print("Q7710307Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77103)
end

function Q7710307Trigger:TriggerIn()
    print("Q7710307Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710307)
    this:DestroySelf()
end

function Q7710307Trigger:PreTriggerIn()
    print("Q7710307Trigger - PreTriggerIn")
end

function Q7710307Trigger:LightUpTriggerIn()
    print("Q7710307Trigger - LightUpTriggerIn")
end

function Q7710307Trigger:TriggerOut()
    print("Q7710307Trigger - TriggerOut")
end

return Q7710307Trigger
