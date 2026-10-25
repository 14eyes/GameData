require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40164 = class("Quest40164", QuestActorProxy)
Quest40164.defaultAlias = "Quest40164"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40164:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40164:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4016401"] = self.OnSubStart4016401,
        ["4016402"] = self.OnSubStart4016402,
        ["4016427"] = self.OnSubStart4016427,
        ["4016403"] = self.OnSubStart4016403,
        ["4016404"] = self.OnSubStart4016404,
        ["4016456"] = self.OnSubStart4016456,
        ["4016405"] = self.OnSubStart4016405,
        ["4016406"] = self.OnSubStart4016406,
        ["4016455"] = self.OnSubStart4016455,
        ["4016440"] = self.OnSubStart4016440,
        ["4016447"] = self.OnSubStart4016447,
        ["4016407"] = self.OnSubStart4016407,
        ["4016408"] = self.OnSubStart4016408,
        ["4016409"] = self.OnSubStart4016409,
        ["4016411"] = self.OnSubStart4016411,
        ["4016410"] = self.OnSubStart4016410,
        ["4016449"] = self.OnSubStart4016449,
        ["4016412"] = self.OnSubStart4016412,
        ["4016413"] = self.OnSubStart4016413,
        ["4016448"] = self.OnSubStart4016448,
        ["4016414"] = self.OnSubStart4016414,
        ["4016446"] = self.OnSubStart4016446,
        ["4016415"] = self.OnSubStart4016415,
        ["4016416"] = self.OnSubStart4016416,
        ["4016441"] = self.OnSubStart4016441,
        ["4016442"] = self.OnSubStart4016442,
        ["4016417"] = self.OnSubStart4016417,
        ["4016450"] = self.OnSubStart4016450,
        ["4016418"] = self.OnSubStart4016418,
        ["4016452"] = self.OnSubStart4016452,
        ["4016451"] = self.OnSubStart4016451,
        ["4016419"] = self.OnSubStart4016419,
        ["4016443"] = self.OnSubStart4016443,
        ["4016444"] = self.OnSubStart4016444,
        ["4016420"] = self.OnSubStart4016420,
        ["4016445"] = self.OnSubStart4016445,
        ["4016421"] = self.OnSubStart4016421,
        ["4016422"] = self.OnSubStart4016422,
        ["4016423"] = self.OnSubStart4016423,
        ["4016428"] = self.OnSubStart4016428,
        ["4016430"] = self.OnSubStart4016430,
        ["4016429"] = self.OnSubStart4016429,
        ["4016431"] = self.OnSubStart4016431,
        ["4016432"] = self.OnSubStart4016432,
        ["4016424"] = self.OnSubStart4016424,
        ["4016454"] = self.OnSubStart4016454,
        ["4016425"] = self.OnSubStart4016425,
        ["4016433"] = self.OnSubStart4016433,
        ["4016434"] = self.OnSubStart4016434,
        ["4016437"] = self.OnSubStart4016437,
        ["4016435"] = self.OnSubStart4016435,
        ["4016439"] = self.OnSubStart4016439,
        ["4016438"] = self.OnSubStart4016438,
        ["4016436"] = self.OnSubStart4016436,
        ["4016453"] = self.OnSubStart4016453,
        ["4016426"] = self.OnSubStart4016426
    }
end

function Quest40164:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4016401"] = self.OnSubFinish4016401,
        ["4016402"] = self.OnSubFinish4016402,
        ["4016427"] = self.OnSubFinish4016427,
        ["4016403"] = self.OnSubFinish4016403,
        ["4016404"] = self.OnSubFinish4016404,
        ["4016456"] = self.OnSubFinish4016456,
        ["4016405"] = self.OnSubFinish4016405,
        ["4016406"] = self.OnSubFinish4016406,
        ["4016455"] = self.OnSubFinish4016455,
        ["4016440"] = self.OnSubFinish4016440,
        ["4016447"] = self.OnSubFinish4016447,
        ["4016407"] = self.OnSubFinish4016407,
        ["4016408"] = self.OnSubFinish4016408,
        ["4016409"] = self.OnSubFinish4016409,
        ["4016411"] = self.OnSubFinish4016411,
        ["4016410"] = self.OnSubFinish4016410,
        ["4016449"] = self.OnSubFinish4016449,
        ["4016412"] = self.OnSubFinish4016412,
        ["4016413"] = self.OnSubFinish4016413,
        ["4016448"] = self.OnSubFinish4016448,
        ["4016414"] = self.OnSubFinish4016414,
        ["4016446"] = self.OnSubFinish4016446,
        ["4016415"] = self.OnSubFinish4016415,
        ["4016416"] = self.OnSubFinish4016416,
        ["4016441"] = self.OnSubFinish4016441,
        ["4016442"] = self.OnSubFinish4016442,
        ["4016417"] = self.OnSubFinish4016417,
        ["4016450"] = self.OnSubFinish4016450,
        ["4016418"] = self.OnSubFinish4016418,
        ["4016452"] = self.OnSubFinish4016452,
        ["4016451"] = self.OnSubFinish4016451,
        ["4016419"] = self.OnSubFinish4016419,
        ["4016443"] = self.OnSubFinish4016443,
        ["4016444"] = self.OnSubFinish4016444,
        ["4016420"] = self.OnSubFinish4016420,
        ["4016445"] = self.OnSubFinish4016445,
        ["4016421"] = self.OnSubFinish4016421,
        ["4016422"] = self.OnSubFinish4016422,
        ["4016423"] = self.OnSubFinish4016423,
        ["4016428"] = self.OnSubFinish4016428,
        ["4016430"] = self.OnSubFinish4016430,
        ["4016429"] = self.OnSubFinish4016429,
        ["4016431"] = self.OnSubFinish4016431,
        ["4016432"] = self.OnSubFinish4016432,
        ["4016424"] = self.OnSubFinish4016424,
        ["4016454"] = self.OnSubFinish4016454,
        ["4016425"] = self.OnSubFinish4016425,
        ["4016433"] = self.OnSubFinish4016433,
        ["4016434"] = self.OnSubFinish4016434,
        ["4016437"] = self.OnSubFinish4016437,
        ["4016435"] = self.OnSubFinish4016435,
        ["4016439"] = self.OnSubFinish4016439,
        ["4016438"] = self.OnSubFinish4016438,
        ["4016436"] = self.OnSubFinish4016436,
        ["4016453"] = self.OnSubFinish4016453,
        ["4016426"] = self.OnSubFinish4016426
    }
end

function Quest40164:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4016401"] = self.OnSubFailed4016401,
        ["4016402"] = self.OnSubFailed4016402,
        ["4016427"] = self.OnSubFailed4016427,
        ["4016403"] = self.OnSubFailed4016403,
        ["4016404"] = self.OnSubFailed4016404,
        ["4016456"] = self.OnSubFailed4016456,
        ["4016405"] = self.OnSubFailed4016405,
        ["4016406"] = self.OnSubFailed4016406,
        ["4016455"] = self.OnSubFailed4016455,
        ["4016440"] = self.OnSubFailed4016440,
        ["4016447"] = self.OnSubFailed4016447,
        ["4016407"] = self.OnSubFailed4016407,
        ["4016408"] = self.OnSubFailed4016408,
        ["4016409"] = self.OnSubFailed4016409,
        ["4016411"] = self.OnSubFailed4016411,
        ["4016410"] = self.OnSubFailed4016410,
        ["4016449"] = self.OnSubFailed4016449,
        ["4016412"] = self.OnSubFailed4016412,
        ["4016413"] = self.OnSubFailed4016413,
        ["4016448"] = self.OnSubFailed4016448,
        ["4016414"] = self.OnSubFailed4016414,
        ["4016446"] = self.OnSubFailed4016446,
        ["4016415"] = self.OnSubFailed4016415,
        ["4016416"] = self.OnSubFailed4016416,
        ["4016441"] = self.OnSubFailed4016441,
        ["4016442"] = self.OnSubFailed4016442,
        ["4016417"] = self.OnSubFailed4016417,
        ["4016450"] = self.OnSubFailed4016450,
        ["4016418"] = self.OnSubFailed4016418,
        ["4016452"] = self.OnSubFailed4016452,
        ["4016451"] = self.OnSubFailed4016451,
        ["4016419"] = self.OnSubFailed4016419,
        ["4016443"] = self.OnSubFailed4016443,
        ["4016444"] = self.OnSubFailed4016444,
        ["4016420"] = self.OnSubFailed4016420,
        ["4016445"] = self.OnSubFailed4016445,
        ["4016421"] = self.OnSubFailed4016421,
        ["4016422"] = self.OnSubFailed4016422,
        ["4016423"] = self.OnSubFailed4016423,
        ["4016428"] = self.OnSubFailed4016428,
        ["4016430"] = self.OnSubFailed4016430,
        ["4016429"] = self.OnSubFailed4016429,
        ["4016431"] = self.OnSubFailed4016431,
        ["4016432"] = self.OnSubFailed4016432,
        ["4016424"] = self.OnSubFailed4016424,
        ["4016454"] = self.OnSubFailed4016454,
        ["4016425"] = self.OnSubFailed4016425,
        ["4016433"] = self.OnSubFailed4016433,
        ["4016434"] = self.OnSubFailed4016434,
        ["4016437"] = self.OnSubFailed4016437,
        ["4016435"] = self.OnSubFailed4016435,
        ["4016439"] = self.OnSubFailed4016439,
        ["4016438"] = self.OnSubFailed4016438,
        ["4016436"] = self.OnSubFailed4016436,
        ["4016453"] = self.OnSubFailed4016453,
        ["4016426"] = self.OnSubFailed4016426
    }
end

function Quest40164:Start()
    print("Start")
end

function Quest40164:OnDestroy()
    print("OnDestroy")
end

function Quest40164:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40164:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40164:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc1065.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30557.alias, 20223)
    this:SafeDestroyQuestNpc(npcs.Npc30600.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 20221)
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 20223)
    this:SafeDestroyQuestNpc(npcs.Npc1075.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30576.alias, 20221)
    this:SafeDestroyQuestNpc(npcs.Npc30586.alias, 20221)
    this:SafeDestroyQuestNpc(npcs.Npc30563.alias, 20221)
    this:SafeDestroyQuestNpc(npcs.Npc30589.alias, 20223)
    this:SafeDestroyQuestNpc(npcs.Npc30590.alias, 20223)
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 20220)
    this:ActorDestroy("Q4016423")
    this:ActorDestroy("Q4016424")
    this:ActorDestroy("Q4016449Trigger")
    this:ActorDestroy("Q4016415Tri")
    this:ActorDestroy("Q4016452Trigger")
    this:ActorDestroy("Q4016448Trigger")
    this:ActorDestroy("Q4016427Trigger")
    this:ActorDestroy("Q4016455Trigger")
    this:ActorDestroy("Q4016423Trigger2")
    this:ActorDestroy("Q4016432Trigger")
    this:ActorDestroy("Q4016420Trigger")
    this:DestroyNpcTrigger("Q4016402N2670Trigger")
    this:DestroyNpcTrigger("Q4016404N2670Trigger")
    this:DestroyNpcTrigger("Q4016406N2670Trigger")
    this:DestroyNpcTrigger("Q4016407N2670Trigger")
    this:DestroyNpcTrigger("Q4016410N2670Trigger")
    this:DestroyNpcTrigger("Q4016412N1065Trigger")
    this:DestroyNpcTrigger("Q4016414N2670Trigger")
    this:DestroyNpcTrigger("Q4016417N1005Trigger")
    this:DestroyNpcTrigger("Q4016418N1005Trigger")
    this:DestroyNpcTrigger("Q4016419N2670Trigger")
    this:DestroyNpcTrigger("Q4016420N2670Trigger")
    this:DestroyNpcTrigger("Q4016422N2670Trigger")
    this:DestroyNpcTrigger("Q4016425N2670Trigger")
    this:DestroyNpcTrigger("Q4016426N2670Trigger")
    this:DestroyNpcTrigger("Q4016428N30576Trigger")
    this:DestroyNpcTrigger("Q4016429N30586Trigger")
    this:DestroyNpcTrigger("Q4016430N30563Trigger")
    this:DestroyNpcTrigger("Q4016431N30563Trigger")
    this:DestroyNpcTrigger("Q4016432N2670Trigger")
    this:DestroyNpcTrigger("Q4016435N30557Trigger")
    this:DestroyNpcTrigger("Q4016439N2670Trigger")
    this:DestroyNpcTrigger("Q4016441N2670Trigger")
    this:GetQuestNpcActor(npcs.Paimon.alias, 40164):DestroyWithDisappear(false, nil)
    this:ActorDestroy("Q4016447Trigger")
    this:ActorDestroy("Q4016454Trigger")
end

function Quest40164:OnEvent(arg1)
    print("OnEvent")
end

function Quest40164:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest4016456")
        actorUtils.FinishQuestID(false, 4016456)
    elseif arg1 == 2 then
        print("FinishSubQuest4016428")
        actorUtils.FinishQuestID(false, 4016428)
    elseif arg1 == 3 then
        print("FinishSubQuest4016430")
        actorUtils.FinishQuestID(false, 4016430)
    elseif arg1 == 4 then
        print("FinishSubQuest4016436")
        actorUtils.FinishQuestID(false, 4016436)
    end
end

function Quest40164:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40164:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest40164:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest40164:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest40164:OnSubStart4016401(arg1)
    print("OnSubStart4016401")
end

function Quest40164:OnSubFinish4016401(arg1)
    print("OnSubFinish4016401")
    this:QuestNarratorTask(datas.Narrator_4016401, nil)
end

function Quest40164:OnSubFailed4016401(arg1)
    print("OnSubFailed4016401")
end

function Quest40164:OnSubStart4016402(arg1)
    print("OnSubStart4016402")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016402, 0, 12, 1)
end

function Quest40164:OnSubFinish4016402(arg1)
    print("OnSubFinish4016402")
    this:ClearNarratorTask()
end

function Quest40164:OnSubFailed4016402(arg1)
    print("OnSubFailed4016402")
end

function Quest40164:OnSubStart4016427(arg1)
    print("OnSubStart4016427")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc2670.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1075.id, 0, false, 0)
        actorMgr:CreateActorWithPos("Q4016427Trigger", "Actor/Gadget/Q4016427Trigger", 70900002, 0, points._Q4016427TriggerPoint_.pos, points._Q4016427TriggerPoint_.rot, true, false, 100)
        this:GetQuestNpcActor(npcs.Npc1075.alias):SetNpcAnimator(3, "Add", 0, 0, true, true)
        this:GetQuestNpcActor(npcs.Npc1075.alias, 40164):SpawnAttachEx("FairyC_Navia")
        this:GetQuestNpcActor(npcs.Npc1075.alias, 40164):SitOnChair(0, false)
        this:GetQuestNpcActor(npcs.Npc2670.alias, 40164):SitOnChair(0, false)
    end)
end

function Quest40164:OnSubFinish4016427(arg1)
    print("OnSubFinish4016427")
    this:ActorDestroy("Q4016427Trigger")
end

function Quest40164:OnSubFailed4016427(arg1)
    print("OnSubFailed4016427")
end

function Quest40164:OnSubStart4016403(arg1)
    print("OnSubStart4016403")
end

function Quest40164:OnSubFinish4016403(arg1)
    print("OnSubFinish4016403")
    this:ShowBlackScreen(0.4, 0.5, 0, function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc2670.alias, 100)
        this:DestroyQuestNpcActor(npcs.Npc1075.alias, 100)
    end)
end

function Quest40164:OnSubFailed4016403(arg1)
    print("OnSubFailed4016403")
end

function Quest40164:OnSubStart4016404(arg1)
    print("OnSubStart4016404")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016404, 0, 45, 2)
end

function Quest40164:OnSubFinish4016404(arg1)
    print("OnSubFinish4016404")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
end

function Quest40164:OnSubFailed4016404(arg1)
    print("OnSubFailed4016404")
end

function Quest40164:OnSubStart4016456(arg1)
    print("OnSubStart4016456")
end

function Quest40164:OnSubFinish4016456(arg1)
    print("OnSubFinish4016456")
end

function Quest40164:OnSubFailed4016456(arg1)
    print("OnSubFailed4016456")
end

function Quest40164:OnSubStart4016405(arg1)
    print("OnSubStart4016405")
end

function Quest40164:OnSubFinish4016405(arg1)
    print("OnSubFinish4016405")
end

function Quest40164:OnSubFailed4016405(arg1)
    print("OnSubFailed4016405")
end

function Quest40164:OnSubStart4016406(arg1)
    print("OnSubStart4016406")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016406, 0, 40, 2)
end

function Quest40164:OnSubFinish4016406(arg1)
    print("OnSubFinish4016406")
end

function Quest40164:OnSubFailed4016406(arg1)
    print("OnSubFailed4016406")
end

function Quest40164:OnSubStart4016455(arg1)
    print("OnSubStart4016455")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc2670.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1075.id, 0, false, 0)
        actorMgr:CreateActorWithPos("Q4016455Trigger", "Actor/Gadget/Q4016455Trigger", 70900002, 0, points._Q4016455TriggerPoint_.pos, points._Q4016455TriggerPoint_.rot, true, false, 100)
        this:GetQuestNpcActor(npcs.Npc1075.alias):SetNpcAnimator(3, "Add", 0, 0, true, true)
        this:GetQuestNpcActor(npcs.Npc1075.alias, 40164):SpawnAttachEx("FairyC_Navia")
        this:GetQuestNpcActor(npcs.Npc2670.alias, 40164):SitOnChair(0, false)
        this:GetQuestNpcActor(npcs.Npc1075.alias, 40164):SitOnChair(0, false)
    end)
end

function Quest40164:OnSubFinish4016455(arg1)
    print("OnSubFinish4016455")
    this:ActorDestroy("Q4016455Trigger")
end

function Quest40164:OnSubFailed4016455(arg1)
    print("OnSubFailed4016455")
end

function Quest40164:OnSubStart4016440(arg1)
    print("OnSubStart4016440")
end

function Quest40164:OnSubFinish4016440(arg1)
    print("OnSubFinish4016440")
end

function Quest40164:OnSubFailed4016440(arg1)
    print("OnSubFailed4016440")
end

function Quest40164:OnSubStart4016447(arg1)
    print("OnSubStart4016447")
    actorMgr:CreateActorWithPos("Q4016447Trigger", "Actor/Gadget/Q4016447Trigger", 70900002, 0, points._Q4016447TriggerPoint_.pos, points._Q4016447TriggerPoint_.rot, true, false, 100)
end

function Quest40164:OnSubFinish4016447(arg1)
    print("OnSubFinish4016447")
    this:TransmitPlayerWithQuestIdByData(4016447, 1, datas.TransmitData_1, nil, nil, nil)
    this:ActorDestroy("Q4016447Trigger")
end

function Quest40164:OnSubFailed4016447(arg1)
    print("OnSubFailed4016447")
    this:ActorDestroy("Q4016447Trigger")
end

function Quest40164:OnSubStart4016407(arg1)
    print("OnSubStart4016407")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc2670.id, 0, 4016407, 15, true)
end

function Quest40164:OnSubFinish4016407(arg1)
    print("OnSubFinish4016407")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
end

function Quest40164:OnSubFailed4016407(arg1)
    print("OnSubFailed4016407")
end

function Quest40164:OnSubStart4016408(arg1)
    print("OnSubStart4016408")
end

function Quest40164:OnSubFinish4016408(arg1)
    print("OnSubFinish4016408")
end

function Quest40164:OnSubFailed4016408(arg1)
    print("OnSubFailed4016408")
end

function Quest40164:OnSubStart4016409(arg1)
    print("OnSubStart4016409")
    this:PlayCutsceneIndex(4016403, function(arg1)
        actorUtils.FinishQuestID(false, 4016409)
    end, nil, nil, false)
end

function Quest40164:OnSubFinish4016409(arg1)
    print("OnSubFinish4016409")
end

function Quest40164:OnSubFailed4016409(arg1)
    print("OnSubFailed4016409")
end

function Quest40164:OnSubStart4016411(arg1)
    print("OnSubStart4016411")
end

function Quest40164:OnSubFinish4016411(arg1)
    print("OnSubFinish4016411")
end

function Quest40164:OnSubFailed4016411(arg1)
    print("OnSubFailed4016411")
end

function Quest40164:OnSubStart4016410(arg1)
    print("OnSubStart4016410")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016410, 0, 15, 2)
end

function Quest40164:OnSubFinish4016410(arg1)
    print("OnSubFinish4016410")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
end

function Quest40164:OnSubFailed4016410(arg1)
    print("OnSubFailed4016410")
end

function Quest40164:OnSubStart4016449(arg1)
    print("OnSubStart4016449")
    actorMgr:CreateActorWithPos("Q4016449Trigger", "Actor/Gadget/Q4016449Trigger", 70900002, 0, points._Q4016449TriggerPoint_.pos, points._Q4016449TriggerPoint_.rot, true, false, 100)
end

function Quest40164:OnSubFinish4016449(arg1)
    print("OnSubFinish4016449")
    this:ActorDestroy("Q4016449Trigger")
end

function Quest40164:OnSubFailed4016449(arg1)
    print("OnSubFailed4016449")
end

function Quest40164:OnSubStart4016412(arg1)
    print("OnSubStart4016412")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1065.id, 4016412, 0, 5, 1)
end

function Quest40164:OnSubFinish4016412(arg1)
    print("OnSubFinish4016412")
    this:SafeDestroyQuestNpc(npcs.Npc1065.alias, 100)
end

function Quest40164:OnSubFailed4016412(arg1)
    print("OnSubFailed4016412")
end

function Quest40164:OnSubStart4016413(arg1)
    print("OnSubStart4016413")
end

function Quest40164:OnSubFinish4016413(arg1)
    print("OnSubFinish4016413")
end

function Quest40164:OnSubFailed4016413(arg1)
    print("OnSubFailed4016413")
end

function Quest40164:OnSubStart4016448(arg1)
    print("OnSubStart4016448")
    actorMgr:CreateActorWithPos("Q4016448Trigger", "Actor/Gadget/Q4016448Trigger", 70900002, 0, points._Q4016448TriggerPoint_.pos, points._Q4016448TriggerPoint_.rot, true, false, 100)
end

function Quest40164:OnSubFinish4016448(arg1)
    print("OnSubFinish4016448")
    this:ActorDestroy("Q4016448Trigger")
end

function Quest40164:OnSubFailed4016448(arg1)
    print("OnSubFailed4016448")
end

function Quest40164:OnSubStart4016414(arg1)
    print("OnSubStart4016414")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016414, 0, 7, 2)
end

function Quest40164:OnSubFinish4016414(arg1)
    print("OnSubFinish4016414")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
end

function Quest40164:OnSubFailed4016414(arg1)
    print("OnSubFailed4016414")
end

function Quest40164:OnSubStart4016446(arg1)
    print("OnSubStart4016446")
    local questGlobalVar = self:GetQuestGlobalVar(4016403)
    if questGlobalVar == 1 then
        this:ActionSafeCall(function(arg1_2)
            this:CreateQuestNpc(arg1, npcs.Npc2670.id, 0, false, 0)
            this:CreateQuestNpc(arg1, npcs.Npc1065.id, 0, false, 0)
            this:CreateQuestNpc(arg1, npcs.Npc1075.id, 0, false, 0)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc1075.alias, 40164)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
            local v = this:GetQuestNpcActor(npcs.Npc1065.alias, 40164)
            v:DisableInteeHeadCtrl(true)
            v:DoFreeStyle(1120, true, nil, true, true, false, false)
            local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc2670.alias, 40164)
            questNpcActor2:DisableInteeHeadCtrl(true)
            questNpcActor2:DoFreeStyle(1130, true, nil, true, true, false, false)
        end)
    elseif questGlobalVar == 0 then
        this:DestroyQuestNpcActor(npcs.Paimon.alias, 20220)
        this:DestroyQuestNpcActor(npcs.Npc2670.alias, 20220)
        this:CreateQuestNpc(arg1, npcs.Npc30600.id, 0, false, 0)
    end

    this:DestroyNpcTrigger("Q4016441N2670Trigger")
    this:DestroyNpcTrigger("Q4016417N1005Trigger")
    this:DestroyNpcTrigger("Q4016419N2670Trigger")
    this:DestroyNpcTrigger("Q4016420N2670Trigger")
    this:DestroyNpcTrigger("Q4016422N2670Trigger")
    this:ActorDestroy("Q4016423")
    this:DestroyNpcTrigger("Q4016428N30576Trigger")
    this:DestroyNpcTrigger("Q4016429N30586Trigger")
    this:DestroyNpcTrigger("Q4016430N30563Trigger")
    this:DestroyNpcTrigger("Q4016431N30563Trigger")
    this:DestroyNpcTrigger("Q4016432N2670Trigger")
    this:ActorDestroy("Q4016424")
    this:ActorDestroy("Q4016423Trigger2")
    this:ActorDestroy("Q4016432Trigger")
    this:ActorDestroy("Q4016420Trigger")
    this:DestroyNpcTrigger("Q4016425N2670Trigger")
    this:DestroyNpcTrigger("Q4016435N30557Trigger")
    this:DestroyNpcTrigger("Q4016439N2670Trigger")
    this:DestroyQuestNpcActor(npcs.Npc30589.alias, 20223)
    this:DestroyQuestNpcActor(npcs.Npc30590.alias, 20223)
    this:DestroyQuestNpcActor(npcs.Npc30576.alias, 20221)
    this:DestroyQuestNpcActor(npcs.Npc30563.alias, 20221)
    this:DestroyQuestNpcActor(npcs.Npc30586.alias, 20221)
    this:DestroyQuestNpcActor(npcs.Npc30557.alias, 20223)
    this:RemoveLocalGadget(70291210, "11")
end

function Quest40164:OnSubFinish4016446(arg1)
    print("OnSubFinish4016446")
    this:GetQuestNpcActor(npcs.Npc2670.alias, 40164):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1075.alias, 40164):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1065.alias, 40164):DisableInteeHeadCtrl(false)
end

function Quest40164:OnSubFailed4016446(arg1)
    print("OnSubFailed4016446")
end

function Quest40164:OnSubStart4016415(arg1)
    print("OnSubStart4016415")
    actorMgr:CreateActorWithPos("Q4016415Tri", "Actor/Gadget/Q4016415Tri", 70900002, 0, points._Q4016415TriPoint_.pos, points._Q4016415TriPoint_.rot, true, false, 100)
end

function Quest40164:OnSubFinish4016415(arg1)
    print("OnSubFinish4016415")
    this:ActorDestroy("Q4016415Tri")
    this:SafeDestroyQuestNpc(npcs.Npc30600.alias, 100)
end

function Quest40164:OnSubFailed4016415(arg1)
    print("OnSubFailed4016415")
end

function Quest40164:OnSubStart4016416(arg1)
    print("OnSubStart4016416")
end

function Quest40164:OnSubFinish4016416(arg1)
    print("OnSubFinish4016416")
end

function Quest40164:OnSubFailed4016416(arg1)
    print("OnSubFailed4016416")
end

function Quest40164:OnSubStart4016441(arg1)
    print("OnSubStart4016441")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016441, 0, 30, 1)
end

function Quest40164:OnSubFinish4016441(arg1)
    print("OnSubFinish4016441")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 20220)
    this:DestroyNpcTrigger("Q4016441N2670Trigger")
end

function Quest40164:OnSubFailed4016441(arg1)
    print("OnSubFailed4016441")
end

function Quest40164:OnSubStart4016442(arg1)
    print("OnSubStart4016442")
end

function Quest40164:OnSubFinish4016442(arg1)
    print("OnSubFinish4016442")
end

function Quest40164:OnSubFailed4016442(arg1)
    print("OnSubFailed4016442")
end

function Quest40164:OnSubStart4016417(arg1)
    print("OnSubStart4016417")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Paimon.id, 4016417, 0, 30, 1)
end

function Quest40164:OnSubFinish4016417(arg1)
    print("OnSubFinish4016417")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 20220)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData_1, 5, nil, nil, nil)
end

function Quest40164:OnSubFailed4016417(arg1)
    print("OnSubFailed4016417")
end

function Quest40164:OnSubStart4016450(arg1)
    print("OnSubStart4016450")
end

function Quest40164:OnSubFinish4016450(arg1)
    print("OnSubFinish4016450")
end

function Quest40164:OnSubFailed4016450(arg1)
    print("OnSubFailed4016450")
end

function Quest40164:OnSubStart4016418(arg1)
    print("OnSubStart4016418")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Paimon.id, 4016418, 0, 15, 1)
end

function Quest40164:OnSubFinish4016418(arg1)
    print("OnSubFinish4016418")
    this:DestroyNpcTrigger("Q4016418N1005Trigger")
end

function Quest40164:OnSubFailed4016418(arg1)
    print("OnSubFailed4016418")
end

function Quest40164:OnSubStart4016452(arg1)
    print("OnSubStart4016452")
    actorMgr:CreateActorWithPos("Q4016452Trigger", "Actor/Gadget/Q4016452Trigger", 70900002, 0, points._Q4016452TriggerPoint_.pos, points._Q4016452TriggerPoint_.rot, true, false, 100)
end

function Quest40164:OnSubFinish4016452(arg1)
    print("OnSubFinish4016452")
    this:ActorDestroy("Q4016452Trigger")
end

function Quest40164:OnSubFailed4016452(arg1)
    print("OnSubFailed4016452")
end

function Quest40164:OnSubStart4016451(arg1)
    print("OnSubStart4016451")
end

function Quest40164:OnSubFinish4016451(arg1)
    print("OnSubFinish4016451")
end

function Quest40164:OnSubFailed4016451(arg1)
    print("OnSubFailed4016451")
end

function Quest40164:OnSubStart4016419(arg1)
    print("OnSubStart4016419")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc2670.id, 0, 4016419, 20, true)
end

function Quest40164:OnSubFinish4016419(arg1)
    print("OnSubFinish4016419")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 20221)
    this:DestroyNpcTrigger("Q4016419N2670Trigger")
end

function Quest40164:OnSubFailed4016419(arg1)
    print("OnSubFailed4016419")
end

function Quest40164:OnSubStart4016443(arg1)
    print("OnSubStart4016443")
end

function Quest40164:OnSubFinish4016443(arg1)
    print("OnSubFinish4016443")
end

function Quest40164:OnSubFailed4016443(arg1)
    print("OnSubFailed4016443")
end

function Quest40164:OnSubStart4016444(arg1)
    print("OnSubStart4016444")
end

function Quest40164:OnSubFinish4016444(arg1)
    print("OnSubFinish4016444")
end

function Quest40164:OnSubFailed4016444(arg1)
    print("OnSubFailed4016444")
end

function Quest40164:OnSubStart4016420(arg1)
    print("OnSubStart4016420")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016420, 0, 30, 2)
end

function Quest40164:OnSubFinish4016420(arg1)
    print("OnSubFinish4016420")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 20221)
    this:DestroyNpcTrigger("Q4016420N2670Trigger")
end

function Quest40164:OnSubFailed4016420(arg1)
    print("OnSubFailed4016420")
end

function Quest40164:OnSubStart4016445(arg1)
    print("OnSubStart4016445")
end

function Quest40164:OnSubFinish4016445(arg1)
    print("OnSubFinish4016445")
end

function Quest40164:OnSubFailed4016445(arg1)
    print("OnSubFailed4016445")
end

function Quest40164:OnSubStart4016421(arg1)
    print("OnSubStart4016421")
end

function Quest40164:OnSubFinish4016421(arg1)
    print("OnSubFinish4016421")
end

function Quest40164:OnSubFailed4016421(arg1)
    print("OnSubFailed4016421")
end

function Quest40164:OnSubStart4016422(arg1)
    print("OnSubStart4016422")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016422, 0, 49, 2)
end

function Quest40164:OnSubFinish4016422(arg1)
    print("OnSubFinish4016422")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 20221)
end

function Quest40164:OnSubFailed4016422(arg1)
    print("OnSubFailed4016422")
end

function Quest40164:OnSubStart4016423(arg1)
    print("OnSubStart4016423")
    actorMgr:CreateActorWithPos("Q4016423", "Actor/Gadget/Q4016423", 70900002, 0, points._Q4016423Point_.pos, points._Q4016423Point_.rot, true, false, 20221)
    actorMgr:CreateActorWithPos("Q4016423Trigger2", "Actor/Gadget/Q4016423Trigger2", 70900002, 0, points._Q4016423Trigger2Point_.pos, points._Q4016423Trigger2Point_.rot, true, false, 20221)
end

function Quest40164:OnSubFinish4016423(arg1)
    print("OnSubFinish4016423")
    this:QuestNarratorTask(datas.Narrator_4016404, nil)
    this:ActorDestroy("Q4016423")
    this:EnterSceneLookCamera({x = 3.746, y = 8.211, z = 413.411}, 0, 3, false, false)
end

function Quest40164:OnSubFailed4016423(arg1)
    print("OnSubFailed4016423")
end

function Quest40164:OnSubStart4016428(arg1)
    print("OnSubStart4016428")
    this:NpcCreateWithNpcTrigger(npcs.Npc30576.id, 4016428, 0, 5)
end

function Quest40164:OnSubFinish4016428(arg1)
    print("OnSubFinish4016428")
    this:SafeDestroyQuestNpc(npcs.Npc30576.alias, 20221)
    this:ClearNarratorTask()
end

function Quest40164:OnSubFailed4016428(arg1)
    print("OnSubFailed4016428")
end

function Quest40164:OnSubStart4016430(arg1)
    print("OnSubStart4016430")
    this:NpcCreateWithNpcTrigger(npcs.Npc30563.id, 4016430, 0, 5)
end

function Quest40164:OnSubFinish4016430(arg1)
    print("OnSubFinish4016430")
    this:SafeDestroyQuestNpc(npcs.Npc30563.alias, 20221)
end

function Quest40164:OnSubFailed4016430(arg1)
    print("OnSubFailed4016430")
end

function Quest40164:OnSubStart4016429(arg1)
    print("OnSubStart4016429")
    this:NpcCreateWithNpcTrigger(npcs.Npc30586.id, 4016429, 0, 5)
end

function Quest40164:OnSubFinish4016429(arg1)
    print("OnSubFinish4016429")
    this:DestroyQuestNpcActor(npcs.Npc30586.alias, 20221)
    this:ActorDestroy("Q4016423Trigger2")
end

function Quest40164:OnSubFailed4016429(arg1)
    print("OnSubFailed4016429")
end

function Quest40164:OnSubStart4016431(arg1)
    print("OnSubStart4016431")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc30563.id, 4016431, 0, 49, 1)
    end)
end

function Quest40164:OnSubFinish4016431(arg1)
    print("OnSubFinish4016431")
    this:DestroyQuestNpcActor(npcs.Npc30563.alias, 20221)
end

function Quest40164:OnSubFailed4016431(arg1)
    print("OnSubFailed4016431")
end

function Quest40164:OnSubStart4016432(arg1)
    print("OnSubStart4016432")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016432, 0, 30, 2)
    actorMgr:CreateActorWithPos("Q4016432Trigger", "Actor/Gadget/Q4016432Trigger", 70900002, 0, points._Q4016432TriggerPoint_.pos, points._Q4016432TriggerPoint_.rot, true, false, 20221)
end

function Quest40164:OnSubFinish4016432(arg1)
    print("OnSubFinish4016432")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 20221)
    this:ActorDestroy("Q4016432Trigger")
end

function Quest40164:OnSubFailed4016432(arg1)
    print("OnSubFailed4016432")
end

function Quest40164:OnSubStart4016424(arg1)
    print("OnSubStart4016424")
    actorMgr:CreateActorWithPos("Q4016424", "Actor/Gadget/Q4016424", 70900002, 0, points._Q4016424Point_.pos, points._Q4016424Point_.rot, true, false, 20221)
end

function Quest40164:OnSubFinish4016424(arg1)
    print("OnSubFinish4016424")
    this:PlayerEnterDungeonWithData(21, 1208, 4016424, 1, datas.PlayerEnterDungeonData, nil, nil)
    this:ActorDestroy("Q4016424")
end

function Quest40164:OnSubFailed4016424(arg1)
    print("OnSubFailed4016424")
end

function Quest40164:OnSubStart4016454(arg1)
    print("OnSubStart4016454")
    actorMgr:CreateActorWithPos("Q4016454Trigger", "Actor/Gadget/Q4016454Trigger", 70900002, 0, points._Q4016454TriggerPoint_.pos, points._Q4016454TriggerPoint_.rot, true, false, 20221)
end

function Quest40164:OnSubFinish4016454(arg1)
    print("OnSubFinish4016454")
    this:ActorDestroy("Q4016454Trigger")
end

function Quest40164:OnSubFailed4016454(arg1)
    print("OnSubFailed4016454")
end

function Quest40164:OnSubStart4016425(arg1)
    print("OnSubStart4016425")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc2670.id, 0, 4016425, 30, true)
end

function Quest40164:OnSubFinish4016425(arg1)
    print("OnSubFinish4016425")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 20223)
end

function Quest40164:OnSubFailed4016425(arg1)
    print("OnSubFailed4016425")
end

function Quest40164:OnSubStart4016433(arg1)
    print("OnSubStart4016433")
    this:CreateQuestNpc(arg1, npcs.Npc30589.id, 0, false, 0)
end

function Quest40164:OnSubFinish4016433(arg1)
    print("OnSubFinish4016433")
    this:DestroyQuestNpcActor(npcs.Npc30589.alias, 20223)
end

function Quest40164:OnSubFailed4016433(arg1)
    print("OnSubFailed4016433")
end

function Quest40164:OnSubStart4016434(arg1)
    print("OnSubStart4016434")
    this:CreateQuestNpc(arg1, npcs.Npc30590.id, 0, false, 0)
end

function Quest40164:OnSubFinish4016434(arg1)
    print("OnSubFinish4016434")
    this:DestroyQuestNpcActor(npcs.Npc30590.alias, 20223)
end

function Quest40164:OnSubFailed4016434(arg1)
    print("OnSubFailed4016434")
end

function Quest40164:OnSubStart4016437(arg1)
    print("OnSubStart4016437")
    this:CreateLocalGadget(70291210, "11", {x = 250.803, y = 0.993, z = 253.996}, {x = 0, y = 264.775, z = 0}, 20223, nil, nil, false, 0, true)
end

function Quest40164:OnSubFinish4016437(arg1)
    print("OnSubFinish4016437")
end

function Quest40164:OnSubFailed4016437(arg1)
    print("OnSubFailed4016437")
end

function Quest40164:OnSubStart4016435(arg1)
    print("OnSubStart4016435")
    this:NpcCreateWithNpcTrigger(npcs.Npc30557.id, 4016435, 0, 30)
end

function Quest40164:OnSubFinish4016435(arg1)
    print("OnSubFinish4016435")
    this:DestroyQuestNpcActor(npcs.Npc30557.alias, 20223)
end

function Quest40164:OnSubFailed4016435(arg1)
    print("OnSubFailed4016435")
end

function Quest40164:OnSubStart4016439(arg1)
    print("OnSubStart4016439")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016439, 0, 30, 2)
end

function Quest40164:OnSubFinish4016439(arg1)
    print("OnSubFinish4016439")
    this:TransmitPlayerByQuestId(4016439, 1, nil, nil, nil)
end

function Quest40164:OnSubFailed4016439(arg1)
    print("OnSubFailed4016439")
end

function Quest40164:OnSubStart4016438(arg1)
    print("OnSubStart4016438")
end

function Quest40164:OnSubFinish4016438(arg1)
    print("OnSubFinish4016438")
end

function Quest40164:OnSubFailed4016438(arg1)
    print("OnSubFailed4016438")
end

function Quest40164:OnSubStart4016436(arg1)
    print("OnSubStart4016436")
end

function Quest40164:OnSubFinish4016436(arg1)
    print("OnSubFinish4016436")
end

function Quest40164:OnSubFailed4016436(arg1)
    print("OnSubFailed4016436")
end

function Quest40164:OnSubStart4016453(arg1)
    print("OnSubStart4016453")
end

function Quest40164:OnSubFinish4016453(arg1)
    print("OnSubFinish4016453")
end

function Quest40164:OnSubFailed4016453(arg1)
    print("OnSubFailed4016453")
end

function Quest40164:OnSubStart4016426(arg1)
    print("OnSubStart4016426")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc2670.id, 0, 4016426, 30, true)
end

function Quest40164:OnSubFinish4016426(arg1)
    print("OnSubFinish4016426")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
end

function Quest40164:OnSubFailed4016426(arg1)
    print("OnSubFailed4016426")
end

return Quest40164
