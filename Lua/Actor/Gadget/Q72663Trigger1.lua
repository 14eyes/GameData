require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72663Trigger1 = class("Q72663Trigger1", GadgetActorProxy)
Q72663Trigger1.defaultAlias = "Q72663Trigger1"
local Q72663ClientConfig = require("Quest/Client/Q72663ClientConfig")

local subIDs = Q72663ClientConfig.SubIDs
local npcs = Q72663ClientConfig.Npcs
local datas = Q72663ClientConfig.Datas

function Q72663Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72663Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72663Trigger1:TriggerIn()
    print("TriggerIn")
end

function Q72663Trigger1:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("72663"):FinishQuestID(true, 7266305)
    self:DestroySelf()
end

return Q72663Trigger1
