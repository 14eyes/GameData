require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local BabaoTrigger = class("BabaoTrigger", GadgetActorProxy)
BabaoTrigger.defaultAlias = "BabaoTrigger"
local Q72210ClientConfig = require("Quest/Client/Q72210ClientConfig")

local subIDs = Q72210ClientConfig.SubIDs
local npcs = Q72210ClientConfig.Npcs
local datas = Q72210ClientConfig.Datas

function BabaoTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function BabaoTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function BabaoTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72210"):NarratorOnlyTask(datas.Pm01, nil, "")
    self:DestroySelf()
end

function BabaoTrigger:TriggerOut()
    print("TriggerOut")
end

return BabaoTrigger
