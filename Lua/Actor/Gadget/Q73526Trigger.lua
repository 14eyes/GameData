require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73526Trigger = class("Q73526Trigger", GadgetActorProxy)
Q73526Trigger.defaultAlias = "Q73526Trigger"
local Q73526ClientConfig = require("Quest/Client/Q73526ClientConfig")

local this
local subIDs = Q73526ClientConfig.SubIDs
local npcs = Q73526ClientConfig.Npcs
local datas = Q73526ClientConfig.Datas

function Q73526Trigger:OnPostDataPrepare()
    print("[MainId: 73526][Trigger: Q73526Trigger] OnPostDataPrepare")
    this = self
end

function Q73526Trigger:OnPostComponentPrepare()
    print("[MainId: 73526][Trigger: Q73526Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73526Trigger:TriggerIn()
    print("[MainId: 73526][Trigger: Q73526Trigger] TriggerIn")
    print("AAAAAAAAAAA")
    local actor = actorMgr:GetActor("73526")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(10, "Q7352601_guide").pos, 1, 2, true, false)
    print("bbbbbbbbbbb")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 73526)
    this:DestroySelf()
end

function Q73526Trigger:PreTriggerIn()
    print("[MainId: 73526][Trigger: Q73526Trigger] PreTriggerIn")
end

function Q73526Trigger:LightUpTriggerIn()
    print("[MainId: 73526][Trigger: Q73526Trigger] LightUpTriggerIn")
end

function Q73526Trigger:TriggerOut()
    print("[MainId: 73526][Trigger: Q73526Trigger] TriggerOut")
end

return Q73526Trigger
