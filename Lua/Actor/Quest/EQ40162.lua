require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40162 = class("Quest40162", QuestActorProxy)
Quest40162.defaultAlias = "Quest40162"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40162:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40162:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4016201"] = self.OnSubStart4016201,
        ["4016202"] = self.OnSubStart4016202,
        ["4016203"] = self.OnSubStart4016203,
        ["4016205"] = self.OnSubStart4016205,
        ["4016206"] = self.OnSubStart4016206,
        ["4016225"] = self.OnSubStart4016225,
        ["4016204"] = self.OnSubStart4016204,
        ["4016226"] = self.OnSubStart4016226,
        ["4016207"] = self.OnSubStart4016207,
        ["4016208"] = self.OnSubStart4016208,
        ["4016209"] = self.OnSubStart4016209,
        ["4016219"] = self.OnSubStart4016219,
        ["4016210"] = self.OnSubStart4016210,
        ["4016211"] = self.OnSubStart4016211,
        ["4016223"] = self.OnSubStart4016223,
        ["4016224"] = self.OnSubStart4016224,
        ["4016221"] = self.OnSubStart4016221,
        ["4016212"] = self.OnSubStart4016212,
        ["4016213"] = self.OnSubStart4016213,
        ["4016220"] = self.OnSubStart4016220,
        ["4016227"] = self.OnSubStart4016227,
        ["4016228"] = self.OnSubStart4016228,
        ["4016229"] = self.OnSubStart4016229,
        ["4016214"] = self.OnSubStart4016214,
        ["4016215"] = self.OnSubStart4016215,
        ["4016216"] = self.OnSubStart4016216,
        ["4016230"] = self.OnSubStart4016230,
        ["4016231"] = self.OnSubStart4016231,
        ["4016232"] = self.OnSubStart4016232,
        ["4016233"] = self.OnSubStart4016233,
        ["4016217"] = self.OnSubStart4016217,
        ["4016234"] = self.OnSubStart4016234,
        ["4016238"] = self.OnSubStart4016238,
        ["4016222"] = self.OnSubStart4016222,
        ["4016218"] = self.OnSubStart4016218
    }
end

function Quest40162:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4016201"] = self.OnSubFinish4016201,
        ["4016202"] = self.OnSubFinish4016202,
        ["4016203"] = self.OnSubFinish4016203,
        ["4016205"] = self.OnSubFinish4016205,
        ["4016206"] = self.OnSubFinish4016206,
        ["4016225"] = self.OnSubFinish4016225,
        ["4016204"] = self.OnSubFinish4016204,
        ["4016226"] = self.OnSubFinish4016226,
        ["4016207"] = self.OnSubFinish4016207,
        ["4016208"] = self.OnSubFinish4016208,
        ["4016209"] = self.OnSubFinish4016209,
        ["4016219"] = self.OnSubFinish4016219,
        ["4016210"] = self.OnSubFinish4016210,
        ["4016211"] = self.OnSubFinish4016211,
        ["4016223"] = self.OnSubFinish4016223,
        ["4016224"] = self.OnSubFinish4016224,
        ["4016221"] = self.OnSubFinish4016221,
        ["4016212"] = self.OnSubFinish4016212,
        ["4016213"] = self.OnSubFinish4016213,
        ["4016220"] = self.OnSubFinish4016220,
        ["4016227"] = self.OnSubFinish4016227,
        ["4016228"] = self.OnSubFinish4016228,
        ["4016229"] = self.OnSubFinish4016229,
        ["4016214"] = self.OnSubFinish4016214,
        ["4016215"] = self.OnSubFinish4016215,
        ["4016216"] = self.OnSubFinish4016216,
        ["4016230"] = self.OnSubFinish4016230,
        ["4016231"] = self.OnSubFinish4016231,
        ["4016232"] = self.OnSubFinish4016232,
        ["4016233"] = self.OnSubFinish4016233,
        ["4016217"] = self.OnSubFinish4016217,
        ["4016234"] = self.OnSubFinish4016234,
        ["4016238"] = self.OnSubFinish4016238,
        ["4016222"] = self.OnSubFinish4016222,
        ["4016218"] = self.OnSubFinish4016218
    }
end

function Quest40162:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4016201"] = self.OnSubFailed4016201,
        ["4016202"] = self.OnSubFailed4016202,
        ["4016203"] = self.OnSubFailed4016203,
        ["4016205"] = self.OnSubFailed4016205,
        ["4016206"] = self.OnSubFailed4016206,
        ["4016225"] = self.OnSubFailed4016225,
        ["4016204"] = self.OnSubFailed4016204,
        ["4016226"] = self.OnSubFailed4016226,
        ["4016207"] = self.OnSubFailed4016207,
        ["4016208"] = self.OnSubFailed4016208,
        ["4016209"] = self.OnSubFailed4016209,
        ["4016219"] = self.OnSubFailed4016219,
        ["4016210"] = self.OnSubFailed4016210,
        ["4016211"] = self.OnSubFailed4016211,
        ["4016223"] = self.OnSubFailed4016223,
        ["4016224"] = self.OnSubFailed4016224,
        ["4016221"] = self.OnSubFailed4016221,
        ["4016212"] = self.OnSubFailed4016212,
        ["4016213"] = self.OnSubFailed4016213,
        ["4016220"] = self.OnSubFailed4016220,
        ["4016227"] = self.OnSubFailed4016227,
        ["4016228"] = self.OnSubFailed4016228,
        ["4016229"] = self.OnSubFailed4016229,
        ["4016214"] = self.OnSubFailed4016214,
        ["4016215"] = self.OnSubFailed4016215,
        ["4016216"] = self.OnSubFailed4016216,
        ["4016230"] = self.OnSubFailed4016230,
        ["4016231"] = self.OnSubFailed4016231,
        ["4016232"] = self.OnSubFailed4016232,
        ["4016233"] = self.OnSubFailed4016233,
        ["4016217"] = self.OnSubFailed4016217,
        ["4016234"] = self.OnSubFailed4016234,
        ["4016238"] = self.OnSubFailed4016238,
        ["4016222"] = self.OnSubFailed4016222,
        ["4016218"] = self.OnSubFailed4016218
    }
end

function Quest40162:Start()
    print("Start")
end

function Quest40162:OnDestroy()
    print("OnDestroy")
end

function Quest40162:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40162:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40162:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30557.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30554.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30555.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30568.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30569.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30570.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30556.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30571.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30607.alias, 100)
    this:ActorDestroy("Q4016226")
    this:ActorDestroy("Q4016216")
    this:DestroyNpcTrigger("Q4016203N1005Trigger")
    this:DestroyNpcTrigger("Q4016204N30554Trigger")
    this:DestroyNpcTrigger("Q4016205N30555Trigger")
    this:DestroyNpcTrigger("Q4016207N2670Trigger")
    this:DestroyNpcTrigger("Q4016208N30569Trigger")
    this:DestroyNpcTrigger("Q4016210N30568Trigger")
    this:DestroyNpcTrigger("Q4016212N30556Trigger")
    this:DestroyNpcTrigger("Q4016215N2670Trigger")
    this:DestroyNpcTrigger("Q4016217N2670Trigger")
    this:DestroyNpcTrigger("Q4016218N2670Trigger")
    this:DestroyNpcTrigger("Q4016219N30569Trigger")
    this:DestroyNpcTrigger("Q4016220N30554Trigger")
    this:DestroyNpcTrigger("Q4016221N30555Trigger")
    this:DestroyNpcTrigger("Q4016222N2670Trigger")
    this:DestroyNpcTrigger("Q4016223N30555Trigger")
    this:DestroyNpcTrigger("Q4016238N2670Trigger")
end

function Quest40162:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest4016202")
        actorUtils.FinishQuestID(false, 4016202)
    end
end

function Quest40162:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40162:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest40162:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest40162:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest40162:OnSubStart4016201(arg1)
    print("OnSubStart4016201")
    actorUtils.FinishQuestID(false, 4016201)
end

function Quest40162:OnSubFinish4016201(arg1)
    print("OnSubFinish4016201")
    this:QuestNarratorTask(datas.Narrator_4016201, nil)
end

function Quest40162:OnSubFailed4016201(arg1)
    print("OnSubFailed4016201")
end

function Quest40162:OnSubStart4016202(arg1)
    print("OnSubStart4016202")
    this:CreateQuestNpc(arg1, npcs.Npc30557.id, 0, false, 0)
end

function Quest40162:OnSubFinish4016202(arg1)
    print("OnSubFinish4016202")
    this:DestroyQuestNpcActor(npcs.Npc30557.alias, 3)
    this:TransmitPlayerWithQuestIdByData(4016202, 1, datas.TransmitData, nil, nil, nil)
    this:ClearNarratorTask()
end

function Quest40162:OnSubFailed4016202(arg1)
    print("OnSubFailed4016202")
end

function Quest40162:OnSubStart4016203(arg1)
    print("OnSubStart4016203")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Paimon.id, 0, 4016203, 30, true)
end

function Quest40162:OnSubFinish4016203(arg1)
    print("OnSubFinish4016203")
    this:GetQuestNpcActor(npcs.Paimon.alias, 40162):DestroyWithDisappear(false, nil)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.Narrator_4016202, nil)
    end)
end

function Quest40162:OnSubFailed4016203(arg1)
    print("OnSubFailed4016203")
end

function Quest40162:OnSubStart4016205(arg1)
    print("OnSubStart4016205")
    this:NpcCreateWithNpcTrigger(npcs.Npc30555.id, 4016205, 0, 30)
    this:CreateQuestNpc(arg1, npcs.Npc30568.id, 0, false, 0)
end

function Quest40162:OnSubFinish4016205(arg1)
    print("OnSubFinish4016205")
    this:SafeDestroyQuestNpc(npcs.Npc30555.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30568.alias, 100)
end

function Quest40162:OnSubFailed4016205(arg1)
    print("OnSubFailed4016205")
end

function Quest40162:OnSubStart4016206(arg1)
    print("OnSubStart4016206")
end

function Quest40162:OnSubFinish4016206(arg1)
    print("OnSubFinish4016206")
end

function Quest40162:OnSubFailed4016206(arg1)
    print("OnSubFailed4016206")
end

function Quest40162:OnSubStart4016225(arg1)
    print("OnSubStart4016225")
end

function Quest40162:OnSubFinish4016225(arg1)
    print("OnSubFinish4016225")
end

function Quest40162:OnSubFailed4016225(arg1)
    print("OnSubFailed4016225")
end

function Quest40162:OnSubStart4016204(arg1)
    print("OnSubStart4016204")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc30554.id, 4016204, 0, 15, 1)
end

function Quest40162:OnSubFinish4016204(arg1)
    print("OnSubFinish4016204")
    this:SafeDestroyQuestNpc(npcs.Npc30554.alias, 100)
end

function Quest40162:OnSubFailed4016204(arg1)
    print("OnSubFailed4016204")
end

function Quest40162:OnSubStart4016226(arg1)
    print("OnSubStart4016226")
    actorMgr:CreateActorWithPos("Q4016226", "Actor/Gadget/Q4016226", 70900002, 0, points._Q4016226Point_.pos, points._Q4016226Point_.rot, true, false, 100)
end

function Quest40162:OnSubFinish4016226(arg1)
    print("OnSubFinish4016226")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.Narrator_4016203, nil)
        this:EnterSceneLookCamera({x = -159.803, y = 487.399, z = -771.505}, 0, 5, true, false)
        this:ActorDestroy("Q4016226")
    end)
end

function Quest40162:OnSubFailed4016226(arg1)
    print("OnSubFailed4016226")
    this:ActorDestroy("Q4016226")
end

function Quest40162:OnSubStart4016207(arg1)
    print("OnSubStart4016207")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016207, 0, 15, 1)
end

function Quest40162:OnSubFinish4016207(arg1)
    print("OnSubFinish4016207")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("FairyTalesMainPage")
    end)

    this:ClearNarratorTask()
end

function Quest40162:OnSubFailed4016207(arg1)
    print("OnSubFailed4016207")
end

function Quest40162:OnSubStart4016208(arg1)
    print("OnSubStart4016208")
    this:NpcCreateWithNpcTrigger(npcs.Npc30569.id, 4016208, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc30570.id, 0, false, 0)
    this:ActionSafeCall(nil)
end

function Quest40162:OnSubFinish4016208(arg1)
    print("OnSubFinish4016208")
    this:SafeDestroyQuestNpc(npcs.Npc30569.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30570.alias, 100)
end

function Quest40162:OnSubFailed4016208(arg1)
    print("OnSubFailed4016208")
end

function Quest40162:OnSubStart4016209(arg1)
    print("OnSubStart4016209")
end

function Quest40162:OnSubFinish4016209(arg1)
    print("OnSubFinish4016209")
end

function Quest40162:OnSubFailed4016209(arg1)
    print("OnSubFailed4016209")
end

function Quest40162:OnSubStart4016219(arg1)
    print("OnSubStart4016219")
    this:NpcCreateWithNpcTrigger(npcs.Npc30569.id, 4016219, 0, 30)
    this:CreateQuestNpc(arg1, npcs.Npc30570.id, 0, false, 0)
end

function Quest40162:OnSubFinish4016219(arg1)
    print("OnSubFinish4016219")
    this:SafeDestroyQuestNpc(npcs.Npc30569.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30570.alias, 100)
    this:ActionSafeCall(function(arg1)
        if this:GetQuestVar(4016219, 0) == 0 then
            this:QuestNarratorTask(datas.Narrator_4016204, nil)
            this:SetQuestVarByMainId(0, 1)
        else
            if this:GetQuestVar(4016219, 0) == 1 then
                this:QuestNarratorTask(datas.Narrator_4016205, nil)
                this:SetQuestVarByMainId(0, 2)
            end
        end
    end)
end

function Quest40162:OnSubFailed4016219(arg1)
    print("OnSubFailed4016219")
end

function Quest40162:OnSubStart4016210(arg1)
    print("OnSubStart4016210")
    this:CreateQuestNpc(arg1, npcs.Npc30555.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc30568.id, 4016210, 0, 10)
end

function Quest40162:OnSubFinish4016210(arg1)
    print("OnSubFinish4016210")
    this:SafeDestroyQuestNpc(npcs.Npc30555.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30568.alias, 100)
end

function Quest40162:OnSubFailed4016210(arg1)
    print("OnSubFailed4016210")
end

function Quest40162:OnSubStart4016211(arg1)
    print("OnSubStart4016211")
end

function Quest40162:OnSubFinish4016211(arg1)
    print("OnSubFinish4016211")
end

function Quest40162:OnSubFailed4016211(arg1)
    print("OnSubFailed4016211")
end

function Quest40162:OnSubStart4016223(arg1)
    print("OnSubStart4016223")
    this:NpcCreateWithNpcTrigger(npcs.Npc30568.id, 4016223, 0, 30)
end

function Quest40162:OnSubFinish4016223(arg1)
    print("OnSubFinish4016223")
    this:SafeDestroyQuestNpc(npcs.Npc30568.alias, 100)
end

function Quest40162:OnSubFailed4016223(arg1)
    print("OnSubFailed4016223")
end

function Quest40162:OnSubStart4016224(arg1)
    print("OnSubStart4016224")
end

function Quest40162:OnSubFinish4016224(arg1)
    print("OnSubFinish4016224")
end

function Quest40162:OnSubFailed4016224(arg1)
    print("OnSubFailed4016224")
end

function Quest40162:OnSubStart4016221(arg1)
    print("OnSubStart4016221")
    this:NpcCreateWithNpcTrigger(npcs.Npc30568.id, 4016221, 0, 30)
end

function Quest40162:OnSubFinish4016221(arg1)
    print("OnSubFinish4016221")
    this:SafeDestroyQuestNpc(npcs.Npc30568.alias, 100)
    this:ActionSafeCall(function(arg1)
        if this:GetQuestVar(4016219, 0) == 0 then
            this:QuestNarratorTask(datas.Narrator_4016204, nil)
            this:SetQuestVarByMainId(0, 1)
        else
            if this:GetQuestVar(4016219, 0) == 1 then
                this:QuestNarratorTask(datas.Narrator_4016205, nil)
                this:SetQuestVarByMainId(0, 2)
            end
        end
    end)
end

function Quest40162:OnSubFailed4016221(arg1)
    print("OnSubFailed4016221")
end

function Quest40162:OnSubStart4016212(arg1)
    print("OnSubStart4016212")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc30556.id, 4016212, 0, 10)
        this:CreateQuestNpc(arg1, npcs.Npc30554.id, 0, false, 0)
    end)
end

function Quest40162:OnSubFinish4016212(arg1)
    print("OnSubFinish4016212")
    this:SafeDestroyQuestNpc(npcs.Npc30556.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30554.alias, 100)
end

function Quest40162:OnSubFailed4016212(arg1)
    print("OnSubFailed4016212")
end

function Quest40162:OnSubStart4016213(arg1)
    print("OnSubStart4016213")
end

function Quest40162:OnSubFinish4016213(arg1)
    print("OnSubFinish4016213")
end

function Quest40162:OnSubFailed4016213(arg1)
    print("OnSubFailed4016213")
end

function Quest40162:OnSubStart4016220(arg1)
    print("OnSubStart4016220")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc30554.id, 4016220, 0, 30, 1)
end

function Quest40162:OnSubFinish4016220(arg1)
    print("OnSubFinish4016220")
    this:SafeDestroyQuestNpc(npcs.Npc30554.alias, 100)
    this:ActionSafeCall(function(arg1)
        if this:GetQuestVar(4016219, 0) == 0 then
            this:QuestNarratorTask(datas.Narrator_4016204, nil)
            this:SetQuestVarByMainId(0, 1)
        else
            if this:GetQuestVar(4016219, 0) == 1 then
                this:QuestNarratorTask(datas.Narrator_4016205, nil)
                this:SetQuestVarByMainId(0, 2)
            end
        end
    end)
end

function Quest40162:OnSubFailed4016220(arg1)
    print("OnSubFailed4016220")
end

function Quest40162:OnSubStart4016227(arg1)
    print("OnSubStart4016227")
end

function Quest40162:OnSubFinish4016227(arg1)
    print("OnSubFinish4016227")
end

function Quest40162:OnSubFailed4016227(arg1)
    print("OnSubFailed4016227")
end

function Quest40162:OnSubStart4016228(arg1)
    print("OnSubStart4016228")
end

function Quest40162:OnSubFinish4016228(arg1)
    print("OnSubFinish4016228")
end

function Quest40162:OnSubFailed4016228(arg1)
    print("OnSubFailed4016228")
end

function Quest40162:OnSubStart4016229(arg1)
    print("OnSubStart4016229")
end

function Quest40162:OnSubFinish4016229(arg1)
    print("OnSubFinish4016229")
end

function Quest40162:OnSubFailed4016229(arg1)
    print("OnSubFailed4016229")
end

function Quest40162:OnSubStart4016214(arg1)
    print("OnSubStart4016214")
end

function Quest40162:OnSubFinish4016214(arg1)
    print("OnSubFinish4016214")
end

function Quest40162:OnSubFailed4016214(arg1)
    print("OnSubFailed4016214")
end

function Quest40162:OnSubStart4016215(arg1)
    print("OnSubStart4016215")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016215, 0, 15, 2)
end

function Quest40162:OnSubFinish4016215(arg1)
    print("OnSubFinish4016215")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
end

function Quest40162:OnSubFailed4016215(arg1)
    print("OnSubFailed4016215")
end

function Quest40162:OnSubStart4016216(arg1)
    print("OnSubStart4016216")
    actorMgr:CreateActorWithPos("Q4016216", "Actor/Gadget/Q4016216", 70900002, 0, points._Q4016216Point_.pos, points._Q4016216Point_.rot, true, false, 100)
end

function Quest40162:OnSubFinish4016216(arg1)
    print("OnSubFinish4016216")
    this:ActorDestroy("Q4016216")
end

function Quest40162:OnSubFailed4016216(arg1)
    print("OnSubFailed4016216")
end

function Quest40162:OnSubStart4016230(arg1)
    print("OnSubStart4016230")
end

function Quest40162:OnSubFinish4016230(arg1)
    print("OnSubFinish4016230")
end

function Quest40162:OnSubFailed4016230(arg1)
    print("OnSubFailed4016230")
end

function Quest40162:OnSubStart4016231(arg1)
    print("OnSubStart4016231")
end

function Quest40162:OnSubFinish4016231(arg1)
    print("OnSubFinish4016231")
end

function Quest40162:OnSubFailed4016231(arg1)
    print("OnSubFailed4016231")
end

function Quest40162:OnSubStart4016232(arg1)
    print("OnSubStart4016232")
end

function Quest40162:OnSubFinish4016232(arg1)
    print("OnSubFinish4016232")
end

function Quest40162:OnSubFailed4016232(arg1)
    print("OnSubFailed4016232")
end

function Quest40162:OnSubStart4016233(arg1)
    print("OnSubStart4016233")
end

function Quest40162:OnSubFinish4016233(arg1)
    print("OnSubFinish4016233")
    this:QuestNarratorTask(datas.Narrator_4016206, nil)
end

function Quest40162:OnSubFailed4016233(arg1)
    print("OnSubFailed4016233")
end

function Quest40162:OnSubStart4016217(arg1)
    print("OnSubStart4016217")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016217, 0, 7, 1)
end

function Quest40162:OnSubFinish4016217(arg1)
    print("OnSubFinish4016217")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
    this:ClearNarratorTask()
end

function Quest40162:OnSubFailed4016217(arg1)
    print("OnSubFailed4016217")
end

function Quest40162:OnSubStart4016234(arg1)
    print("OnSubStart4016234")
end

function Quest40162:OnSubFinish4016234(arg1)
    print("OnSubFinish4016234")
end

function Quest40162:OnSubFailed4016234(arg1)
    print("OnSubFailed4016234")
end

function Quest40162:OnSubStart4016238(arg1)
    print("OnSubStart4016238")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016238, 0, 30, 1)
end

function Quest40162:OnSubFinish4016238(arg1)
    print("OnSubFinish4016238")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
end

function Quest40162:OnSubFailed4016238(arg1)
    print("OnSubFailed4016238")
end

function Quest40162:OnSubStart4016222(arg1)
    print("OnSubStart4016222")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016222, 0, 17, 1)
    this:CreateQuestNpc(arg1, npcs.Npc30555.id, 0, false, 0)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc30607.id, 0, false, 0)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc30556.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30569.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30568.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30570.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30571.id, 0, false, 0)
end

function Quest40162:OnSubFinish4016222(arg1)
    print("OnSubFinish4016222")
    this:SafeDestroyQuestNpc(npcs.Npc30555.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30607.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30556.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30569.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30568.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30570.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30571.alias, 100)
end

function Quest40162:OnSubFailed4016222(arg1)
    print("OnSubFailed4016222")
end

function Quest40162:OnSubStart4016218(arg1)
    print("OnSubStart4016218")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016218, 0, 49, 1)
end

function Quest40162:OnSubFinish4016218(arg1)
    print("OnSubFinish4016218")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
end

function Quest40162:OnSubFailed4016218(arg1)
    print("OnSubFailed4016218")
end

return Quest40162
