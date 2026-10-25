require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305602Trigger = class("Q7305602Trigger", GadgetActorProxy)
Q7305602Trigger.defaultAlias = "Q7305602Trigger"
local Q73056ClientConfig = require("Quest/Client/Q73056ClientConfig")

local subIDs = Q73056ClientConfig.SubIDs
local npcs = Q73056ClientConfig.Npcs
local datas = Q73056ClientConfig.Datas

function Q7305602Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305602Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, sceneData:GetDummyPoint(3, "").pos, self.TriggerIn, self.TriggerOut)
end

function Q7305602Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73056"):NarratorOnlyTask(datas.NarratorTable, nil, "")
    self:DestroySelf()
end

function Q7305602Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305602Trigger
