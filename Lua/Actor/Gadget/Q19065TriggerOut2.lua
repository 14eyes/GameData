require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19065TriggerOut2 = class("Q19065TriggerOut2", GadgetActorProxy)
Q19065TriggerOut2.defaultAlias = "Q19065TriggerOut2"
local Q19065ClientConfig = require("Quest/Client/Q19065ClientConfig")

local mainID = Q19065ClientConfig.MainID
local actorAlias = Q19065ClientConfig.ActorAlias
local subIDs = Q19065ClientConfig.SubIDs
local npcs = Q19065ClientConfig.Npcs
local datas = Q19065ClientConfig.Datas

function Q19065TriggerOut2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19065TriggerOut2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(160, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19065TriggerOut2:TriggerIn()
    print("TriggerIn")
end

function Q19065TriggerOut2:TriggerOut()
    print("Out Q19065trigger02")
    local actor = actorMgr:GetActor(Q19065ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1906507) == 2 then
        actor:FinishQuestID(true, 1906507)
        actor:ClearNarratorTask()
        print("let 1906507 fail")
    end

    if actor:GetSubQuestState(1906508) == 2 then
        actor:FinishQuestID(true, 1906508)
        actor:ClearNarratorTask()
        print("let 1906508 fail")
    end

    self:DestroySelf()
end

return Q19065TriggerOut2
