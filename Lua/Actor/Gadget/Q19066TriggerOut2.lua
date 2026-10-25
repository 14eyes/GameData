require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19066TriggerOut2 = class("Q19066TriggerOut2", GadgetActorProxy)
Q19066TriggerOut2.defaultAlias = "Q19066TriggerOut2"
local Q19066ClientConfig = require("Quest/Client/Q19066ClientConfig")

local mainID = Q19066ClientConfig.MainID
local actorAlias = Q19066ClientConfig.ActorAlias
local subIDs = Q19066ClientConfig.SubIDs
local npcs = Q19066ClientConfig.Npcs
local datas = Q19066ClientConfig.Datas

function Q19066TriggerOut2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19066TriggerOut2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(153, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19066TriggerOut2:TriggerIn()
    print("TriggerIn")
end

function Q19066TriggerOut2:TriggerOut()
    print("Out Q19066trigger02")
    local actor = actorMgr:GetActor(Q19066ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1906606) == 2 then
        actor:FinishQuestID(true, 1906606)
        actor:ClearNarratorTask()
        print("let 1906606 fail")
    end

    if actor:GetSubQuestState(1906607) == 2 then
        actor:FinishQuestID(true, 1906607)
        actor:ClearNarratorTask()
        print("let 1906607 fail")
    end

    if actor:GetSubQuestState(1906608) == 2 then
        actor:FinishQuestID(true, 1906608)
        actor:ClearNarratorTask()
        print("let 1906608 fail")
    end

    if actor:GetSubQuestState(1906609) == 2 then
        actor:FinishQuestID(true, 1906609)
        actor:ClearNarratorTask()
        print("let 1906609 fail")
    end

    self:DestroySelf()
end

return Q19066TriggerOut2
