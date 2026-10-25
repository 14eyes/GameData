require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328502Trigger = class("Q7328502Trigger", GadgetActorProxy)
Q7328502Trigger.defaultAlias = "Q7328502Trigger"
local Q73285ClientConfig = require("Quest/Client/Q73285ClientConfig")

local this
local subIDs = Q73285ClientConfig.SubIDs
local npcs = Q73285ClientConfig.Npcs
local points = Q73285ClientConfig.Points
local datas = Q73285ClientConfig.Datas

function Q7328502Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328502Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7328502Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7328502)
    this:DestroySelf()
end

function Q7328502Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7328502Trigger
