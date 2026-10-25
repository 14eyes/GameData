require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5001 = class("Quest5001", QuestActorProxy)
Quest5001.defaultAlias = "Quest5001"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5001:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["500122"] = self.OnSubStart500122,
        ["500101"] = self.OnSubStart500101,
        ["500102"] = self.OnSubStart500102,
        ["500103"] = self.OnSubStart500103,
        ["500120"] = self.OnSubStart500120,
        ["500104"] = self.OnSubStart500104,
        ["500105"] = self.OnSubStart500105,
        ["500106"] = self.OnSubStart500106,
        ["500107"] = self.OnSubStart500107,
        ["500108"] = self.OnSubStart500108,
        ["500109"] = self.OnSubStart500109,
        ["500123"] = self.OnSubStart500123,
        ["500112"] = self.OnSubStart500112,
        ["500110"] = self.OnSubStart500110,
        ["500111"] = self.OnSubStart500111,
        ["500113"] = self.OnSubStart500113,
        ["500114"] = self.OnSubStart500114,
        ["500116"] = self.OnSubStart500116,
        ["500117"] = self.OnSubStart500117,
        ["500115"] = self.OnSubStart500115,
        ["500121"] = self.OnSubStart500121,
        ["500118"] = self.OnSubStart500118,
        ["500119"] = self.OnSubStart500119
    }
end

function Quest5001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["500122"] = self.OnSubFinish500122,
        ["500101"] = self.OnSubFinish500101,
        ["500102"] = self.OnSubFinish500102,
        ["500103"] = self.OnSubFinish500103,
        ["500120"] = self.OnSubFinish500120,
        ["500104"] = self.OnSubFinish500104,
        ["500105"] = self.OnSubFinish500105,
        ["500106"] = self.OnSubFinish500106,
        ["500107"] = self.OnSubFinish500107,
        ["500108"] = self.OnSubFinish500108,
        ["500109"] = self.OnSubFinish500109,
        ["500123"] = self.OnSubFinish500123,
        ["500112"] = self.OnSubFinish500112,
        ["500110"] = self.OnSubFinish500110,
        ["500111"] = self.OnSubFinish500111,
        ["500113"] = self.OnSubFinish500113,
        ["500114"] = self.OnSubFinish500114,
        ["500116"] = self.OnSubFinish500116,
        ["500117"] = self.OnSubFinish500117,
        ["500115"] = self.OnSubFinish500115,
        ["500121"] = self.OnSubFinish500121,
        ["500118"] = self.OnSubFinish500118,
        ["500119"] = self.OnSubFinish500119
    }
end

function Quest5001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["500122"] = self.OnSubFailed500122,
        ["500104"] = self.OnSubFailed500104,
        ["500105"] = self.OnSubFailed500105,
        ["500106"] = self.OnSubFailed500106,
        ["500107"] = self.OnSubFailed500107,
        ["500108"] = self.OnSubFailed500108,
        ["500109"] = self.OnSubFailed500109,
        ["500111"] = self.OnSubFailed500111,
        ["500114"] = self.OnSubFailed500114,
        ["500117"] = self.OnSubFailed500117,
        ["500121"] = self.OnSubFailed500121
    }
end

function Quest5001:Start()
    print("Start")
end

function Quest5001:OnDestroy()
    print("OnDestroy")
end

function Quest5001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5001:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5001:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    if arg1.valueString == "50011601" then
        local actor = actorMgr:GetActor("5001")
        print("testtesttest")
        if actor:GetQuestGlobalVar(500103) == 1 then
            actor:QuestNarratorTask(datas.BattleKaiche, nil)
            print("testtest500116")
        end
    end
end

function Quest5001:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 500115 then
        actorUtils.FinishQuestID(false, 500115)
    end
end

function Quest5001:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5001:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest5001:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest5001:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5001:CheckScene()
    if sceneData.currSceneID == 1099 then
        this:CallDelay(1, function(arg1)
            this:AnotherCheck()
        end)
    else
        this:DestroyQuestNpcActor(npcs.Npc14211.alias, 1099)
    end
end

function Quest5001:AnotherCheck()
    this:CheckScene()
end

function Quest5001:OnSubStart500122(arg1)
    print("OnSubStart500122")
    actorMgr:CreateActorWithPos("Q500122Talk", "Actor/Gadget/Q500122Talk", 70900002, 0, points._Q500122TalkPoint_.pos, points._Q500122TalkPoint_.rot, true, false, 3)
end

function Quest5001:OnSubFinish500122(arg1)
    print("OnSubFinish500122")
    this:ActorDestroy("Q500122Talk")
end

function Quest5001:OnSubFailed500122(arg1)
    print("OnSubFailed500122")
    this:ActorDestroy("Q500122Talk")
end

function Quest5001:OnSubStart500101(arg1)
    print("OnSubStart500101")
    this:CreateQuestNpc(arg1, npcs.Npc1086.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1086.alias, 5001):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1087.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14187.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14187.alias, 5001):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14186.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14183.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14183.alias, 5001):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14198.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14113.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14273.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14274.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14274.alias, 5001):SitOnChair(8065, true)
    this:CreateQuestNpc(arg1, npcs.Npc14188.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14188.alias, 5001):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14192.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14275.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14275.alias, 5001):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14182.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14185.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14185.alias, 5001):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14211.id, 0, false, 0)
    this:CallDelayByQuest("50010101", 1, function(arg1)
        this:NotifyTo(npcs.Npc6012.alias, 1, true)
    end)

    this:GetQuestNpcActor(npcs.Npc14113.alias, 5001):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14273.alias, 5001):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14274.alias, 5001):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14188.alias, 5001):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14192.alias, 5001):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14275.alias, 5001):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14182.alias, 5001):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14183.alias, 5001):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14198.alias, 5001):DisableInteeHeadCtrl(true)
    this:CreateSpeechBubbleTask(npcs.Npc14183.id, 50019802, 5, true, 3, 5, true, false)
    this:CreateSpeechBubbleTask(npcs.Npc14186.id, 50019803, 5, true, 3, 5, true, false)
    this:CreateSpeechBubbleTask(npcs.Npc14274.id, 50019804, 5, true, 3, 5, true, false)
    this:CreateSpeechBubbleTask(npcs.Npc14275.id, 50019805, 5, true, 3, 5, true, false)
    this:CreateSpeechBubbleTask(npcs.Npc14113.id, 50019801, 5, true, 3, 5, true, false)
    this:GetQuestNpcActor(npcs.Npc1087.alias, 5001):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1086.alias, 5001):DisableInteeHeadCtrl(true)
    if actorMgr:GetActor("5001"):GetQuestVar(500101, 0) == 0 then
        if sceneData.currSceneID == 1099 then
            this:GetQuestNpcActor(npcs.Npc14211.alias, 5001):NarratorOnlyTaskByData(datas.Q500101Kaiche, function(arg1)
                this:SetQuestVarByMainId(0, 1)
                this:DestroyQuestNpcActor(npcs.Npc14211.alias, 1099)
                if this.uActor ~= nil then
                    this:StopNarrator()
                end
            end, 5001)
        else
            this:SetQuestVarByMainId(0, 1)
            this:DestroyQuestNpcActor(npcs.Npc14211.alias, 1099)
        end
    end

    this:GetQuestNpcActor(npcs.Npc14187.alias, 5001):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14186.alias, 5001):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14185.alias, 5001):DisableInteeHeadCtrl(true)
    this:CheckScene()
    this:NotifyTo(npcs.Npc6045.alias, 1, true)
end

function Quest5001:OnSubFinish500101(arg1)
    print("OnSubFinish500101")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14187.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc14186.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc14183.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc14198.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc14113.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14273.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14274.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14188.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14192.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14275.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14182.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14185.alias, 3)
    this:LightNotifyTo(npcs.Npc6012.alias, 0, true)
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    this:DestroyQuestNpcActor(npcs.Npc14211.alias, 1099)
    this:LightNotifyTo(npcs.Npc6045.alias, 0, true)
end

function Quest5001:OnSubStart500102(arg1)
    print("OnSubStart500102")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500102, 0, 5, 1, npcs.Npc1088.id)
end

function Quest5001:OnSubFinish500102(arg1)
    print("OnSubFinish500102")
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
end

function Quest5001:OnSubStart500103(arg1)
    print("OnSubStart500103")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14187.id, 0, false, 0)
    end)
end

function Quest5001:OnSubFinish500103(arg1)
    print("OnSubFinish500103")
    this:SafeDestroyQuestNpc(npcs.Npc14187.alias, 3)
end

function Quest5001:OnSubStart500120(arg1)
    print("OnSubStart500120")
    actorMgr:CreateActorWithPos("Q5001TransmitA", "Actor/Gadget/Q5001TransmitA", 70900002, 0, points.Q500120.pos, points.Q500120.rot, true, false, 3)
end

function Quest5001:OnSubFinish500120(arg1)
    print("OnSubFinish500120")
    this:ActorDestroy("Q5001TransmitA")
end

function Quest5001:OnSubStart500104(arg1)
    print("OnSubStart500104")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1087.id, 0, 500104, 200, true)
end

function Quest5001:OnSubFinish500104(arg1)
    print("OnSubFinish500104")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20227)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataNoWord, nil, nil, nil)
end

function Quest5001:OnSubFailed500104(arg1)
    print("OnSubFailed500104")
    this:ActorDestroy("Q500104N1087Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1087.alias, 20227)
end

function Quest5001:OnSubStart500105(arg1)
    print("OnSubStart500105")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1087.id, 0, 500105, 20, true)
end

function Quest5001:OnSubFinish500105(arg1)
    print("OnSubFinish500105")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20227)
    globalActor:ChangeDay24Time(5, true)
end

function Quest5001:OnSubFailed500105(arg1)
    print("OnSubFailed500105")
    this:ActorDestroy("Q500105N1087Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1087.alias, 20227)
end

function Quest5001:OnSubStart500106(arg1)
    print("OnSubStart500106")
    this:CreateQuestNpc(arg1, npcs.Npc14333.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14333.alias, 5001):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14337.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14337.alias, 5001):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14336.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14336.alias, 5001):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14335.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14335.alias, 5001):DoFreeStyle(1120, true, nil, true, true, false, false)
    globalActor:DisablePaimonInProfilePage({20227})
    this:GetQuestNpcActor(npcs.Npc14333.alias, 5001):DisableInteeHeadCtrl(true)
    this:CreateSpeechBubbleTask(npcs.Npc14335.id, 50019806, 5, true, 3, 5, true, false)
    this:CreateSpeechBubbleTask(npcs.Npc14336.id, 50019807, 5, true, 3, 5, true, false)
end

function Quest5001:OnSubFinish500106(arg1)
    print("OnSubFinish500106")
end

function Quest5001:OnSubFailed500106(arg1)
    print("OnSubFailed500106")
    this:DestroyQuestNpcActor(npcs.Npc14333.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc14335.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc14336.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc14337.alias, 20227)
end

function Quest5001:OnSubStart500107(arg1)
    print("OnSubStart500107")
    this:GetQuestNpcActor(npcs.Npc14333.alias, 5001):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14337.alias, 5001):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14336.alias, 5001):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14335.alias, 5001):DoFreeStyle(1120, true, nil, true, true, false, false)
    globalActor:DisablePaimonInProfilePage({20227})
    this:GetQuestNpcActor(npcs.Npc14333.alias, 5001):DisableInteeHeadCtrl(true)
    this:CreateSpeechBubbleTask(npcs.Npc14335.id, 50019806, 5, true, 3, 5, true, false)
    this:CreateSpeechBubbleTask(npcs.Npc14336.id, 50019807, 5, true, 3, 5, true, false)
end

function Quest5001:OnSubFinish500107(arg1)
    print("OnSubFinish500107")
end

function Quest5001:OnSubFailed500107(arg1)
    print("OnSubFailed500107")
    this:DestroyQuestNpcActor(npcs.Npc14333.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc14336.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc14337.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc14335.alias, 20227)
end

function Quest5001:OnSubStart500108(arg1)
    print("OnSubStart500108")
    this:GetQuestNpcActor(npcs.Npc14333.alias, 5001):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14337.alias, 5001):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14336.alias, 5001):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14335.alias, 5001):DoFreeStyle(1120, true, nil, true, true, false, false)
    globalActor:DisablePaimonInProfilePage({20227})
    this:GetQuestNpcActor(npcs.Npc14333.alias, 5001):DisableInteeHeadCtrl(true)
    this:CreateSpeechBubbleTask(npcs.Npc14335.id, 50019806, 5, true, 3, 5, true, false)
    this:CreateSpeechBubbleTask(npcs.Npc14336.id, 50019807, 5, true, 3, 5, true, false)
    actorMgr:CreateActorWithPos("Q500108Tutorial01", "Actor/Gadget/Q500108Tutorial01", 70900002, 0, points._Q500108Tutorial01Point_.pos, points._Q500108Tutorial01Point_.rot, true, false, 20227)
    actorMgr:CreateActorWithPos("Q550108WallKaiche", "Actor/Gadget/Q550108WallKaiche", 70900002, 0, points._Q550108WallKaichePoint_.pos, points._Q550108WallKaichePoint_.rot, true, false, 20227)
    this:DeployStoryByQuest(110500100)
end

function Quest5001:OnSubFinish500108(arg1)
    print("OnSubFinish500108")
    this:ActorDestroy("Q500108Tutorial01")
    this:ActorDestroy("Q550108WallKaiche")
end

function Quest5001:OnSubFailed500108(arg1)
    print("OnSubFailed500108")
    this:DestroyQuestNpcActor(npcs.Npc14333.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc14336.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc14337.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc14335.alias, 20227)
    this:ActorDestroy("Q500108Tutorial01")
    this:ActorDestroy("Q550108WallKaiche")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    this:CancelStoryByQuest(110500100)
end

function Quest5001:OnSubStart500109(arg1)
    print("OnSubStart500109")
    this:GetQuestNpcActor(npcs.Npc14333.alias, 5001):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14337.alias, 5001):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14336.alias, 5001):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14335.alias, 5001):DoFreeStyle(1120, true, nil, true, true, false, false)
    globalActor:DisablePaimonInProfilePage({20227})
    this:GetQuestNpcActor(npcs.Npc14333.alias, 5001):DisableInteeHeadCtrl(true)
    this:CreateSpeechBubbleTask(npcs.Npc14335.id, 50019806, 5, true, 3, 5, true, false)
    this:CreateSpeechBubbleTask(npcs.Npc14336.id, 50019807, 5, true, 3, 5, true, false)
    actorMgr:CreateActorWithPos("Q500109Tutorial", "Actor/Gadget/Q500109Tutorial", 70900002, 0, points._Q500109TutorialPoint_.pos, points._Q500109TutorialPoint_.rot, true, false, 20227)
    if actorUtils.IsMalePlayer() then
        this:CreateQuestNpc(arg1, npcs.Npc1025.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1025.alias, 5001):DoFreeStyle(1120, true, nil, true, true, false, false)
    else
        this:CreateQuestNpc(arg1, npcs.Npc1026.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1026.alias, 5001):DoFreeStyle(1260, true, nil, true, true, false, false)
    end

    this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q500109Wave", "Actor/Gadget/Q500109Wave", 70900002, 0, points._Q500109WavePoint_.pos, points._Q500109WavePoint_.rot, true, false, 20227)
    actorMgr:CreateActorWithPos("Q500109Changetime", "Actor/Gadget/Q500109Changetime", 70900002, 0, points._Q500109ChangetimePoint_.pos, points._Q500109ChangetimePoint_.rot, true, false, 20227)
    this:DeployStoryByQuest(110500100)
end

function Quest5001:OnSubFinish500109(arg1)
    print("OnSubFinish500109")
    this:SafeDestroyQuestNpc(npcs.Npc14333.alias, 20227)
    this:SafeDestroyQuestNpc(npcs.Npc14337.alias, 20227)
    this:SafeDestroyQuestNpc(npcs.Npc14336.alias, 20227)
    this:SafeDestroyQuestNpc(npcs.Npc14335.alias, 20227)
    this:ActorDestroy("Q500109Tutorial")
    this:ActorDestroy("Q500109Wave")
    this:ActorDestroy("Q500109Changetime")
    this:CancelStoryByQuest(110500100)
end

function Quest5001:OnSubFailed500109(arg1)
    print("OnSubFailed500109")
    this:DestroyQuestNpcActor(npcs.Npc14333.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc14336.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc14337.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc14335.alias, 20227)
    this:ActorDestroy("Q500109Tutorial")
    this:ActorDestroy("Q500109Wave")
    this:DestroyQuestNpcActor(npcs.Npc1025.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc1026.alias, 20227)
    this:ActorDestroy("Q500109Changetime")
    this:CancelStoryByQuest(110500100)
    this:DestroyQuestNpcActor(npcs.Paimon.alias, 20227)
end

function Quest5001:OnSubStart500123(arg1)
    print("OnSubStart500123")
end

function Quest5001:OnSubFinish500123(arg1)
    print("OnSubFinish500123")
end

function Quest5001:OnSubStart500112(arg1)
    print("OnSubStart500112")
end

function Quest5001:OnSubFinish500112(arg1)
    print("OnSubFinish500112")
end

function Quest5001:OnSubStart500110(arg1)
    print("OnSubStart500110")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500110, 0, 120, 1, npcs.Npc1087.id)
    globalActor:DisablePaimonInProfilePage({20227})
end

function Quest5001:OnSubFinish500110(arg1)
    print("OnSubFinish500110")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20227)
end

function Quest5001:OnSubStart500111(arg1)
    print("OnSubStart500111")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14123.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14201.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14187.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Paimon.alias, 5001):DoFreeStyle(1230, true, nil, true, true, false, false)
        if actorUtils.IsMalePlayer() then
            this:CreateQuestNpc(arg1, npcs.Npc1025.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc1025.alias, 5001):DoFreeStyle(1120, true, nil, true, true, false, false)
            this:GetQuestNpcActor(npcs.Npc1025.alias, 5001):SetPlayerNpcEnergy()
        else
            this:CreateQuestNpc(arg1, npcs.Npc1026.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc1026.alias, 5001):DoFreeStyle(1120, true, nil, true, true, false, false)
            this:GetQuestNpcActor(npcs.Npc1026.alias, 5001):SetPlayerNpcEnergy()
        end

        globalActor:DisablePaimonInProfilePage({20227})
    end)
end

function Quest5001:OnSubFinish500111(arg1)
    print("OnSubFinish500111")
    this:SafeDestroyQuestNpc(npcs.Npc14123.alias, 20227)
    this:SafeDestroyQuestNpc(npcs.Npc14201.alias, 20227)
    this:SafeDestroyQuestNpc(npcs.Npc14187.alias, 20227)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 20227)
    if actorUtils.IsMalePlayer() then
        this:DestroyQuestNpcActor(npcs.Npc1025.alias, 20227)
    else
        this:DestroyQuestNpcActor(npcs.Npc1026.alias, 20227)
    end
end

function Quest5001:OnSubFailed500111(arg1)
    print("OnSubFailed500111")
    this:DestroyQuestNpcActor(npcs.Npc14123.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc14201.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc14187.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Paimon.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc1025.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc1026.alias, 20227)
end

function Quest5001:OnSubStart500113(arg1)
    print("OnSubStart500113")
    globalActor:DisablePaimonInProfilePage({20227})
end

function Quest5001:OnSubFinish500113(arg1)
    print("OnSubFinish500113")
end

function Quest5001:OnSubStart500114(arg1)
    print("OnSubStart500114")
    this:CallDelayByQuest("500114", 1, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(500114, 0, 100, 1, npcs.Npc14113.id)
    end)

    globalActor:DisablePaimonInProfilePage({20227})
end

function Quest5001:OnSubFinish500114(arg1)
    print("OnSubFinish500114")
    this:SafeDestroyQuestNpc(npcs.Npc14113.alias, 20227)
end

function Quest5001:OnSubFailed500114(arg1)
    print("OnSubFailed500114")
    this:DestroyQuestNpcActor(npcs.Npc14113.alias, 20227)
    this:ActorDestroy("Q500114N14113Trigger")
    this:UnCallDelayByQuest("500114")
end

function Quest5001:OnSubStart500116(arg1)
    print("OnSubStart500116")
    globalActor:DisablePaimonInProfilePage({20227})
end

function Quest5001:OnSubFinish500116(arg1)
    print("OnSubFinish500116")
end

function Quest5001:OnSubStart500117(arg1)
    print("OnSubStart500117")
    this:NpcCreateWithNpcTrigger(npcs.Npc1087.id, 0, 80, 500117)
    globalActor:DisablePaimonInProfilePage({20227})
end

function Quest5001:OnSubFinish500117(arg1)
    print("OnSubFinish500117")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20227)
end

function Quest5001:OnSubFailed500117(arg1)
    print("OnSubFailed500117")
    this:DestroyQuestNpcActor(npcs.Npc1087.alias, 20227)
    this:ActorDestroy("Q500117N1087Trigger")
end

function Quest5001:OnSubStart500115(arg1)
    print("OnSubStart500115")
end

function Quest5001:OnSubFinish500115(arg1)
    print("OnSubFinish500115")
end

function Quest5001:OnSubStart500121(arg1)
    print("OnSubStart500121")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14157.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14201.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14186.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Paimon.alias, 5001):DoFreeStyle(1230, true, nil, true, true, false, false)
        if actorUtils.IsMalePlayer() then
            this:CreateQuestNpc(arg1, npcs.Npc1025.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc1025.alias, 5001):DoFreeStyle(1120, true, nil, true, true, false, false)
            this:GetQuestNpcActor(npcs.Npc1025.alias, 5001):SetPlayerNpcEnergy()
        else
            this:CreateQuestNpc(arg1, npcs.Npc1026.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc1026.alias, 5001):DoFreeStyle(1120, true, nil, true, true, false, false)
            this:GetQuestNpcActor(npcs.Npc1026.alias, 5001):SetPlayerNpcEnergy()
        end

        globalActor:DisablePaimonInProfilePage({20227})
    end)
end

function Quest5001:OnSubFinish500121(arg1)
    print("OnSubFinish500121")
    this:SafeDestroyQuestNpc(npcs.Npc14157.alias, 20227)
    this:SafeDestroyQuestNpc(npcs.Npc14201.alias, 20227)
    this:SafeDestroyQuestNpc(npcs.Npc14186.alias, 20227)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 20227)
    if actorUtils.IsMalePlayer() then
        this:DestroyQuestNpcActor(npcs.Npc1025.alias, 20227)
    else
        this:DestroyQuestNpcActor(npcs.Npc1026.alias, 20227)
    end
end

function Quest5001:OnSubFailed500121(arg1)
    print("OnSubFailed500121")
    this:DestroyQuestNpcActor(npcs.Npc14157.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc14201.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc14186.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Paimon.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc1025.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc1026.alias, 20227)
end

function Quest5001:OnSubStart500118(arg1)
    print("OnSubStart500118")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1087.id, 0, 500118, 200, true)
    globalActor:DisablePaimonInProfilePage({20227})
end

function Quest5001:OnSubFinish500118(arg1)
    print("OnSubFinish500118")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20227)
end

function Quest5001:OnSubStart500119(arg1)
    print("OnSubStart500119")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    globalActor:DisablePaimonInProfilePage({20227})
end

function Quest5001:OnSubFinish500119(arg1)
    print("OnSubFinish500119")
end

return Quest5001
