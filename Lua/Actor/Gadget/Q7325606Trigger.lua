require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7325606Trigger = class("Q7325606Trigger", GadgetActorProxy)
Q7325606Trigger.defaultAlias = "Q7325606Trigger"
local Q73256ClientConfig = require("Quest/Client/Q73256ClientConfig")

local this
local subIDs = Q73256ClientConfig.SubIDs
local npcs = Q73256ClientConfig.Npcs
local points = Q73256ClientConfig.Points
local datas = Q73256ClientConfig.Datas

function Q7325606Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7325606Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7325606Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7325606)
    this:DestroySelf()
end

function Q7325606Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7325606Trigger
