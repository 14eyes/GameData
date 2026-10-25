require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7333006Trigger = class("Q7333006Trigger", GadgetActorProxy)
Q7333006Trigger.defaultAlias = "Q7333006Trigger"
local Q73330ClientConfig = require("Quest/Client/Q73330ClientConfig")

local this
local subIDs = Q73330ClientConfig.SubIDs
local npcs = Q73330ClientConfig.Npcs
local points = Q73330ClientConfig.Points
local datas = Q73330ClientConfig.Datas

function Q7333006Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7333006Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7333006Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7333006)
    this:DestroySelf()
end

function Q7333006Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7333006Trigger
