require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14045 = class("Quest14045", QuestActorProxy)
Quest14045.defaultAlias = "Quest14045"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest14045:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest14045:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1404501"] = self.OnSubStart1404501,
        ["1404502"] = self.OnSubStart1404502,
        ["1404519"] = self.OnSubStart1404519,
        ["1404503"] = self.OnSubStart1404503,
        ["1404516"] = self.OnSubStart1404516,
        ["1404517"] = self.OnSubStart1404517,
        ["1404515"] = self.OnSubStart1404515,
        ["1404504"] = self.OnSubStart1404504,
        ["1404507"] = self.OnSubStart1404507,
        ["1404508"] = self.OnSubStart1404508,
        ["1404509"] = self.OnSubStart1404509,
        ["1404510"] = self.OnSubStart1404510,
        ["1404511"] = self.OnSubStart1404511,
        ["1404514"] = self.OnSubStart1404514,
        ["1404512"] = self.OnSubStart1404512,
        ["1404513"] = self.OnSubStart1404513,
        ["1404505"] = self.OnSubStart1404505,
        ["1404506"] = self.OnSubStart1404506,
        ["1404518"] = self.OnSubStart1404518
    }
end

function Quest14045:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1404501"] = self.OnSubFinish1404501,
        ["1404502"] = self.OnSubFinish1404502,
        ["1404519"] = self.OnSubFinish1404519,
        ["1404503"] = self.OnSubFinish1404503,
        ["1404516"] = self.OnSubFinish1404516,
        ["1404517"] = self.OnSubFinish1404517,
        ["1404515"] = self.OnSubFinish1404515,
        ["1404504"] = self.OnSubFinish1404504,
        ["1404507"] = self.OnSubFinish1404507,
        ["1404508"] = self.OnSubFinish1404508,
        ["1404509"] = self.OnSubFinish1404509,
        ["1404510"] = self.OnSubFinish1404510,
        ["1404511"] = self.OnSubFinish1404511,
        ["1404514"] = self.OnSubFinish1404514,
        ["1404512"] = self.OnSubFinish1404512,
        ["1404513"] = self.OnSubFinish1404513,
        ["1404505"] = self.OnSubFinish1404505,
        ["1404506"] = self.OnSubFinish1404506,
        ["1404518"] = self.OnSubFinish1404518
    }
end

function Quest14045:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1404503"] = self.OnSubFailed1404503,
        ["1404504"] = self.OnSubFailed1404504,
        ["1404507"] = self.OnSubFailed1404507,
        ["1404508"] = self.OnSubFailed1404508,
        ["1404509"] = self.OnSubFailed1404509,
        ["1404510"] = self.OnSubFailed1404510,
        ["1404511"] = self.OnSubFailed1404511,
        ["1404512"] = self.OnSubFailed1404512,
        ["1404513"] = self.OnSubFailed1404513
    }
end

function Quest14045:Start()
    print("Start")
end

function Quest14045:OnDestroy()
    print("OnDestroy")
end

function Quest14045:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14045:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14045:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14045:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1404502Trigger")
    this:ActorDestroy("Q1404502Trigger_Narrative")
    this:ActorDestroy("Q1404505Trigger")
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 26
    local tbl = {}
    local n3 = 260001
    tbl[1] = 260002
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, false, true)
    local v3 = this
    local v4 = v3
    local func = v3.BanCrowdNpc
    local n4 = 1084
    local n5 = 2
    local tbl2 = {}
    local n6 = 20002
    tbl2[1] = 20001
    tbl2[2] = n6
    func(v4, n4, n5, tbl2, false, true)
end

function Quest14045:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    if arg1.valueInt == 0 then
        this:GetQuestNpcActor(npcs.Npc1025.alias, 14045):SetPlayerNpcEnergy()
    else
        if arg1.valueInt == 1 then
            this:GetQuestNpcActor(npcs.Npc1026.alias, 14045):SetPlayerNpcEnergy()
        else
            if arg1.valueInt == 2 then
                this:GetQuestNpcActor(npcs.Npc1025.alias, 14045):SetPlayerNpcEnergyType(7)
            else
                if arg1.valueInt == 3 then
                    this:GetQuestNpcActor(npcs.Npc1026.alias, 14045):SetPlayerNpcEnergyType(7)
                end
            end
        end
    end
end

function Quest14045:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest14045:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest14045:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest14045:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest14045:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest14045:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest14045:CookDungeonRewind()
    this:SafeDestroyQuestNpc(npcs.Npc15257.alias, 20270)
    this:SafeDestroyQuestNpc(npcs.Npc1308.alias, 20270)
    this:LightNotifyTo(npcs.Npc5089.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5092.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5093.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5091.alias, 0, true)
    this:ActorDestroy("Q1404505Trigger")
    this:DestroyNpcTrigger("Q1404503N1308Trigger")
    this:DestroyNpcTrigger("Q1404513N15257Trigger")
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 1084
    local n2 = 2
    local tbl = {}
    local n3 = 20002
    tbl[1] = 20001
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, false, true)
    this:CancelStoryByQuest(121404500)
    this:CancelStoryByQuest(121404501)
    this:CancelStoryByQuest(121404502)
    this:CancelStoryByQuest(121404503)
end

function Quest14045:OnSubStart1404501(arg1)
    print("OnSubStart1404501")
    this:CreateQuestNpc(arg1, npcs.Npc1308.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1308.alias, 14045):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5072.alias, true, 1)
    this:LightNotifyTo(npcs.Npc5068.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5064.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5071.alias, 0, true)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 26
    local tbl = {}
    local n3 = 260001
    tbl[1] = 260002
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
end

function Quest14045:OnSubFinish1404501(arg1)
    print("OnSubFinish1404501")
    this:NpcDestroyWithDither(3, npcs.Npc1308.alias)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 26
    local tbl = {}
    local n3 = 260001
    tbl[1] = 260002
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, false, nil)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ClearNarratorTask()
        this:QuestNarratorTask(datas.NarratorWithId_1404501, nil)
    end)
end

function Quest14045:OnSubStart1404502(arg1)
    print("OnSubStart1404502")
    this:CreateQuestNpc(arg1, npcs.Npc15310.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15310.alias, 14045):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15311.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15311.alias, 14045):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15312.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15312.alias, 14045):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:LightNotifyTo(npcs.Npc5072.alias, 0, true)
    this:CreateQuestNpc(arg1, npcs.Npc15216.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15216.alias, 14045):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15315.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15315.alias, 14045):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15318.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15318.alias, 14045):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15447.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15447.alias, 14045):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15448.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15448.alias, 14045):DoFreeStyle(1190, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q1404502Trigger", "Actor/Gadget/Q1404502Trigger", 70900002, 0, points._Q1404502TriggerPoint_.pos, points._Q1404502TriggerPoint_.rot, true, false, 1084)
    actorMgr:CreateActorWithPos("Q1404502Trigger_Narrative", "Actor/Gadget/Q1404502Trigger_Narrative", 70900002, 0, points._Q1404502Trigger_NarrativePoint_.pos, points._Q1404502Trigger_NarrativePoint_.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc15310.alias, 14045):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15311.alias, 14045):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15312.alias, 14045):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15328.alias, 14045):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15329.alias, 14045):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15216.alias, 14045):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15315.alias, 14045):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15318.alias, 14045):DisableInteeHeadCtrl(true)
    this:CookDungeonRewind()
    this:DisableMainPageWithConfigByQuest(false, "DisableEscoffierQuest")
end

function Quest14045:OnSubFinish1404502(arg1)
    print("OnSubFinish1404502")
    this:SafeDestroyQuestNpc(npcs.Npc15310.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15311.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15312.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15216.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15315.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15447.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15448.alias, 3)
    this:ActorDestroy("Q1404502Trigger")
    this:ActorDestroy("Q1404502Trigger_Narrative")
    this:ClearNarratorTask()
end

function Quest14045:OnSubStart1404519(arg1)
    print("OnSubStart1404519")
end

function Quest14045:OnSubFinish1404519(arg1)
    print("OnSubFinish1404519")
    this:TransmitPlayerByQuestId(1404502, 1, nil, nil, nil)
end

function Quest14045:OnSubStart1404503(arg1)
    print("OnSubStart1404503")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1308.id, 0, 1404503, 20, true)
end

function Quest14045:OnSubFinish1404503(arg1)
    print("OnSubFinish1404503")
    this:SafeDestroyQuestNpc(npcs.Npc1308.alias, 20270)
    this:ActionSafeCall(function(arg1)
        this:CallDelayByQuest("1", 1, function(arg1)
            this:ShowTutorialDialog(2210, nil)
        end)
    end)
end

function Quest14045:OnSubFailed1404503(arg1)
    print("OnSubFailed1404503")
    this:ClearNarratorTask()
end

function Quest14045:OnSubStart1404516(arg1)
    print("OnSubStart1404516")
end

function Quest14045:OnSubFinish1404516(arg1)
    print("OnSubFinish1404516")
end

function Quest14045:OnSubStart1404517(arg1)
    print("OnSubStart1404517")
end

function Quest14045:OnSubFinish1404517(arg1)
    print("OnSubFinish1404517")
end

function Quest14045:OnSubStart1404515(arg1)
    print("OnSubStart1404515")
end

function Quest14045:OnSubFinish1404515(arg1)
    print("OnSubFinish1404515")
    this:QuestNarratorTask(datas.NarratorWithId_1404507, nil)
end

function Quest14045:OnSubStart1404504(arg1)
    print("OnSubStart1404504")
    this:CreateQuestNpc(arg1, npcs.Npc15257.id, 0, false, 0)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(121404500)
    end)
end

function Quest14045:OnSubFinish1404504(arg1)
    print("OnSubFinish1404504")
end

function Quest14045:OnSubFailed1404504(arg1)
    print("OnSubFailed1404504")
    this:ClearNarratorTask()
end

function Quest14045:OnSubStart1404507(arg1)
    print("OnSubStart1404507")
    this:GetQuestNpcActor(npcs.Npc15199.alias, 14045):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc5089.alias, 14045):DoFreeStyle(8010, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc5091.alias, 14045):DoFreeStyle(8010, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc5092.alias, 14045):DoFreeStyle(8010, true, nil, true, true, false, true)
    this:ActionSafeCall(function(arg1)
        this:SetNavigationByMainId(14045, true)
    end)
end

function Quest14045:OnSubFinish1404507(arg1)
    print("OnSubFinish1404507")
end

function Quest14045:OnSubFailed1404507(arg1)
    print("OnSubFailed1404507")
    this:ClearNarratorTask()
end

function Quest14045:OnSubStart1404508(arg1)
    print("OnSubStart1404508")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(121404501)
    end)
end

function Quest14045:OnSubFinish1404508(arg1)
    print("OnSubFinish1404508")
end

function Quest14045:OnSubFailed1404508(arg1)
    print("OnSubFailed1404508")
    this:ClearNarratorTask()
end

function Quest14045:OnSubStart1404509(arg1)
    print("OnSubStart1404509")
    this:GetQuestNpcActor(npcs.Npc5089.alias, 14045):DoFreeStyle(8010, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5091.alias, 14045):DoFreeStyle(8010, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5092.alias, 14045):DoFreeStyle(8010, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15199.alias, 14045):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:ActionSafeCall(function(arg1)
        this:SetNavigationByMainId(14045, true)
    end)
end

function Quest14045:OnSubFinish1404509(arg1)
    print("OnSubFinish1404509")
end

function Quest14045:OnSubFailed1404509(arg1)
    print("OnSubFailed1404509")
    this:ClearNarratorTask()
end

function Quest14045:OnSubStart1404510(arg1)
    print("OnSubStart1404510")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(121404502)
    end)
end

function Quest14045:OnSubFinish1404510(arg1)
    print("OnSubFinish1404510")
end

function Quest14045:OnSubFailed1404510(arg1)
    print("OnSubFailed1404510")
    this:ClearNarratorTask()
end

function Quest14045:OnSubStart1404511(arg1)
    print("OnSubStart1404511")
    this:GetQuestNpcActor(npcs.Npc5089.alias, 14045):DoFreeStyle(8010, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5091.alias, 14045):DoFreeStyle(8010, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5092.alias, 14045):DoFreeStyle(8010, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15199.alias, 14045):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:ActionSafeCall(function(arg1)
        this:SetNavigationByMainId(14045, true)
    end)
end

function Quest14045:OnSubFinish1404511(arg1)
    print("OnSubFinish1404511")
    this:SafeDestroyQuestNpc(npcs.Npc15257.alias, 20270)
end

function Quest14045:OnSubFailed1404511(arg1)
    print("OnSubFailed1404511")
    this:ClearNarratorTask()
end

function Quest14045:OnSubStart1404514(arg1)
    print("OnSubStart1404514")
end

function Quest14045:OnSubFinish1404514(arg1)
    print("OnSubFinish1404514")
end

function Quest14045:OnSubStart1404512(arg1)
    print("OnSubStart1404512")
    this:LevelLoadFinishSafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 1, datas.TransmitData_NowordNoSound, nil, nil, nil)
    end)

    this:DisableMainPageWithConfigByQuest(true, "DisableEscoffierQuest")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1404508, nil)
    end)

    this:DeployStoryByQuest(121404503)
    this:ClearNarratorTask()
end

function Quest14045:OnSubFinish1404512(arg1)
    print("OnSubFinish1404512")
    this:DisableMainPageWithConfigByQuest(false, "DisableEscoffierQuest")
end

function Quest14045:OnSubFailed1404512(arg1)
    print("OnSubFailed1404512")
    this:ClearNarratorTask()
end

function Quest14045:OnSubStart1404513(arg1)
    print("OnSubStart1404513")
    this:NpcCreateWithNpcTrigger(npcs.Npc15257.id, 0, 20, 1404513)
    this:DisableMainPageWithConfigByQuest(false, "DisableEscoffierQuest")
end

function Quest14045:OnSubFinish1404513(arg1)
    print("OnSubFinish1404513")
    this:SafeDestroyQuestNpc(npcs.Npc15257.alias, 20270)
end

function Quest14045:OnSubFailed1404513(arg1)
    print("OnSubFailed1404513")
    this:ClearNarratorTask()
end

function Quest14045:OnSubStart1404505(arg1)
    print("OnSubStart1404505")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1404505, 0, 40, 1, npcs.Npc1308.id)
    actorMgr:CreateActorWithPos("Q1404505Trigger", "Actor/Gadget/Q1404505Trigger", 70900002, 0, points._Q1404505TriggerPoint_.pos, points._Q1404505TriggerPoint_.rot, true, false, 20270)
end

function Quest14045:OnSubFinish1404505(arg1)
    print("OnSubFinish1404505")
    this:SafeDestroyQuestNpc(npcs.Npc1308.alias, 1084)
    this:ActorDestroy("Q1404505Trigger")
end

function Quest14045:OnSubStart1404506(arg1)
    print("OnSubStart1404506")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1404506, 0, 5, 0, npcs.Npc1308.id)
    this:CreateQuestNpc(arg1, npcs.Npc15195.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15195.alias, 14045):DoFreeStyle(4121, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5089.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5092.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5093.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5091.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc15257.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15195.alias, 14045):DisableInteeHeadCtrl(true)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 1084
    local n2 = 2
    local tbl = {}
    local n3 = 20002
    tbl[1] = 20001
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
    this:GetQuestNpcActor(npcs.Npc15257.alias, 14045):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc15195.alias, 14045):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
end

function Quest14045:OnSubFinish1404506(arg1)
    print("OnSubFinish1404506")
    this:DestroyQuestNpcActor(npcs.Npc15195.alias, 1084)
    this:DestroyQuestNpcActor(npcs.Npc15257.alias, 1084)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 1084
    local n2 = 2
    local tbl = {}
    local n3 = 20002
    tbl[1] = 20001
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, false, nil)
end

function Quest14045:OnSubStart1404518(arg1)
    print("OnSubStart1404518")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1308.id, 0, 1404518, 15, true)
    this:LightNotifyTo(npcs.Npc5089.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5091.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5092.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5093.alias, 0, true)
end

function Quest14045:OnSubFinish1404518(arg1)
    print("OnSubFinish1404518")
end

return Quest14045
