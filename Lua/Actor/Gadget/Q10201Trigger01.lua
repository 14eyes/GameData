require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q10201trigger01 = class("Q10201trigger01", GadgetActorProxy)
Q10201trigger01.defaultAlias = "Q10201trigger01"
local Q10201ClientConfig = require("Quest/Client/Q10201ClientConfig")

local actor = actorMgr:GetActor(Q10201ClientConfig.ActorAlias)
function Q10201trigger01:OnPostDataPrepare() end

function Q10201trigger01:OnPostComponentPrepare()
    self:AddComponentTrigger(50, DistType.EULER, M.Pos(0, 0, 0), self.TriggerIn, self.TriggerOut)
end

function Q10201trigger01:TriggerIn()
    print("In Q10201trigger01")
end

function Q10201trigger01:TriggerOut()
    print("Out Q10201trigger01")
    local actor = actorMgr:GetActor(Q10201ClientConfig.ActorAlias)
    if actor.GetSubQuestState(actor, 1020103) == 2 then
        actor.FinishQuestID(actor, true, 1020103)
        actor.ClearNarratorTask(actor)
        print("let 1020103 fail")
        actor.CallDelay(actor, 2, function()
            actor:TransmitPlayerWithTextByQuestId(1020103, 1, {"QUEST_Message_Q1020104"})
        end)
    end

    if actor.GetSubQuestState(actor, 1020104) == 2 then
        actor.FinishQuestID(actor, true, 1020104)
        actor.ClearNarratorTask(actor)
        print("let 1020104 fail")
        actor.CallDelay(actor, 2, function()
            actor:TransmitPlayerWithTextByQuestId(1020104, 1, {"QUEST_Message_Q1020104"})
        end)
    end

    if actor.GetSubQuestState(actor, 1020114) == 2 then
        actor.FinishQuestID(actor, true, 1020114)
        actor.ClearNarratorTask(actor)
        print("let 1020114 fail")
        actor.CallDelay(actor, 2, function()
            actor:TransmitPlayerWithTextByQuestId(1020114, 2, {"QUEST_Message_Q1020104"})
        end)
    end

    self:DestroySelf()
end

return Q10201trigger01
