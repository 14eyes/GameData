require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226308TriggerPaimon = class("Q7226308TriggerPaimon", GadgetActorProxy)
Q7226308TriggerPaimon.defaultAlias = "Q7226308TriggerPaimon"
local Q72263ClientConfig = require("Quest/Client/Q72263ClientConfig")

local subIDs = Q72263ClientConfig.SubIDs
local npcs = Q72263ClientConfig.Npcs
local datas = Q72263ClientConfig.Datas

function Q7226308TriggerPaimon:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226308TriggerPaimon:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226308TriggerPaimon:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72263"):NarratorOnlyTask(datas.Q7226308KaichePaimon, nil, "")
    self:DestroySelf()
end

function Q7226308TriggerPaimon:TriggerOut()
    print("TriggerOut")
end

return Q7226308TriggerPaimon
