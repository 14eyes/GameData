require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7331002Trigger = class("Q7331002Trigger", GadgetActorProxy)
Q7331002Trigger.defaultAlias = "Q7331002Trigger"
local Q73310ClientConfig = require("Quest/Client/Q73310ClientConfig")

local this
local subIDs = Q73310ClientConfig.SubIDs
local npcs = Q73310ClientConfig.Npcs
local points = Q73310ClientConfig.Points
local datas = Q73310ClientConfig.Datas

function Q7331002Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7331002Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7331002Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7331002)
    this:DestroySelf()
end

function Q7331002Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7331002Trigger
