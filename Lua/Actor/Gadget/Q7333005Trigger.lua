require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7333005Trigger = class("Q7333005Trigger", GadgetActorProxy)
Q7333005Trigger.defaultAlias = "Q7333005Trigger"
local Q73330ClientConfig = require("Quest/Client/Q73330ClientConfig")

local this
local subIDs = Q73330ClientConfig.SubIDs
local npcs = Q73330ClientConfig.Npcs
local points = Q73330ClientConfig.Points
local datas = Q73330ClientConfig.Datas

function Q7333005Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7333005Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7333005Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7333005)
    this:DestroySelf()
end

function Q7333005Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7333005Trigger
