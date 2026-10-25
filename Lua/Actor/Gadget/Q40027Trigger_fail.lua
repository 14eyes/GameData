require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40027Trigger_fail = class("Q40027Trigger_fail", GadgetActorProxy)
Q40027Trigger_fail.defaultAlias = "Q40027Trigger_fail"
local Q40027ClientConfig = require("Quest/Client/Q40027ClientConfig")

local subIDs = Q40027ClientConfig.SubIDs
local npcs = Q40027ClientConfig.Npcs
local gadgets = Q40027ClientConfig.Gadgets
local datas = Q40027ClientConfig.Datas

function Q40027Trigger_fail:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40027Trigger_fail:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40027Trigger_fail:TriggerIn()
    print("TriggerIn")
end

function Q40027Trigger_fail:TriggerOut()
    print("TriggerOut")
    print("TriggerOut_40027Trigger")
    local actor = actorMgr:GetActor(Q40027ClientConfig.ActorAlias)
    if actor:GetSubQuestState(4002708) == 2 then
        actor:FinishQuestID(true, 4002708)
    end

    if actor:GetSubQuestState(4002709) == 2 then
        actor:FinishQuestID(true, 4002709)
    end

    if actor:GetSubQuestState(4002710) == 2 then
        actor:FinishQuestID(true, 4002710)
    end

    if actor:GetSubQuestState(4002711) == 2 then
        actor:FinishQuestID(true, 4002711)
    end

    self:DestroySelf()
end

return Q40027Trigger_fail
