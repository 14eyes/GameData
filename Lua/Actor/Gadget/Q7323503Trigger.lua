require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323503Trigger = class("Q7323503Trigger", GadgetActorProxy)
Q7323503Trigger.defaultAlias = "Q7323503Trigger"
local Q73235ClientConfig = require("Quest/Client/Q73235ClientConfig")

local this
local subIDs = Q73235ClientConfig.SubIDs
local npcs = Q73235ClientConfig.Npcs
local points = Q73235ClientConfig.Points
local datas = Q73235ClientConfig.Datas

function Q7323503Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7323503Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7323503Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7323503)
    this:DestroySelf()
end

function Q7323503Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323503Trigger
