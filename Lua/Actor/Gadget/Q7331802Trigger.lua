require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7331802Trigger = class("Q7331802Trigger", GadgetActorProxy)
Q7331802Trigger.defaultAlias = "Q7331802Trigger"
local Q73318ClientConfig = require("Quest/Client/Q73318ClientConfig")

local this
local subIDs = Q73318ClientConfig.SubIDs
local npcs = Q73318ClientConfig.Npcs
local points = Q73318ClientConfig.Points
local datas = Q73318ClientConfig.Datas

function Q7331802Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7331802Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7331802Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7331802)
    this:DestroySelf()
end

function Q7331802Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7331802Trigger
