require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323103Trigger = class("Q7323103Trigger", GadgetActorProxy)
Q7323103Trigger.defaultAlias = "Q7323103Trigger"
local Q73231ClientConfig = require("Quest/Client/Q73231ClientConfig")

local this
local subIDs = Q73231ClientConfig.SubIDs
local npcs = Q73231ClientConfig.Npcs
local points = Q73231ClientConfig.Points
local datas = Q73231ClientConfig.Datas

function Q7323103Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7323103Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7323103Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7323103)
    this:DestroySelf()
end

function Q7323103Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323103Trigger
