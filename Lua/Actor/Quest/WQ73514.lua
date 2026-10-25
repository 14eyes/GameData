require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73514 = class("Quest73514", QuestActorProxy)
Quest73514.defaultAlias = "Quest73514"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest73514:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest73514:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7351402"] = self.OnSubStart7351402, ["7351401"] = self.OnSubStart7351401}
end

function Quest73514:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7351402"] = self.OnSubFinish7351402, ["7351401"] = self.OnSubFinish7351401}
end

function Quest73514:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73514:Start()
    print("Start")
end

function Quest73514:OnDestroy()
    print("OnDestroy")
end

function Quest73514:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73514:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73514:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30342Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30343Data.alias, 3)
    this:RemoveLocalGadget(70290926, "1")
    this:ActorDestroy("Q73514Trigger")
    this:UnCallFunc(function(arg1)
        this:CustmiseFunction()
    end)
end

function Quest73514:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73514:CustmiseFunction()
    this:CallDelay(1, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorMgr:CreateActorWithPos("Q73514Trigger", "Actor/Gadget/Q73514Trigger", 70900002, 0, points.TPos_Q73514Trigger.pos, points.TPos_Q73514Trigger.rot, true, false, 3)
        end)
    end)
end

function Quest73514:OnSubStart7351402(arg1)
    print("OnSubStart7351402")
    if this:GetQuestVar(7351402, 1) == 1 then
        actorUtils.FinishQuestID(false, 7351402)
    else
        print("73514QuestVar!=1")
        this:CustmiseFunction()
    end
end

function Quest73514:OnSubFinish7351402(arg1)
    print("OnSubFinish7351402")
end

function Quest73514:OnSubStart7351401(arg1)
    print("OnSubStart7351401")
    this:CreateLocalGadget(70290926, "1", {x = -1812.063, y = 167.457, z = 5890.684}, {x = 345.683, y = 101.907, z = 11.876}, 3, nil, nil, 0, true)
    this:CreateQuestNpc(arg1, npcs.Npc30342Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc30343Data.id, 2)
    if this:GetQuestVar(7351401, 1) ~= 1 then
        this:RequestInteraction(npcs.Npc30342Data.alias)
    end
end

function Quest73514:OnSubFinish7351401(arg1)
    print("OnSubFinish7351401")
    this:SafeDestroyQuestNpc(npcs.Npc30342Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30343Data.alias, 3)
    this:RemoveLocalGadget(70290926, "1")
end

return Quest73514
