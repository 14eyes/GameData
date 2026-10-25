require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40129 = class("Quest40129", QuestActorProxy)
Quest40129.defaultAlias = "Quest40129"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40129:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40129:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4012907"] = self.OnSubStart4012907,
        ["4012912"] = self.OnSubStart4012912,
        ["4012901"] = self.OnSubStart4012901,
        ["4012902"] = self.OnSubStart4012902,
        ["4012916"] = self.OnSubStart4012916,
        ["4012903"] = self.OnSubStart4012903,
        ["4012917"] = self.OnSubStart4012917,
        ["4012918"] = self.OnSubStart4012918,
        ["4012915"] = self.OnSubStart4012915,
        ["4012904"] = self.OnSubStart4012904,
        ["4012911"] = self.OnSubStart4012911,
        ["4012909"] = self.OnSubStart4012909,
        ["4012905"] = self.OnSubStart4012905,
        ["4012906"] = self.OnSubStart4012906,
        ["4012913"] = self.OnSubStart4012913,
        ["4012908"] = self.OnSubStart4012908,
        ["4012910"] = self.OnSubStart4012910,
        ["4012914"] = self.OnSubStart4012914
    }
end

function Quest40129:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4012907"] = self.OnSubFinish4012907,
        ["4012912"] = self.OnSubFinish4012912,
        ["4012901"] = self.OnSubFinish4012901,
        ["4012902"] = self.OnSubFinish4012902,
        ["4012916"] = self.OnSubFinish4012916,
        ["4012903"] = self.OnSubFinish4012903,
        ["4012917"] = self.OnSubFinish4012917,
        ["4012918"] = self.OnSubFinish4012918,
        ["4012915"] = self.OnSubFinish4012915,
        ["4012904"] = self.OnSubFinish4012904,
        ["4012911"] = self.OnSubFinish4012911,
        ["4012909"] = self.OnSubFinish4012909,
        ["4012905"] = self.OnSubFinish4012905,
        ["4012906"] = self.OnSubFinish4012906,
        ["4012913"] = self.OnSubFinish4012913,
        ["4012908"] = self.OnSubFinish4012908,
        ["4012910"] = self.OnSubFinish4012910,
        ["4012914"] = self.OnSubFinish4012914
    }
end

function Quest40129:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40129:Start()
    print("Start")
end

function Quest40129:OnDestroy()
    print("OnDestroy")
end

function Quest40129:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40129:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40129:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 47801)
    this:SafeDestroyQuestNpc(npcs.Npc13558Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13558Data.alias, 47801)
    this:SafeDestroyQuestNpc(npcs.Npc13673Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13673Data.alias, 47801)
    this:SafeDestroyQuestNpc(npcs.Npc13587Data.alias, 3)
    actorMgr:DestroyEntityActor("Q4012901TriggerRequest", 3, false)
    actorMgr:DestroyEntityActor("Q4012902TriggerFinish", 3, false)
    actorMgr:DestroyEntityActor("Q4012903TriggerNarrator", 3, false)
    actorMgr:DestroyEntityActor("Q4012915TriggerFinish", 3, false)
    actorMgr:DestroyEntityActor("Q4012916TriggerFinish", 3, false)
    actorMgr:DestroyEntityActor("Q4012906N1074Trigger", 3, false)
    this:UnCallDelayByQuest("40129061")
end

function Quest40129:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest40129:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest40129:OnSubStart4012907(arg1)
    print("OnSubStart4012907")
    this:CreateQuestNpc(arg1, npcs.Npc13587Data.id, 0)
end

function Quest40129:OnSubFinish4012907(arg1)
    print("OnSubFinish4012907")
    this:DestroyQuestNpcActor(npcs.Npc13587Data.alias, 3)
end

function Quest40129:OnSubStart4012912(arg1)
    print("OnSubStart4012912")
    actorUtils.FinishQuestID(false, 4012912)
end

function Quest40129:OnSubFinish4012912(arg1)
    print("OnSubFinish4012912")
    this:NarratorOnlyTaskByData(datas.NarratorWithId4012901, nil, 40129)
end

function Quest40129:OnSubStart4012901(arg1)
    print("OnSubStart4012901")
    actorMgr:CreateActorWithPos("Q4012901TriggerRequest", "Actor/Gadget/Q4012901TriggerRequest", 70900002, 0, {x = 3400.08, y = 443.384, z = 3006.501}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1074Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13558Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13673Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13558Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13558Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40129:OnSubFinish4012901(arg1)
    print("OnSubFinish4012901")
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13558Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13673Data.alias, 3)
    this:ClearNarratorTask()
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 3, nil, nil)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13558Data.alias):DisableInteeHeadCtrl(false)
end

function Quest40129:OnSubStart4012902(arg1)
    print("OnSubStart4012902")
    actorMgr:CreateActorWithPos("Q4012902TriggerFinish", "Actor/Gadget/Q4012902TriggerFinish", 70900002, 0, points.TPos_Q4012902TriggerFinish.pos, points.TPos_Q4012902TriggerFinish.rot, true, false, 3)
end

function Quest40129:OnSubFinish4012902(arg1)
    print("OnSubFinish4012902")
end

function Quest40129:OnSubStart4012916(arg1)
    print("OnSubStart4012916")
    actorMgr:CreateActorWithPos("Q4012916TriggerFinish", "Actor/Gadget/Q4012916TriggerFinish", 70900002, 0, points.TPos_Q4012916TriggerFinish.pos, points.TPos_Q4012916TriggerFinish.rot, true, false, 3)
end

function Quest40129:OnSubFinish4012916(arg1)
    print("OnSubFinish4012916")
end

function Quest40129:OnSubStart4012903(arg1)
    print("OnSubStart4012903")
    actorMgr:CreateActorWithPos("Q4012903TriggerNarrator", "Actor/Gadget/Q4012903TriggerNarrator", 70900002, 0, points.TPos_Q4012903TriggerNarrator.pos, points.TPos_Q4012903TriggerNarrator.rot, true, false, 3)
end

function Quest40129:OnSubFinish4012903(arg1)
    print("OnSubFinish4012903")
end

function Quest40129:OnSubStart4012917(arg1)
    print("OnSubStart4012917")
end

function Quest40129:OnSubFinish4012917(arg1)
    print("OnSubFinish4012917")
end

function Quest40129:OnSubStart4012918(arg1)
    print("OnSubStart4012918")
end

function Quest40129:OnSubFinish4012918(arg1)
    print("OnSubFinish4012918")
end

function Quest40129:OnSubStart4012915(arg1)
    print("OnSubStart4012915")
    actorMgr:CreateActorWithPos("Q4012915TriggerFinish", "Actor/Gadget/Q4012915TriggerFinish", 70900002, 0, points.TPos_Q4012915TriggerFinish.pos, points.TPos_Q4012915TriggerFinish.rot, true, false, 3)
end

function Quest40129:OnSubFinish4012915(arg1)
    print("OnSubFinish4012915")
end

function Quest40129:OnSubStart4012904(arg1)
    print("OnSubStart4012904")
end

function Quest40129:OnSubFinish4012904(arg1)
    print("OnSubFinish4012904")
end

function Quest40129:OnSubStart4012911(arg1)
    print("OnSubStart4012911")
end

function Quest40129:OnSubFinish4012911(arg1)
    print("OnSubFinish4012911")
end

function Quest40129:OnSubStart4012909(arg1)
    print("OnSubStart4012909")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1074Data.id, 4012909, 0, 40, 1, true)
end

function Quest40129:OnSubFinish4012909(arg1)
    print("OnSubFinish4012909")
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 47801)
end

function Quest40129:OnSubStart4012905(arg1)
    print("OnSubStart4012905")
end

function Quest40129:OnSubFinish4012905(arg1)
    print("OnSubFinish4012905")
end

function Quest40129:OnSubStart4012906(arg1)
    print("OnSubStart4012906")
    this:CallDelayByQuest("40129061", 2, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1074Data.id, 4012906, 0, 40, 1)
    end)
end

function Quest40129:OnSubFinish4012906(arg1)
    print("OnSubFinish4012906")
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 47801)
    this:TransmitPlayerById(arg1, 1)
end

function Quest40129:OnSubStart4012913(arg1)
    print("OnSubStart4012913")
end

function Quest40129:OnSubFinish4012913(arg1)
    print("OnSubFinish4012913")
end

function Quest40129:OnSubStart4012908(arg1)
    print("OnSubStart4012908")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1074Data.id, 4012908, 0, 10, 1, true)
end

function Quest40129:OnSubFinish4012908(arg1)
    print("OnSubFinish4012908")
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            actorUtils.ShowContext("RainbowPrinceMainPage", 0, "3 2")
        end)
    end)
end

function Quest40129:OnSubStart4012910(arg1)
    print("OnSubStart4012910")
end

function Quest40129:OnSubFinish4012910(arg1)
    print("OnSubFinish4012910")
end

function Quest40129:OnSubStart4012914(arg1)
    print("OnSubStart4012914")
    actorMgr:CreateActorWithPos("Q4012914TriggerFinish", "Actor/Gadget/Q4012914TriggerFinish", 70900002, 0, points.TPos_Q4012914TriggerFinish.pos, points.TPos_Q4012914TriggerFinish.rot, true, false, 3)
end

function Quest40129:OnSubFinish4012914(arg1)
    print("OnSubFinish4012914")
end

return Quest40129
