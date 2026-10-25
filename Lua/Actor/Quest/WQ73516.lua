require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73516 = class("Quest73516", QuestActorProxy)
Quest73516.defaultAlias = "Quest73516"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest73516:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest73516:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7351601"] = self.OnSubStart7351601, ["7351602"] = self.OnSubStart7351602}
end

function Quest73516:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7351601"] = self.OnSubFinish7351601, ["7351602"] = self.OnSubFinish7351602}
end

function Quest73516:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73516:Start()
    print("Start")
end

function Quest73516:OnDestroy()
    print("OnDestroy")
end

function Quest73516:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73516:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73516:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30342Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30343Data.alias, 3)
    this:ActorDestroy("Q73516Trigger")
    this:UnCallFunc(function(arg1)
        this:CustmiseFunction()
    end)

    this:RemoveLocalGadget(70290926, "1")
end

function Quest73516:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73516:CustmiseFunction()
    this:CallDelay(1, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorMgr:CreateActorWithPos("Q73516Trigger", "Actor/Gadget/Q73516Trigger", 70900002, 0, points.TPos_Q73516Trigger.pos, points.TPos_Q73516Trigger.rot, true, false, 3)
        end)
    end)
end

function Quest73516:OnSubStart7351601(arg1)
    print("OnSubStart7351601")
    if this:GetQuestVar(7351602, 1) == 1 then
        actorUtils.FinishQuestID(false, 7351601)
    else
        this:CustmiseFunction()
    end
end

function Quest73516:OnSubFinish7351601(arg1)
    print("OnSubFinish7351601")
end

function Quest73516:OnSubStart7351602(arg1)
    print("OnSubStart7351602")
    this:CreateLocalGadget(70290926, "1", {x = -1812.063, y = 167.457, z = 5890.684}, {x = 345.683, y = 101.907, z = 11.875}, 3, nil, nil, 0, false)
    this:CreateQuestNpc(arg1, npcs.Npc30342Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30343Data.id, 0)
    if this:GetQuestVar(7351601, 1) ~= 1 then
        this:RequestInteraction(npcs.Npc30342Data.alias)
    end
end

function Quest73516:OnSubFinish7351602(arg1)
    print("OnSubFinish7351602")
    this:SafeDestroyQuestNpc(npcs.Npc30342Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30343Data.alias, 3)
    this:RemoveLocalGadget(70290926, "1")
end

return Quest73516
