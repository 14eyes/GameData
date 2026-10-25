require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19065TriggerOut = class("Q19065TriggerOut", GadgetActorProxy)
Q19065TriggerOut.defaultAlias = "Q19065TriggerOut"
local Q19065ClientConfig = require("Quest/Client/Q19065ClientConfig")

local mainID = Q19065ClientConfig.MainID
local actorAlias = Q19065ClientConfig.ActorAlias
local subIDs = Q19065ClientConfig.SubIDs
local npcs = Q19065ClientConfig.Npcs
local datas = Q19065ClientConfig.Datas

function Q19065TriggerOut:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19065TriggerOut:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(160, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19065TriggerOut:TriggerIn()
    print("TriggerIn")
end

function Q19065TriggerOut:TriggerOut()
    print("Out Q19065trigger01")
    local actor = actorMgr:GetActor(Q19065ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1906513) == 2 then
        actor:FinishQuestID(true, 1906513)
        actor:ClearNarratorTask()
        print("let 1906513 fail")
    end

    if actor:GetSubQuestState(1906501) == 2 then
        actor:FinishQuestID(true, 1906501)
        actor:ClearNarratorTask()
        print("let 1906501 fail")
    end

    if actor:GetSubQuestState(1906511) == 2 then
        actor:FinishQuestID(true, 1906511)
        actor:ClearNarratorTask()
        print("let 1906511 fail")
    end

    if actor:GetSubQuestState(1906502) == 2 then
        actor:FinishQuestID(true, 1906502)
        actor:ClearNarratorTask()
        print("let 1906502 fail")
    end

    if actor:GetSubQuestState(1906503) == 2 then
        actor:FinishQuestID(true, 1906503)
        actor:ClearNarratorTask()
        print("let 1906503 fail")
    end

    if actor:GetSubQuestState(1906512) == 2 then
        actor:FinishQuestID(true, 1906512)
        actor:ClearNarratorTask()
        print("let 1906512 fail")
    end

    if actor:GetSubQuestState(1906504) == 2 then
        actor:FinishQuestID(true, 1906504)
        actor:ClearNarratorTask()
        print("let 1906504 fail")
    end

    if actor:GetSubQuestState(1906505) == 2 then
        actor:FinishQuestID(true, 1906505)
        actor:ClearNarratorTask()
        print("let 1906505 fail")
    end

    self:DestroySelf()
end

return Q19065TriggerOut
