require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328701Trigger = class("Q7328701Trigger", GadgetActorProxy)
Q7328701Trigger.defaultAlias = "Q7328701Trigger"
local Q73287ClientConfig = require("Quest/Client/Q73287ClientConfig")

local this
local subIDs = Q73287ClientConfig.SubIDs
local npcs = Q73287ClientConfig.Npcs
local datas = Q73287ClientConfig.Datas

function Q7328701Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328701Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7328701Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73287")
    actor:EnterSceneLookCamera({x = -476.0, y = 230.0, z = 2763.0}, 0.5, 2, false, false)
    actor:NarratorOnlyTaskByData(datas.Narrator_7328701)
    this:DestroySelf()
end

function Q7328701Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7328701Trigger
