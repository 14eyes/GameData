require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7310502TriggerNA = class("Q7310502TriggerNA", GadgetActorProxy)
Q7310502TriggerNA.defaultAlias = "Q7310502TriggerNA"
local Q73105ClientConfig = require("Quest/Client/Q73105ClientConfig")

local subIDs = Q73105ClientConfig.SubIDs
local npcs = Q73105ClientConfig.Npcs
local datas = Q73105ClientConfig.Datas

function Q7310502TriggerNA:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7310502TriggerNA:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7310502TriggerNA:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73105"):NarratorOnlyTask(datas.NarratorTable02Start, nil, "Story")
    self:DestroySelf()
end

function Q7310502TriggerNA:TriggerOut()
    print("TriggerOut")
end

return Q7310502TriggerNA
