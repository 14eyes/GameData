require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72804Trigger = class("Q72804Trigger", GadgetActorProxy)
Q72804Trigger.defaultAlias = "Q72804Trigger"
local Q72804ClientConfig = require("Quest/Client/Q72804ClientConfig")

local this
local subIDs = Q72804ClientConfig.SubIDs
local npcs = Q72804ClientConfig.Npcs
local datas = Q72804ClientConfig.Datas

function Q72804Trigger:OnPostDataPrepare()
    print("[MainId: 72804][Trigger: Q72804Trigger] OnPostDataPrepare")
    this = self
end

function Q72804Trigger:OnPostComponentPrepare()
    print("[MainId: 72804][Trigger: Q72804Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(34, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q72804Trigger:TriggerIn()
    print("[MainId: 72804][Trigger: Q72804Trigger] TriggerIn")
    local actor = actorMgr:GetActor("72804")
    actor:NarratorOnlyTaskByData(datas.kaiche_onroad_01, nil, 72804)
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7280402GuidePoint").pos, 0, 2, true, false)
    this:DestroySelf()
end

function Q72804Trigger:TriggerOut()
    print("[MainId: 72804][Trigger: Q72804Trigger] TriggerOut")
end

return Q72804Trigger
