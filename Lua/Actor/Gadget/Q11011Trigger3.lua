require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11011Trigger3 = class("Q11011Trigger3", GadgetActorProxy)
Q11011Trigger3.defaultAlias = "Q11011Trigger3"
local Q11011ClientConfig = require("Quest/Client/Q11011ClientConfig")

local mainID = Q11011ClientConfig.MainID
local actorAlias = Q11011ClientConfig.ActorAlias
local subIDs = Q11011ClientConfig.SubIDs
local npcs = Q11011ClientConfig.Npcs
local datas = Q11011ClientConfig.Datas

function Q11011Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11011Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11011Trigger3:TriggerIn()
    print("TriggerIn")
end

function Q11011Trigger3:TriggerOut()
    local actor = actorMgr:GetActor(Q11011ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1101116) == 2 then
        actor:FinishQuestID(true, 1101116)
    end

    print("let 1101116 fail")
    if actor:GetSubQuestState(1101114) == 2 then
        actor:FinishQuestID(true, 1101114)
    end

    print("let 1101114 fail")
    if actor:GetSubQuestState(1101120) == 2 then
        actor:FinishQuestID(true, 1101120)
    end

    print("let 1101120 fail")
    self:DestroySelf()
end

return Q11011Trigger3
