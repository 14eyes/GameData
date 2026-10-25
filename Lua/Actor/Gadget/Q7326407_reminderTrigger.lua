require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7326407_reminderTrigger = class("Q7326407_reminderTrigger", GadgetActorProxy)
Q7326407_reminderTrigger.defaultAlias = "Q7326407_reminderTrigger"
local Q73264ClientConfig = require("Quest/Client/Q73264ClientConfig")

local this
local subIDs = Q73264ClientConfig.SubIDs
local npcs = Q73264ClientConfig.Npcs
local datas = Q73264ClientConfig.Datas

function Q7326407_reminderTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7326407_reminderTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7326407_reminderTrigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73264")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId07)
    actor:EnterSceneLookCamera({x = -1369.0, y = 33.48, z = 5218.5}, 0.5, 4, false, false)
    this:DestroySelf()
end

function Q7326407_reminderTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7326407_reminderTrigger
