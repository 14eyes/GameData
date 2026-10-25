require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72661Trigger1 = class("Q72661Trigger1", GadgetActorProxy)
Q72661Trigger1.defaultAlias = "Q72661Trigger1"
local Q72661ClientConfig = require("Quest/Client/Q72661ClientConfig")

local subIDs = Q72661ClientConfig.SubIDs
local npcs = Q72661ClientConfig.Npcs
local datas = Q72661ClientConfig.Datas

function Q72661Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72661Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72661Trigger1:TriggerIn()
    print("TriggerIn")
end

function Q72661Trigger1:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("72661"):FinishQuestID(true, 7266107)
    self:DestroySelf()
end

return Q72661Trigger1
