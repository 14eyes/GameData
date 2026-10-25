require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328505Trigger = class("Q7328505Trigger", GadgetActorProxy)
Q7328505Trigger.defaultAlias = "Q7328505Trigger"
local Q73285ClientConfig = require("Quest/Client/Q73285ClientConfig")

local this
local subIDs = Q73285ClientConfig.SubIDs
local npcs = Q73285ClientConfig.Npcs
local points = Q73285ClientConfig.Points
local datas = Q73285ClientConfig.Datas

function Q7328505Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328505Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7328505Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7328505)
    this:DestroySelf()
end

function Q7328505Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7328505Trigger
