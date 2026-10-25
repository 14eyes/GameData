require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73507Trigger = class("Q73507Trigger", GadgetActorProxy)
Q73507Trigger.defaultAlias = "Q73507Trigger"
local Q73507ClientConfig = require("Quest/Client/Q73507ClientConfig")

local this
local subIDs = Q73507ClientConfig.SubIDs
local npcs = Q73507ClientConfig.Npcs
local datas = Q73507ClientConfig.Datas

function Q73507Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73507Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73507Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73507"):EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q73507_N30318").pos, 0.5, 3, true, false)
    actorMgr:GetActor("73507"):NarratorOnlyTaskByData(datas.NarratorWithId, nil, 73507)
    this:DestroySelf()
end

function Q73507Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q73507Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q73507Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73507Trigger
