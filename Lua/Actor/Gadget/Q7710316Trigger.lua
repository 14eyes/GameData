require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710316Trigger = class("Q7710316Trigger", GadgetActorProxy)
Q7710316Trigger.defaultAlias = "Q7710316Trigger"
local Q77103ClientConfig = require("Quest/Client/Q77103ClientConfig")

local this
local subIDs = Q77103ClientConfig.SubIDs
local datas = Q77103ClientConfig.Datas
local npcs = Q77103ClientConfig.Npcs
local points = Q77103ClientConfig.Points

function Q7710316Trigger:OnPostDataPrepare()
    print("Q7710316Trigger - OnPostDataPrepare")
    this = self
end

function Q7710316Trigger:OnPostComponentPrepare()
    print("Q7710316Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77103)
end

function Q7710316Trigger:TriggerIn()
    print("Q7710316Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710316)
    this:DestroySelf()
end

function Q7710316Trigger:PreTriggerIn()
    print("Q7710316Trigger - PreTriggerIn")
end

function Q7710316Trigger:LightUpTriggerIn()
    print("Q7710316Trigger - LightUpTriggerIn")
end

function Q7710316Trigger:TriggerOut()
    print("Q7710316Trigger - TriggerOut")
end

return Q7710316Trigger
