require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local FailTrigger = class("FailTrigger", GadgetActorProxy)
FailTrigger.defaultAlias = "FailTrigger"
local Q72661ClientConfig = require("Quest/Client/Q72661ClientConfig")

local subIDs = Q72661ClientConfig.SubIDs
local npcs = Q72661ClientConfig.Npcs
local datas = Q72661ClientConfig.Datas

function FailTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function FailTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function FailTrigger:TriggerIn()
    print("TriggerIn")
end

function FailTrigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("72661"):FinishQuestID(true, 7266107)
    self:DestroySelf()
end

return FailTrigger
