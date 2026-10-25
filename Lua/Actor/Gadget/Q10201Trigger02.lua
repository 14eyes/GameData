require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q10201trigger02 = class("Q10201trigger02", GadgetActorProxy)
Q10201trigger02.defaultAlias = "Q10201trigger02"
local Q10201ClientConfig = require("Quest/Client/Q10201ClientConfig")

local actor = actorMgr:GetActor(Q10201ClientConfig.ActorAlias)
function Q10201trigger02:OnPostDataPrepare() end

function Q10201trigger02:OnPostComponentPrepare()
    self:AddComponentTrigger(50, DistType.EULER, M.Pos(0, 0, 0), self.TriggerIn, self.TriggerOut)
end

function Q10201trigger02:TriggerIn()
    print("In Q10201trigger02")
end

function Q10201trigger02:TriggerOut()
    print("Out Q10201trigger02")
    local actor = actorMgr:GetActor(Q10201ClientConfig.ActorAlias)
    if actor.GetSubQuestState(actor, 1020105) == 2 then
        actor.FinishQuestID(actor, true, 1020105)
        actor.ClearNarratorTask(actor)
        print("let 1020105 fail")
        actor.CallDelay(actor, 2, function()
            actor:TransmitPlayerWithTextByQuestId(1020105, 1, {"QUEST_Message_Q1020104"})
        end)
    end

    if actor.GetSubQuestState(actor, 1020106) == 2 then
        actor.FinishQuestID(actor, true, 1020106)
        actor.ClearNarratorTask(actor)
        print("let 1020106 fail")
        actor.CallDelay(actor, 2, function()
            actor:TransmitPlayerWithTextByQuestId(1020106, 1, {"QUEST_Message_Q1020104"})
        end)
    end

    if actor.GetSubQuestState(actor, 1020115) == 2 then
        actor.FinishQuestID(actor, true, 1020115)
        actor.ClearNarratorTask(actor)
        print("let 1020115 fail")
        actor.CallDelay(actor, 2, function()
            actor:TransmitPlayerWithTextByQuestId(1020115, 2, {"QUEST_Message_Q1020104"})
        end)
    end

    self:DestroySelf()
end

return Q10201trigger02
