require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40157 = class("Quest40157", QuestActorProxy)
Quest40157.defaultAlias = "Quest40157"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40157:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40157:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4015704"] = self.OnSubStart4015704,
        ["4015701"] = self.OnSubStart4015701,
        ["4015702"] = self.OnSubStart4015702,
        ["4015703"] = self.OnSubStart4015703,
        ["4015706"] = self.OnSubStart4015706,
        ["4015705"] = self.OnSubStart4015705
    }
end

function Quest40157:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4015704"] = self.OnSubFinish4015704,
        ["4015701"] = self.OnSubFinish4015701,
        ["4015702"] = self.OnSubFinish4015702,
        ["4015703"] = self.OnSubFinish4015703,
        ["4015706"] = self.OnSubFinish4015706,
        ["4015705"] = self.OnSubFinish4015705
    }
end

function Quest40157:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4015704"] = self.OnSubFailed4015704,
        ["4015701"] = self.OnSubFailed4015701,
        ["4015702"] = self.OnSubFailed4015702,
        ["4015703"] = self.OnSubFailed4015703,
        ["4015706"] = self.OnSubFailed4015706,
        ["4015705"] = self.OnSubFailed4015705
    }
end

function Quest40157:Start()
    print("Start")
end

function Quest40157:OnDestroy()
    print("OnDestroy")
end

function Quest40157:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40157:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40157:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30532.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1057.alias, 3)
    this:ActorDestroy("tigger4015702")
    this:DestroyNpcTrigger("Q4015703N30532Trigger")
    this:DestroyNpcTrigger("Q4015705N1057Trigger")
    this:DestroyNpcTrigger("Q4015706N30532Trigger")
end

function Quest40157:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40157:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest40157:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest40157:OnSubStart4015704(arg1)
    print("OnSubStart4015704")
    actorUtils.FinishQuestID(false, 4015704)
end

function Quest40157:OnSubFinish4015704(arg1)
    print("OnSubFinish4015704")
end

function Quest40157:OnSubFailed4015704(arg1)
    print("OnSubFailed4015704")
end

function Quest40157:OnSubStart4015701(arg1)
    print("OnSubStart4015701")
end

function Quest40157:OnSubFinish4015701(arg1)
    print("OnSubFinish4015701")
end

function Quest40157:OnSubFailed4015701(arg1)
    print("OnSubFailed4015701")
end

function Quest40157:OnSubStart4015702(arg1)
    print("OnSubStart4015702")
    this:CreateQuestNpc(arg1, npcs.Npc1044.id, 0)
    this:GetQuestNpcActor(npcs.Npc1044.alias, 40157):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc30532.id, 0)
    this:GetQuestNpcActor(npcs.Npc30532.alias, 40157):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("tigger4015702", "Actor/Gadget/tigger4015702", 70900002, 0, points.tigger4015702.pos, points.tigger4015702.rot, true, false, 3)
end

function Quest40157:OnSubFinish4015702(arg1)
    print("OnSubFinish4015702")
    this:QuestNarratorTask(datas.NarratorWithId4015790, nil)
end

function Quest40157:OnSubFailed4015702(arg1)
    print("OnSubFailed4015702")
end

function Quest40157:OnSubStart4015703(arg1)
    print("OnSubStart4015703")
    this:GetQuestNpcActor(npcs.Npc1044.alias, 40157):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc30532.id, 4015703, 0, 6)
    this:GetQuestNpcActor(npcs.Npc30532.alias, 40157):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest40157:OnSubFinish4015703(arg1)
    print("OnSubFinish4015703")
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 3)
end

function Quest40157:OnSubFailed4015703(arg1)
    print("OnSubFailed4015703")
end

function Quest40157:OnSubStart4015706(arg1)
    print("OnSubStart4015706")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc30532.id, 4015706, 0, 7, 2)
end

function Quest40157:OnSubFinish4015706(arg1)
    print("OnSubFinish4015706")
end

function Quest40157:OnSubFailed4015706(arg1)
    print("OnSubFailed4015706")
end

function Quest40157:OnSubStart4015705(arg1)
    print("OnSubStart4015705")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1057.id, 4015705, 0, 5, 2)
end

function Quest40157:OnSubFinish4015705(arg1)
    print("OnSubFinish4015705")
    this:SafeDestroyQuestNpc(npcs.Npc30532.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1057.alias, 3)
end

function Quest40157:OnSubFailed4015705(arg1)
    print("OnSubFailed4015705")
end

return Quest40157
