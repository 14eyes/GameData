require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73686Trigger = class("Q73686Trigger", GadgetActorProxy)
Q73686Trigger.defaultAlias = "Q73686Trigger"
local Q73686ClientConfig = require("Quest/Client/Q73686ClientConfig")

local this
local subIDs = Q73686ClientConfig.SubIDs
local npcs = Q73686ClientConfig.Npcs
local datas = Q73686ClientConfig.Datas

function Q73686Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73686Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73686Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73686"):EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7368601NPC2").pos, 0, 2.5, true, true)
    actorMgr:GetActor("73686"):NarratorOnlyTaskByData(datas.NarratorWithId)
    this:DestroySelf()
end

function Q73686Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73686Trigger
