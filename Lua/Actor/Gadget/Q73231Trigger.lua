require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73231Trigger = class("Q73231Trigger", GadgetActorProxy)
Q73231Trigger.defaultAlias = "Q73231Trigger"
local Q73231ClientConfig = require("Quest/Client/Q73231ClientConfig")

local this
local subIDs = Q73231ClientConfig.SubIDs
local npcs = Q73231ClientConfig.Npcs
local points = Q73231ClientConfig.Points
local datas = Q73231ClientConfig.Datas

function Q73231Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73231Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73231Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7323114)
    this:DestroySelf()
end

function Q73231Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73231Trigger
