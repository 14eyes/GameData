require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1917316Trigger = class("Q1917316Trigger", GadgetActorProxy)
Q1917316Trigger.defaultAlias = "Q1917316Trigger"
local Q19173ClientConfig = require("Quest/Client/Q19173ClientConfig")

local this
local subIDs = Q19173ClientConfig.SubIDs
local npcs = Q19173ClientConfig.Npcs
local points = Q19173ClientConfig.Points

function Q1917316Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1917316Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1917316Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1917316)
    this:DestroySelf()
end

function Q1917316Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1917316Trigger
