require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40190 = class("Quest40190", QuestActorProxy)
Quest40190.defaultAlias = "Quest40190"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40190:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40190:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4019017"] = self.OnSubStart4019017,
        ["4019018"] = self.OnSubStart4019018,
        ["4019019"] = self.OnSubStart4019019,
        ["4019028"] = self.OnSubStart4019028,
        ["4019001"] = self.OnSubStart4019001,
        ["4019002"] = self.OnSubStart4019002,
        ["4019003"] = self.OnSubStart4019003,
        ["4019006"] = self.OnSubStart4019006,
        ["4019004"] = self.OnSubStart4019004,
        ["4019005"] = self.OnSubStart4019005,
        ["4019020"] = self.OnSubStart4019020,
        ["4019007"] = self.OnSubStart4019007,
        ["4019008"] = self.OnSubStart4019008,
        ["4019009"] = self.OnSubStart4019009,
        ["4019011"] = self.OnSubStart4019011,
        ["4019024"] = self.OnSubStart4019024,
        ["4019026"] = self.OnSubStart4019026,
        ["4019010"] = self.OnSubStart4019010,
        ["4019012"] = self.OnSubStart4019012,
        ["4019023"] = self.OnSubStart4019023,
        ["4019013"] = self.OnSubStart4019013,
        ["4019021"] = self.OnSubStart4019021,
        ["4019022"] = self.OnSubStart4019022,
        ["4019014"] = self.OnSubStart4019014,
        ["4019015"] = self.OnSubStart4019015,
        ["4019027"] = self.OnSubStart4019027,
        ["4019025"] = self.OnSubStart4019025,
        ["4019016"] = self.OnSubStart4019016
    }
end

function Quest40190:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4019017"] = self.OnSubFinish4019017,
        ["4019018"] = self.OnSubFinish4019018,
        ["4019019"] = self.OnSubFinish4019019,
        ["4019028"] = self.OnSubFinish4019028,
        ["4019001"] = self.OnSubFinish4019001,
        ["4019002"] = self.OnSubFinish4019002,
        ["4019003"] = self.OnSubFinish4019003,
        ["4019006"] = self.OnSubFinish4019006,
        ["4019004"] = self.OnSubFinish4019004,
        ["4019005"] = self.OnSubFinish4019005,
        ["4019020"] = self.OnSubFinish4019020,
        ["4019007"] = self.OnSubFinish4019007,
        ["4019008"] = self.OnSubFinish4019008,
        ["4019009"] = self.OnSubFinish4019009,
        ["4019011"] = self.OnSubFinish4019011,
        ["4019024"] = self.OnSubFinish4019024,
        ["4019026"] = self.OnSubFinish4019026,
        ["4019010"] = self.OnSubFinish4019010,
        ["4019012"] = self.OnSubFinish4019012,
        ["4019023"] = self.OnSubFinish4019023,
        ["4019013"] = self.OnSubFinish4019013,
        ["4019021"] = self.OnSubFinish4019021,
        ["4019022"] = self.OnSubFinish4019022,
        ["4019014"] = self.OnSubFinish4019014,
        ["4019015"] = self.OnSubFinish4019015,
        ["4019027"] = self.OnSubFinish4019027,
        ["4019025"] = self.OnSubFinish4019025,
        ["4019016"] = self.OnSubFinish4019016
    }
end

function Quest40190:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4019001"] = self.OnSubFailed4019001, ["4019015"] = self.OnSubFailed4019015}
end

function Quest40190:Start()
    print("Start")
end

function Quest40190:OnDestroy()
    print("OnDestroy")
end

function Quest40190:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40190:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40190:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 1063)
    this:SafeDestroyQuestNpc(npcs.Npc1036.alias, 1063)
    this:SafeDestroyQuestNpc(npcs.Npc3159.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1040.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20570.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1039.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15133_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3099.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3098.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1013.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1047.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1038.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15067.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15132_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12941.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12942.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12943.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1033.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15134_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1037.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15017.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3064.alias, 3)
    this:LightNotifyTo(npcs.Npc3160.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3161.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3188.alias, 0, true)
    this:ActorDestroy("Q4019021Trigger")
    this:ActorDestroy("Q4019015Trigger")
    this:ActorDestroy("Q4019001Trigger")
    this:ActorDestroy("Q4019002Trigger")
    this:ActorDestroy("Q4019006Trigger")
    this:ActorDestroy("Q4019004Trigger")
    this:ActorDestroy("Q4019005Trigger")
    this:ActorDestroy("Q4019007Trigger")
    this:ActorDestroy("Q4019009Trigger")
    this:ActorDestroy("Q4019010Trigger")
    this:ActorDestroy("Q4019011Trigger")
    this:ActorDestroy("Q4019012Trigger")
    this:ActorDestroy("Q4019028Trigger")
    this:ActorDestroy("Q4019014Trigger")
    this:ActorDestroy("Q4019015Trigger_1")
    this:ActorDestroy("Q4019004Trigger_1")
    this:DestroyNpcTrigger("Q4019002N3159Trigger")
    this:DestroyNpcTrigger("Q4019003N15067Trigger")
    this:DestroyNpcTrigger("Q4019016N15017Trigger")
    this:BanCrowdNpc(3221, 4, datas.Renqun_4019006_01, false)
    this:BanCrowdNpc(3221, 16, datas.Renqun_4019006_02, false)
    this:BanCrowdNpc(3220, 23, nil, false)
    this:BanCrowdNpc(3220, 23, datas.Renqun_4019016, false)
    this:CancelStoryByQuest(134019006)
    this:UnCallDelayByQuest("")
    this:UnCallDelayByQuest("4019024q")
end

function Quest40190:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 4019025 then
        actorUtils.FinishQuestID(false, 4019025)
    elseif arg1 == 4019010 then
        actorUtils.FinishQuestID(false, 4019010)
    elseif arg1 == 4019011 then
        actorUtils.FinishQuestID(false, 4019011)
    elseif arg1 == 4019012 then
        actorUtils.FinishQuestID(false, 4019012)
    elseif arg1 == 4019027 then
        actorUtils.FinishQuestID(false, 4019027)
    end
end

function Quest40190:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40190:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40190:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40190:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40190:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest40190:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest40190:OnSubStart4019017(arg1)
    print("OnSubStart4019017")
    actorUtils.FinishQuestID(false, 4019017)
end

function Quest40190:OnSubFinish4019017(arg1)
    print("OnSubFinish4019017")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4019001, nil)
    end)
end

function Quest40190:OnSubStart4019018(arg1)
    print("OnSubStart4019018")
end

function Quest40190:OnSubFinish4019018(arg1)
    print("OnSubFinish4019018")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4019002, nil)
    end)
end

function Quest40190:OnSubStart4019019(arg1)
    print("OnSubStart4019019")
    this:CreateQuestNpc(arg1, npcs.Npc3064.id, 0, false, 0)
    this:ActorDestroy("Q4019028Trigger")
end

function Quest40190:OnSubFinish4019019(arg1)
    print("OnSubFinish4019019")
    this:TransmitPlayerWithDialogTextByQuestId(4019019, 1, datas.DialogIdsData40190, 0, nil, nil, nil)
end

function Quest40190:OnSubStart4019028(arg1)
    print("OnSubStart4019028")
    actorMgr:CreateActorWithPos("Q4019028Trigger", "Actor/Gadget/Q4019028Trigger", 70900002, 0, points._Q4019028TriggerPoint_.pos, points._Q4019028TriggerPoint_.rot, true, false, 3)
end

function Quest40190:OnSubFinish4019028(arg1)
    print("OnSubFinish4019028")
    this:ActorDestroy("Q4019028Trigger")
    this:NpcDestroyImmediately(3, npcs.Npc3064.alias)
end

function Quest40190:OnSubStart4019001(arg1)
    print("OnSubStart4019001")
    this:CreateQuestNpc(arg1, npcs.Npc1034.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1036.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q4019001Trigger", "Actor/Gadget/Q4019001Trigger", 70900002, 0, points._Q4019001TriggerPoint_.pos, points._Q4019001TriggerPoint_.rot, true, false, 1063)
end

function Quest40190:OnSubFinish4019001(arg1)
    print("OnSubFinish4019001")
    this:NpcDestroyImmediately(1063, npcs.Npc1034.alias)
    this:NpcDestroyImmediately(1063, npcs.Npc1036.alias)
    this:TransmitPlayerByQuestId(4019001, 1, nil, nil, nil)
end

function Quest40190:OnSubFailed4019001(arg1)
    print("OnSubFailed4019001")
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 1063)
    this:SafeDestroyQuestNpc(npcs.Npc1036.alias, 1063)
end

function Quest40190:OnSubStart4019002(arg1)
    print("OnSubStart4019002")
    this:NpcCreateWithNpcTrigger(npcs.Npc3159.id, 0, 10, 4019002)
    this:NotifyTo(npcs.Npc3160.alias, 1, true)
    this:NotifyTo(npcs.Npc3161.alias, 1, true)
    this:NotifyTo(npcs.Npc3188.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4019002Trigger", "Actor/Gadget/Q4019002Trigger", 70900002, 0, points._Q4019002TriggerPoint_.pos, points._Q4019002TriggerPoint_.rot, true, false, 3)
end

function Quest40190:OnSubFinish4019002(arg1)
    print("OnSubFinish4019002")
    this:ClearNarratorTask()
end

function Quest40190:OnSubStart4019003(arg1)
    print("OnSubStart4019003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4019003, 0, 10, 1, npcs.Npc15067.id)
    this:DailyNpcSafeHideSelf(npcs.Npc3160.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc3161.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc3188.alias, true, 1)
end

function Quest40190:OnSubFinish4019003(arg1)
    print("OnSubFinish4019003")
    this:SafeDestroyQuestNpc(npcs.Npc3159.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15067.alias, 3)
    this:LightNotifyTo(npcs.Npc3160.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3188.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3161.alias, 0, true)
end

function Quest40190:OnSubStart4019006(arg1)
    print("OnSubStart4019006")
    this:CreateQuestNpc(arg1, npcs.Npc1037.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1097.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1039.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15133_1.id, arg1)
    this:GetQuestNpcActor(npcs.Npc15133_1.alias, 40190):DoFreeStyle(1, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q4019006Trigger", "Actor/Gadget/Q4019006Trigger", 70900002, 0, points._Q4019006TriggerPoint_.pos, points._Q4019006TriggerPoint_.rot, true, false, 3)
    this:BanCrowdNpc(3221, 4, datas.Renqun_4019006_01, true)
    this:BanCrowdNpc(3221, 16, datas.Renqun_4019006_02, true)
    this:DeployStoryByQuest(134019006)
end

function Quest40190:OnSubFinish4019006(arg1)
    print("OnSubFinish4019006")
    this:SafeDestroyQuestNpc(npcs.Npc1037.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1039.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15133_1.alias, 3)
    this:BanCrowdNpc(3221, 4, datas.Renqun_4019006_01, false)
    this:BanCrowdNpc(3221, 16, datas.Renqun_4019006_02, false)
    this:CancelStoryByQuest(134019006)
end

function Quest40190:OnSubStart4019004(arg1)
    print("OnSubStart4019004")
    this:ActionSafeCall(nil)
    actorMgr:CreateActorWithPos("Q4019004Trigger", "Actor/Gadget/Q4019004Trigger", 70900002, 0, points._Q4019004TriggerPoint_.pos, points._Q4019004TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q4019004Trigger_1", "Actor/Gadget/Q4019004Trigger_1", 70900002, 0, points._Q4019004Trigger_1Point_.pos, points._Q4019004Trigger_1Point_.rot, true, false, 3)
end

function Quest40190:OnSubFinish4019004(arg1)
    print("OnSubFinish4019004")
    this:SafeDestroyQuestNpc(npcs.Npc15132_1.alias, 3)
    this:ActorDestroy("Q4019004Trigger_1")
end

function Quest40190:OnSubStart4019005(arg1)
    print("OnSubStart4019005")
    this:CreateQuestNpc(arg1, npcs.Npc1044.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1033.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15134_1.id, arg1)
    actorMgr:CreateActorWithPos("Q4019005Trigger", "Actor/Gadget/Q4019005Trigger", 70900002, 0, points._Q4019005TriggerPoint_.pos, points._Q4019005TriggerPoint_.rot, true, false, 3)
end

function Quest40190:OnSubFinish4019005(arg1)
    print("OnSubFinish4019005")
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1033.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15134_1.alias, 3)
end

function Quest40190:OnSubStart4019020(arg1)
    print("OnSubStart4019020")
end

function Quest40190:OnSubFinish4019020(arg1)
    print("OnSubFinish4019020")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4019004, nil)
    end)
end

function Quest40190:OnSubStart4019007(arg1)
    print("OnSubStart4019007")
    this:CreateQuestNpc(arg1, npcs.Npc3099.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc3098.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1013.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q4019007Trigger", "Actor/Gadget/Q4019007Trigger", 70900002, 0, points._Q4019007TriggerPoint_.pos, points._Q4019007TriggerPoint_.rot, true, false, 3)
end

function Quest40190:OnSubFinish4019007(arg1)
    print("OnSubFinish4019007")
    this:SafeDestroyQuestNpc(npcs.Npc3099.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3098.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1013.alias, 3)
end

function Quest40190:OnSubStart4019008(arg1)
    print("OnSubStart4019008")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1047.id, arg1)
end

function Quest40190:OnSubFinish4019008(arg1)
    print("OnSubFinish4019008")
    this:SafeDestroyQuestNpc(npcs.Npc1047.alias, 3)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4019005, nil)
    end)
end

function Quest40190:OnSubStart4019009(arg1)
    print("OnSubStart4019009")
    this:CreateQuestNpc(arg1, npcs.Npc1038.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20570.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q4019009Trigger", "Actor/Gadget/Q4019009Trigger", 70900002, 0, points._Q4019009TriggerPoint_.pos, points._Q4019009TriggerPoint_.rot, true, false, 3)
    this:BanCrowdNpc(3220, 23, nil, true)
end

function Quest40190:OnSubFinish4019009(arg1)
    print("OnSubFinish4019009")
    this:SafeDestroyQuestNpc(npcs.Npc20570.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1038.alias, 3)
    this:BanCrowdNpc(3220, 23, nil, false)
end

function Quest40190:OnSubStart4019011(arg1)
    print("OnSubStart4019011")
end

function Quest40190:OnSubFinish4019011(arg1)
    print("OnSubFinish4019011")
end

function Quest40190:OnSubStart4019024(arg1)
    print("OnSubStart4019024")
    if this:GetQuestVar(4019024, 3) == 0 then
        this:CallDelayByQuest("4019024q", 2, function(arg1)
            this:AfterMainPageActiveSafeCall(function(arg1)
                actorUtils.ShowContext("MikawaFlowerMainPage", 0)
                this:AfterMainPageActiveSafeCall(function(arg1)
                    this:QuestNarratorTask(datas.NarratorWithId_4019006, nil)
                end)
            end)

            this:SetQuestVarByMainId(3, 1)
        end)
    end
end

function Quest40190:OnSubFinish4019024(arg1)
    print("OnSubFinish4019024")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4019007, nil)
    end)
end

function Quest40190:OnSubStart4019026(arg1)
    print("OnSubStart4019026")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1040.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1097.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc12941.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc12942.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc12943.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15132_1.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15133_1.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15134_1.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1033.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1034.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1035.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1037.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1047.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1013.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1037.alias, 40190):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1033.alias, 40190):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1097.alias, 40190):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1035.alias, 40190):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1040.alias, 40190):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1040.alias, 40190):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1097.alias, 40190):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1033.alias, 40190):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1035.alias, 40190):DoFreeStyle(1230, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1037.alias, 40190):DoFreeStyle(1190, true, nil, true, true, false, true)
    end)
end

function Quest40190:OnSubFinish4019026(arg1)
    print("OnSubFinish4019026")
    this:SafeDestroyQuestNpc(npcs.Npc1040.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12941.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12942.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12943.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15132_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15133_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15134_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1033.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1037.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1047.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1013.alias, 3)
end

function Quest40190:OnSubStart4019010(arg1)
    print("OnSubStart4019010")
end

function Quest40190:OnSubFinish4019010(arg1)
    print("OnSubFinish4019010")
end

function Quest40190:OnSubStart4019012(arg1)
    print("OnSubStart4019012")
end

function Quest40190:OnSubFinish4019012(arg1)
    print("OnSubFinish4019012")
end

function Quest40190:OnSubStart4019023(arg1)
    print("OnSubStart4019023")
end

function Quest40190:OnSubFinish4019023(arg1)
    print("OnSubFinish4019023")
end

function Quest40190:OnSubStart4019013(arg1)
    print("OnSubStart4019013")
end

function Quest40190:OnSubFinish4019013(arg1)
    print("OnSubFinish4019013")
end

function Quest40190:OnSubStart4019021(arg1)
    print("OnSubStart4019021")
    actorMgr:CreateActorWithPos("Q4019021Trigger", "Actor/Gadget/Q4019021Trigger", 70900002, 0, points._Q4019021TriggerPoint_.pos, points._Q4019021TriggerPoint_.rot, true, false, 3)
end

function Quest40190:OnSubFinish4019021(arg1)
    print("OnSubFinish4019021")
    this:SafeDestroyQuestNpc(npcs.Npc15132_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1040.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12941.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12942.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12943.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15134_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1033.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1037.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15133_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1047.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1013.alias, 3)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData40190, 0, nil, nil, nil)
end

function Quest40190:OnSubStart4019022(arg1)
    print("OnSubStart4019022")
end

function Quest40190:OnSubFinish4019022(arg1)
    print("OnSubFinish4019022")
    this:SafeDestroyQuestNpc(npcs.Npc1033.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1037.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1040.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12941.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12942.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12943.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15132_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15133_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15134_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1047.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1013.alias, 3)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest40190:OnSubStart4019014(arg1)
    print("OnSubStart4019014")
    this:CreateQuestNpc(arg1, npcs.Npc15017.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q4019014Trigger", "Actor/Gadget/Q4019014Trigger", 70900002, 0, points._Q4019014TriggerPoint_.pos, points._Q4019014TriggerPoint_.rot, true, false, 3)
    this:ActorDestroy("Q4019015Trigger_1")
    this:ClearNarratorTask()
end

function Quest40190:OnSubFinish4019014(arg1)
    print("OnSubFinish4019014")
    this:SafeDestroyQuestNpc(npcs.Npc15017.alias, 3)
end

function Quest40190:OnSubStart4019015(arg1)
    print("OnSubStart4019015")
    actorMgr:CreateActorWithPos("Q4019015Trigger_1", "Actor/Gadget/Q4019015Trigger_1", 70900002, 0, points._Q4019015Trigger_1Point_.pos, points._Q4019015Trigger_1Point_.rot, true, false, 3)
end

function Quest40190:OnSubFinish4019015(arg1)
    print("OnSubFinish4019015")
    this:ActorDestroy("Q4019015Trigger_1")
    this:ClearNarratorTask()
end

function Quest40190:OnSubFailed4019015(arg1)
    print("OnSubFailed4019015")
    this:ActorDestroy("Q4019015Trigger_1")
    this:ClearNarratorTask()
end

function Quest40190:OnSubStart4019027(arg1)
    print("OnSubStart4019027")
end

function Quest40190:OnSubFinish4019027(arg1)
    print("OnSubFinish4019027")
end

function Quest40190:OnSubStart4019025(arg1)
    print("OnSubStart4019025")
end

function Quest40190:OnSubFinish4019025(arg1)
    print("OnSubFinish4019025")
end

function Quest40190:OnSubStart4019016(arg1)
    print("OnSubStart4019016")
    this:NpcCreateWithNpcTrigger(npcs.Npc15017.id, 0, 30, 4019016)
    this:BanCrowdNpc(3220, 23, datas.Renqun_4019016, true)
end

function Quest40190:OnSubFinish4019016(arg1)
    print("OnSubFinish4019016")
    this:SafeDestroyQuestNpc(npcs.Npc15017.alias, 3)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowContext("ChapterCompleteDialog", 10221)
    end)

    this:BanCrowdNpc(3220, 23, datas.Renqun_4019016, false)
end

return Quest40190
