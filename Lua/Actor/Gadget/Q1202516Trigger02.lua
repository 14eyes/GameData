require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202516Trigger02 = class("Q1202516Trigger02", GadgetActorProxy)
Q1202516Trigger02.defaultAlias = "Q1202516Trigger02"
local Q12025ClientConfig = require("Quest/Client/Q12025ClientConfig")

local subIDs = Q12025ClientConfig.SubIDs
local npcs = Q12025ClientConfig.Npcs
local gadgets = Q12025ClientConfig.Gadgets
local datas = Q12025ClientConfig.Datas

function Q1202516Trigger02:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202516Trigger02:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(28, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202516Trigger02:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("12025")
    actor:ClearNarratorTask()
    actor:StopNarrator()
    local v = actorMgr:GetActor("12025")
    v:NarratorOnlyTaskByData(datas.kaiche1202501, nil, 12025)
    v:FinishQuestID(false, 1202517)
    self:DestroySelf()
end

function Q1202516Trigger02:TriggerOut()
    print("TriggerOut")
end

return Q1202516Trigger02
