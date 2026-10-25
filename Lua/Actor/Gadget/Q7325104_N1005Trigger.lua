require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7325104_N1005Trigger = class("Q7325104_N1005Trigger", GadgetActorProxy)
Q7325104_N1005Trigger.defaultAlias = "Q7325104_N1005Trigger"
local Q73251ClientConfig = require("Quest/Client/Q73251ClientConfig")

local this
local subIDs = Q73251ClientConfig.SubIDs
local npcs = Q73251ClientConfig.Npcs
local points = Q73251ClientConfig.Points
local datas = Q73251ClientConfig.Datas

function Q7325104_N1005Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7325104_N1005Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7325104_N1005Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7325103)
    this:DestroySelf()
end

function Q7325104_N1005Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7325104_N1005Trigger
