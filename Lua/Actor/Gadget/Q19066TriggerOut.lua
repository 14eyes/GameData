require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19066TriggerOut = class("Q19066TriggerOut", GadgetActorProxy)
Q19066TriggerOut.defaultAlias = "Q19066TriggerOut"
local Q19066ClientConfig = require("Quest/Client/Q19066ClientConfig")

local mainID = Q19066ClientConfig.MainID
local actorAlias = Q19066ClientConfig.ActorAlias
local subIDs = Q19066ClientConfig.SubIDs
local npcs = Q19066ClientConfig.Npcs
local datas = Q19066ClientConfig.Datas

function Q19066TriggerOut:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19066TriggerOut:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(153, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19066TriggerOut:TriggerIn()
    print("TriggerIn")
end

function Q19066TriggerOut:TriggerOut()
    print("Out Q19066trigger01")
    local actor = actorMgr:GetActor(Q19066ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1906612) == 2 then
        actor:FinishQuestID(true, 1906612)
        actor:ClearNarratorTask()
        print("let 1906612 fail")
    end

    if actor:GetSubQuestState(1906611) == 2 then
        actor:FinishQuestID(true, 1906611)
        actor:ClearNarratorTask()
        print("let 1906611 fail")
    end

    if actor:GetSubQuestState(1906602) == 2 then
        actor:FinishQuestID(true, 1906602)
        actor:ClearNarratorTask()
        print("let 1906602 fail")
    end

    if actor:GetSubQuestState(1906603) == 2 then
        actor:FinishQuestID(true, 1906603)
        actor:ClearNarratorTask()
        print("let 1906603 fail")
    end

    if actor:GetSubQuestState(1906604) == 2 then
        actor:FinishQuestID(true, 1906604)
        actor:ClearNarratorTask()
        print("let 1906604 fail")
    end

    self:DestroySelf()
end

return Q19066TriggerOut
