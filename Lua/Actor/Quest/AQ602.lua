require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest602 = class("Quest602", QuestActorProxy)
Quest602.defaultAlias = "Quest602"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest602:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest602:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["60201"] = self.OnSubStart60201,
        ["60211"] = self.OnSubStart60211,
        ["60203"] = self.OnSubStart60203,
        ["60218"] = self.OnSubStart60218,
        ["60217"] = self.OnSubStart60217,
        ["60206"] = self.OnSubStart60206,
        ["60202"] = self.OnSubStart60202,
        ["60207"] = self.OnSubStart60207,
        ["60219"] = self.OnSubStart60219,
        ["60204"] = self.OnSubStart60204,
        ["60205"] = self.OnSubStart60205,
        ["60216"] = self.OnSubStart60216,
        ["60214"] = self.OnSubStart60214,
        ["60208"] = self.OnSubStart60208,
        ["60209"] = self.OnSubStart60209,
        ["60212"] = self.OnSubStart60212,
        ["60213"] = self.OnSubStart60213,
        ["60215"] = self.OnSubStart60215,
        ["60210"] = self.OnSubStart60210
    }
end

function Quest602:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["60201"] = self.OnSubFinish60201,
        ["60211"] = self.OnSubFinish60211,
        ["60203"] = self.OnSubFinish60203,
        ["60218"] = self.OnSubFinish60218,
        ["60217"] = self.OnSubFinish60217,
        ["60206"] = self.OnSubFinish60206,
        ["60202"] = self.OnSubFinish60202,
        ["60207"] = self.OnSubFinish60207,
        ["60219"] = self.OnSubFinish60219,
        ["60204"] = self.OnSubFinish60204,
        ["60205"] = self.OnSubFinish60205,
        ["60216"] = self.OnSubFinish60216,
        ["60214"] = self.OnSubFinish60214,
        ["60208"] = self.OnSubFinish60208,
        ["60209"] = self.OnSubFinish60209,
        ["60212"] = self.OnSubFinish60212,
        ["60213"] = self.OnSubFinish60213,
        ["60215"] = self.OnSubFinish60215,
        ["60210"] = self.OnSubFinish60210
    }
end

function Quest602:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["60206"] = self.OnSubFailed60206, ["60207"] = self.OnSubFailed60207}
end

function Quest602:Start()
    print("Start")
end

function Quest602:OnDestroy()
    print("OnDestroy")
end

function Quest602:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest602:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest602:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest602:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q60205Trigger")
    this:ActorDestroy("Q60212Trigger")
    this:ActorDestroy("Q60201Trigger")
    this:ActorDestroy("Q60205Trigger_1")
end

function Quest602:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 60216)
    end
end

function Quest602:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest602:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest602:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest602:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest602:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest602:OnSubStart60201(arg1)
    print("OnSubStart60201")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc30564.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Qin.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Qin.alias, 602):DoFreeStyle(1130, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1018.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Wendy.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Wendy.alias, 602):DoFreeStyle(1170, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Wendy.alias, 602):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Qin.alias, 602):DisableInteeHeadCtrl(true)
        actorMgr:CreateActorWithPos("Q60201Trigger", "Actor/Gadget/Q60201Trigger", 70900002, 0, points._Q60201TriggerPoint_.pos, points._Q60201TriggerPoint_.rot, true, false, 1010)
    end)
end

function Quest602:OnSubFinish60201(arg1)
    print("OnSubFinish60201")
    this:SafeDestroyQuestNpc(npcs.Qin.alias, 1010)
    this:SafeDestroyQuestNpc(npcs.Npc1018.alias, 1010)
    this:SafeDestroyQuestNpc(npcs.Wendy.alias, 1010)
end

function Quest602:OnSubStart60211(arg1)
    print("OnSubStart60211")
end

function Quest602:OnSubFinish60211(arg1)
    print("OnSubFinish60211")
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowQuestSpecHint("AQ600_02", nil, nil)
    end)
end

function Quest602:OnSubStart60203(arg1)
    print("OnSubStart60203")
    this:CreateQuestNpc(arg1, npcs.Npc15181.id, 0, false, 0)
end

function Quest602:OnSubFinish60203(arg1)
    print("OnSubFinish60203")
    this:SafeDestroyQuestNpc(npcs.Npc30564.alias, 1010)
    this:ActionSafeCall(function(arg1)
        globalActor:PlayerEnterDungeon(1, 164, false, nil, 0)
    end)
end

function Quest602:OnSubStart60218(arg1)
    print("OnSubStart60218")
end

function Quest602:OnSubFinish60218(arg1)
    print("OnSubFinish60218")
end

function Quest602:OnSubStart60217(arg1)
    print("OnSubStart60217")
end

function Quest602:OnSubFinish60217(arg1)
    print("OnSubFinish60217")
end

function Quest602:OnSubStart60206(arg1)
    print("OnSubStart60206")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1018.id, 0, 60206, 50, true)
end

function Quest602:OnSubFinish60206(arg1)
    print("OnSubFinish60206")
    this:SafeDestroyQuestNpc(npcs.Npc1018.alias, 20257)
end

function Quest602:OnSubFailed60206(arg1)
    print("OnSubFailed60206")
    this:ActorDestroy("Q60206N1018Trigger")
end

function Quest602:OnSubStart60202(arg1)
    print("OnSubStart60202")
end

function Quest602:OnSubFinish60202(arg1)
    print("OnSubFinish60202")
end

function Quest602:OnSubStart60207(arg1)
    print("OnSubStart60207")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(60207, 0, 58, 1, npcs.Npc15181.id)
end

function Quest602:OnSubFinish60207(arg1)
    print("OnSubFinish60207")
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    end)
end

function Quest602:OnSubFailed60207(arg1)
    print("OnSubFailed60207")
    this:ActorDestroy("Q60207N15181Trigger")
    this:UnCallDelayByQuest("Q60207N15181CallDelay")
end

function Quest602:OnSubStart60219(arg1)
    print("OnSubStart60219")
end

function Quest602:OnSubFinish60219(arg1)
    print("OnSubFinish60219")
end

function Quest602:OnSubStart60204(arg1)
    print("OnSubStart60204")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc15181.id, 0, 60204, 20, true)
end

function Quest602:OnSubFinish60204(arg1)
    print("OnSubFinish60204")
end

function Quest602:OnSubStart60205(arg1)
    print("OnSubStart60205")
    actorMgr:CreateActorWithPos("Q60205Trigger_1", "Actor/Gadget/Q60205Trigger_1", 70900002, 0, points._Q60205Trigger_1Point_.pos, points._Q60205Trigger_1Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q60205Trigger", "Actor/Gadget/Q60205Trigger", 70900002, 0, points._Q60205TriggerPoint_.pos, points._Q60205TriggerPoint_.rot, true, false, 3)
end

function Quest602:OnSubFinish60205(arg1)
    print("OnSubFinish60205")
    this:SafeDestroyQuestNpc(npcs.Npc1018.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15181.alias, 20261)
    this:ClearNarratorTask()
end

function Quest602:OnSubStart60216(arg1)
    print("OnSubStart60216")
end

function Quest602:OnSubFinish60216(arg1)
    print("OnSubFinish60216")
end

function Quest602:OnSubStart60214(arg1)
    print("OnSubStart60214")
end

function Quest602:OnSubFinish60214(arg1)
    print("OnSubFinish60214")
end

function Quest602:OnSubStart60208(arg1)
    print("OnSubStart60208")
    this:NpcCreateWithNpcTriggerAndBlackscreen(60208, 0, 8, 1, npcs.Npc1018.id)
end

function Quest602:OnSubFinish60208(arg1)
    print("OnSubFinish60208")
    this:SafeDestroyQuestNpc(npcs.Npc1018.alias, 3)
end

function Quest602:OnSubStart60209(arg1)
    print("OnSubStart60209")
end

function Quest602:OnSubFinish60209(arg1)
    print("OnSubFinish60209")
    this:QuestNarratorTask(datas.NarratorWithId_60202, nil)
end

function Quest602:OnSubStart60212(arg1)
    print("OnSubStart60212")
end

function Quest602:OnSubFinish60212(arg1)
    print("OnSubFinish60212")
end

function Quest602:OnSubStart60213(arg1)
    print("OnSubStart60213")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Qin.id, 0, 60213, 50, true)
end

function Quest602:OnSubFinish60213(arg1)
    print("OnSubFinish60213")
    this:SafeDestroyQuestNpc(npcs.Qin.alias, 20259)
end

function Quest602:OnSubStart60215(arg1)
    print("OnSubStart60215")
    this:NpcCreateWithNpcTrigger(npcs.Npc1018.id, 0, 20, 60215)
end

function Quest602:OnSubFinish60215(arg1)
    print("OnSubFinish60215")
    this:SafeDestroyQuestNpc(npcs.Npc1018.alias, 20259)
end

function Quest602:OnSubStart60210(arg1)
    print("OnSubStart60210")
    if sceneData.currSceneID == 20259 then
        this:ActionSafeCall(function(arg1_2)
            this:TransmitPlayerById(arg1, 1, nil, nil, nil)
        end)
    end
end

function Quest602:OnSubFinish60210(arg1)
    print("OnSubFinish60210")
end

return Quest602
