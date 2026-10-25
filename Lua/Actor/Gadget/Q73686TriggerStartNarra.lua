require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73686TriggerStartNarra = class("Q73686TriggerStartNarra", GadgetActorProxy)
Q73686TriggerStartNarra.defaultAlias = "Q73686TriggerStartNarra"
local Q73686ClientConfig = require("Quest/Client/Q73686ClientConfig")

local this
local subIDs = Q73686ClientConfig.SubIDs
local npcs = Q73686ClientConfig.Npcs
local datas = Q73686ClientConfig.Datas

function Q73686TriggerStartNarra:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73686TriggerStartNarra:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73686TriggerStartNarra:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73686")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7368601NPC2").pos, 2, 5, true, true)
    actor:NarratorOnlyTaskByData(datas.NarratorWithIdStart)
    this:DestroySelf()
end

function Q73686TriggerStartNarra:TriggerOut()
    print("TriggerOut")
end

return Q73686TriggerStartNarra
