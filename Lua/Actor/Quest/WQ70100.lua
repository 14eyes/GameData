require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70100 = class("Quest70100", QuestActorProxy)
Quest70100.defaultAlias = "Quest70100"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest70100:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70100:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7010001"] = self.OnSubStart7010001,
        ["7010002"] = self.OnSubStart7010002,
        ["7010003"] = self.OnSubStart7010003,
        ["7010034"] = self.OnSubStart7010034,
        ["7010004"] = self.OnSubStart7010004,
        ["7010005"] = self.OnSubStart7010005,
        ["7010030"] = self.OnSubStart7010030,
        ["7010006"] = self.OnSubStart7010006,
        ["7010035"] = self.OnSubStart7010035,
        ["7010007"] = self.OnSubStart7010007,
        ["7010031"] = self.OnSubStart7010031,
        ["7010008"] = self.OnSubStart7010008,
        ["7010036"] = self.OnSubStart7010036,
        ["7010009"] = self.OnSubStart7010009,
        ["7010032"] = self.OnSubStart7010032,
        ["7010010"] = self.OnSubStart7010010,
        ["7010037"] = self.OnSubStart7010037,
        ["7010012"] = self.OnSubStart7010012,
        ["7010033"] = self.OnSubStart7010033,
        ["7010013"] = self.OnSubStart7010013,
        ["7010014"] = self.OnSubStart7010014,
        ["7010015"] = self.OnSubStart7010015,
        ["7010038"] = self.OnSubStart7010038,
        ["7010016"] = self.OnSubStart7010016,
        ["7010040"] = self.OnSubStart7010040,
        ["7010017"] = self.OnSubStart7010017,
        ["7010019"] = self.OnSubStart7010019,
        ["7010039"] = self.OnSubStart7010039,
        ["7010041"] = self.OnSubStart7010041,
        ["7010042"] = self.OnSubStart7010042,
        ["7010020"] = self.OnSubStart7010020,
        ["7010022"] = self.OnSubStart7010022,
        ["7010023"] = self.OnSubStart7010023,
        ["7010024"] = self.OnSubStart7010024,
        ["7010025"] = self.OnSubStart7010025,
        ["7010026"] = self.OnSubStart7010026,
        ["7010028"] = self.OnSubStart7010028,
        ["7010011"] = self.OnSubStart7010011,
        ["7010018"] = self.OnSubStart7010018,
        ["7010021"] = self.OnSubStart7010021,
        ["7010027"] = self.OnSubStart7010027,
        ["7010029"] = self.OnSubStart7010029
    }
end

function Quest70100:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7010001"] = self.OnSubFinish7010001,
        ["7010002"] = self.OnSubFinish7010002,
        ["7010003"] = self.OnSubFinish7010003,
        ["7010034"] = self.OnSubFinish7010034,
        ["7010004"] = self.OnSubFinish7010004,
        ["7010005"] = self.OnSubFinish7010005,
        ["7010030"] = self.OnSubFinish7010030,
        ["7010006"] = self.OnSubFinish7010006,
        ["7010035"] = self.OnSubFinish7010035,
        ["7010007"] = self.OnSubFinish7010007,
        ["7010031"] = self.OnSubFinish7010031,
        ["7010008"] = self.OnSubFinish7010008,
        ["7010036"] = self.OnSubFinish7010036,
        ["7010009"] = self.OnSubFinish7010009,
        ["7010032"] = self.OnSubFinish7010032,
        ["7010010"] = self.OnSubFinish7010010,
        ["7010037"] = self.OnSubFinish7010037,
        ["7010012"] = self.OnSubFinish7010012,
        ["7010033"] = self.OnSubFinish7010033,
        ["7010013"] = self.OnSubFinish7010013,
        ["7010014"] = self.OnSubFinish7010014,
        ["7010015"] = self.OnSubFinish7010015,
        ["7010038"] = self.OnSubFinish7010038,
        ["7010016"] = self.OnSubFinish7010016,
        ["7010040"] = self.OnSubFinish7010040,
        ["7010017"] = self.OnSubFinish7010017,
        ["7010019"] = self.OnSubFinish7010019,
        ["7010039"] = self.OnSubFinish7010039,
        ["7010041"] = self.OnSubFinish7010041,
        ["7010042"] = self.OnSubFinish7010042,
        ["7010020"] = self.OnSubFinish7010020,
        ["7010022"] = self.OnSubFinish7010022,
        ["7010023"] = self.OnSubFinish7010023,
        ["7010024"] = self.OnSubFinish7010024,
        ["7010025"] = self.OnSubFinish7010025,
        ["7010026"] = self.OnSubFinish7010026,
        ["7010028"] = self.OnSubFinish7010028,
        ["7010011"] = self.OnSubFinish7010011,
        ["7010018"] = self.OnSubFinish7010018,
        ["7010021"] = self.OnSubFinish7010021,
        ["7010027"] = self.OnSubFinish7010027,
        ["7010029"] = self.OnSubFinish7010029
    }
end

function Quest70100:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7010006"] = self.OnSubFailed7010006,
        ["7010008"] = self.OnSubFailed7010008,
        ["7010010"] = self.OnSubFailed7010010,
        ["7010013"] = self.OnSubFailed7010013,
        ["7010014"] = self.OnSubFailed7010014,
        ["7010015"] = self.OnSubFailed7010015,
        ["7010020"] = self.OnSubFailed7010020,
        ["7010022"] = self.OnSubFailed7010022,
        ["7010023"] = self.OnSubFailed7010023,
        ["7010024"] = self.OnSubFailed7010024,
        ["7010025"] = self.OnSubFailed7010025,
        ["7010026"] = self.OnSubFailed7010026,
        ["7010011"] = self.OnSubFailed7010011,
        ["7010021"] = self.OnSubFailed7010021
    }
end

function Quest70100:Start()
    print("Start")
end

function Quest70100:OnDestroy()
    print("OnDestroy")
end

function Quest70100:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70100:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70100:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70100:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7010008Trigger", 70100)
    this:ActorDestroy("Q7010020Trigger", 70100)
    this:ActorDestroy("Q7010001Trigger", 70100)
    this:ActorDestroy("Q7010030Trigger", 70100)
    this:ActorDestroy("Q7010031Trigger", 70100)
    this:ActorDestroy("Q7010032Trigger", 70100)
    this:ActorDestroy("Q7010033Trigger", 70100)
    this:ActorDestroy("Q7010042Trigger", 70100)
    this:BanCrowdNpc(1159, 1, nil, false, true)
end

function Quest70100:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest70100:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest70100:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70100:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest70100:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest70100:OnSubStart7010001(arg1)
    print("OnSubStart7010001")
    actorMgr:CreateActorWithPos("Q7010001Trigger", "Actor/Gadget/Q7010001Trigger", 70900002, 0, points._Q7010001TriggerPoint_.pos, points._Q7010001TriggerPoint_.rot, true, false, 3, nil, 0, 70100)
end

function Quest70100:OnSubFinish7010001(arg1)
    print("OnSubFinish7010001")
    this:QuestNarratorTask(datas.NarratorWithId_7010001, nil)
end

function Quest70100:OnSubStart7010002(arg1)
    print("OnSubStart7010002")
    this:NpcCreateWithNpcTrigger(npcs.Npc17101.id, 0, 10, 7010002)
end

function Quest70100:OnSubFinish7010002(arg1)
    print("OnSubFinish7010002")
    this:NpcDestroyImmediately(3, npcs.Npc17101.alias)
    this:ClearNarratorTask()
end

function Quest70100:OnSubStart7010003(arg1)
    print("OnSubStart7010003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7010003, 0, 15, 2, npcs.Npc17100.id)
end

function Quest70100:OnSubFinish7010003(arg1)
    print("OnSubFinish7010003")
    this:NpcDestroyImmediately(3, npcs.Npc17100.alias)
end

function Quest70100:OnSubStart7010034(arg1)
    print("OnSubStart7010034")
end

function Quest70100:OnSubFinish7010034(arg1)
    print("OnSubFinish7010034")
end

function Quest70100:OnSubStart7010004(arg1)
    print("OnSubStart7010004")
    this:NpcCreateWithNpcTrigger(npcs.Npc1341.id, 0, 10, 7010004)
    this:GetQuestNpcActor(npcs.Npc1341.alias, 70100):DoFreeStyle(1060, true, nil, true, true, false, false)
end

function Quest70100:OnSubFinish7010004(arg1)
    print("OnSubFinish7010004")
    this:NpcDestroyImmediately(3, npcs.Npc1341.alias)
end

function Quest70100:OnSubStart7010005(arg1)
    print("OnSubStart7010005")
end

function Quest70100:OnSubFinish7010005(arg1)
    print("OnSubFinish7010005")
end

function Quest70100:OnSubStart7010030(arg1)
    print("OnSubStart7010030")
    actorMgr:CreateActorWithPos("Q7010030Trigger", "Actor/Gadget/Q7010030Trigger", 70900002, 0, points._Q7010030TriggerPoint_.pos, points._Q7010030TriggerPoint_.rot, true, false, 3, nil, 0, 70100)
end

function Quest70100:OnSubFinish7010030(arg1)
    print("OnSubFinish7010030")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ShowTutorialDialog(2892, function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_7010005, nil)
        end)
    end, true)

    this:ActorDestroy("Q7010030Trigger", 70100)
end

function Quest70100:OnSubStart7010006(arg1)
    print("OnSubStart7010006")
    this:NpcCreateWithNpcTrigger(npcs.Npc17102.id, 0, 20, 7010006)
    this:AfterMainPageActiveSafeCall(function(arg1)
        if sceneData.currSceneID == 20383 then
            actorUtils.ShowReminder(1005720007)
        end
    end, true)
end

function Quest70100:OnSubFinish7010006(arg1)
    print("OnSubFinish7010006")
    this:NpcDestroyImmediately(20383, npcs.Npc17102.alias)
    this:ClearNarratorTask()
end

function Quest70100:OnSubFailed7010006(arg1)
    print("OnSubFailed7010006")
    this:RecycleAllRes()
end

function Quest70100:OnSubStart7010035(arg1)
    print("OnSubStart7010035")
    this:AfterMainPageActiveSafeCall(function(arg1_2)
        if sceneData.currSceneID == 20383 then
            this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Black, nil, nil, nil)
        end
    end, true)
end

function Quest70100:OnSubFinish7010035(arg1)
    print("OnSubFinish7010035")
end

function Quest70100:OnSubStart7010007(arg1)
    print("OnSubStart7010007")
end

function Quest70100:OnSubFinish7010007(arg1)
    print("OnSubFinish7010007")
end

function Quest70100:OnSubStart7010031(arg1)
    print("OnSubStart7010031")
    actorMgr:CreateActorWithPos("Q7010031Trigger", "Actor/Gadget/Q7010031Trigger", 70900002, 0, points._Q7010031TriggerPoint_.pos, points._Q7010031TriggerPoint_.rot, true, false, 3, nil, 0, 70100)
end

function Quest70100:OnSubFinish7010031(arg1)
    print("OnSubFinish7010031")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7010007, nil)
    end, true)

    this:ActorDestroy("Q7010031Trigger", 70100)
end

function Quest70100:OnSubStart7010008(arg1)
    print("OnSubStart7010008")
    this:NpcCreateWithNpcTrigger(npcs.Npc17103.id, 0, 15, 7010008)
    this:AfterMainPageActiveSafeCall(function(arg1)
        if sceneData.currSceneID == 20383 then
            actorUtils.ShowReminder(1005720007)
        end
    end, true)
end

function Quest70100:OnSubFinish7010008(arg1)
    print("OnSubFinish7010008")
    this:NpcDestroyImmediately(20383, npcs.Npc17103.alias)
    actorUtils.InterruptReminder()
end

function Quest70100:OnSubFailed7010008(arg1)
    print("OnSubFailed7010008")
    this:RecycleAllRes()
end

function Quest70100:OnSubStart7010036(arg1)
    print("OnSubStart7010036")
    this:AfterMainPageActiveSafeCall(function(arg1_2)
        if sceneData.currSceneID == 20383 then
            this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Black, function(arg1)
                this:QuestNarratorTask(datas.NarratorWithId_7010008, nil)
            end, nil, nil)
        end
    end, true)
end

function Quest70100:OnSubFinish7010036(arg1)
    print("OnSubFinish7010036")
end

function Quest70100:OnSubStart7010009(arg1)
    print("OnSubStart7010009")
end

function Quest70100:OnSubFinish7010009(arg1)
    print("OnSubFinish7010009")
end

function Quest70100:OnSubStart7010032(arg1)
    print("OnSubStart7010032")
    actorMgr:CreateActorWithPos("Q7010032Trigger", "Actor/Gadget/Q7010032Trigger", 70900002, 0, points._Q7010032TriggerPoint_.pos, points._Q7010032TriggerPoint_.rot, true, false, 3, nil, 0, 70100)
end

function Quest70100:OnSubFinish7010032(arg1)
    print("OnSubFinish7010032")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7010009, nil)
    end, true)

    this:ActorDestroy("Q7010032Trigger", 70100)
end

function Quest70100:OnSubStart7010010(arg1)
    print("OnSubStart7010010")
    this:NpcCreateWithNpcTrigger(npcs.Npc17104.id, 0, 15, 7010010)
    this:AfterMainPageActiveSafeCall(function(arg1)
        if sceneData.currSceneID == 20383 then
            actorUtils.ShowReminder(1005720007)
        end
    end, true)
end

function Quest70100:OnSubFinish7010010(arg1)
    print("OnSubFinish7010010")
    this:NpcDestroyImmediately(20383, npcs.Npc17104.alias)
    this:ClearNarratorTask()
end

function Quest70100:OnSubFailed7010010(arg1)
    print("OnSubFailed7010010")
    this:RecycleAllRes()
end

function Quest70100:OnSubStart7010037(arg1)
    print("OnSubStart7010037")
    this:AfterMainPageActiveSafeCall(function(arg1_2)
        if sceneData.currSceneID == 20383 then
            this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Black, nil, nil, nil)
        end
    end, true)
end

function Quest70100:OnSubFinish7010037(arg1)
    print("OnSubFinish7010037")
end

function Quest70100:OnSubStart7010012(arg1)
    print("OnSubStart7010012")
end

function Quest70100:OnSubFinish7010012(arg1)
    print("OnSubFinish7010012")
end

function Quest70100:OnSubStart7010033(arg1)
    print("OnSubStart7010033")
    actorMgr:CreateActorWithPos("Q7010033Trigger", "Actor/Gadget/Q7010033Trigger", 70900002, 0, points._Q7010033TriggerPoint_.pos, points._Q7010033TriggerPoint_.rot, true, false, 3, nil, 0, 70100)
end

function Quest70100:OnSubFinish7010033(arg1)
    print("OnSubFinish7010033")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7010012, nil)
    end, true)

    this:ActorDestroy("Q7010033Trigger", 70100)
end

function Quest70100:OnSubStart7010013(arg1)
    print("OnSubStart7010013")
    this:NpcCreateWithNpcTrigger(npcs.Npc15921.id, 0, 20, 7010013)
    this:AfterMainPageActiveSafeCall(function(arg1)
        if sceneData.currSceneID == 20383 then
            actorUtils.ShowReminder(1005720007)
        end
    end, true)
end

function Quest70100:OnSubFinish7010013(arg1)
    print("OnSubFinish7010013")
    this:NpcDestroyImmediately(20383, npcs.Npc15921.alias)
    this:CallDelay(1, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7010014, nil)
    end)
end

function Quest70100:OnSubFailed7010013(arg1)
    print("OnSubFailed7010013")
    this:RecycleAllRes()
end

function Quest70100:OnSubStart7010014(arg1)
    print("OnSubStart7010014")
end

function Quest70100:OnSubFinish7010014(arg1)
    print("OnSubFinish7010014")
end

function Quest70100:OnSubFailed7010014(arg1)
    print("OnSubFailed7010014")
    this:RecycleAllRes()
end

function Quest70100:OnSubStart7010015(arg1)
    print("OnSubStart7010015")
    this:NpcCreateWithNpcTrigger(npcs.Npc17105.id, 0, 30, 7010015)
end

function Quest70100:OnSubFinish7010015(arg1)
    print("OnSubFinish7010015")
    this:NpcDestroyImmediately(20383, npcs.Npc17105.alias)
    this:ClearNarratorTask()
    actorUtils.InterruptReminder()
end

function Quest70100:OnSubFailed7010015(arg1)
    print("OnSubFailed7010015")
    this:RecycleAllRes()
end

function Quest70100:OnSubStart7010038(arg1)
    print("OnSubStart7010038")
    this:AfterMainPageActiveSafeCall(function(arg1_2)
        if sceneData.currSceneID == 20383 then
            this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Black, nil, nil, nil)
        end
    end, true)
end

function Quest70100:OnSubFinish7010038(arg1)
    print("OnSubFinish7010038")
end

function Quest70100:OnSubStart7010016(arg1)
    print("OnSubStart7010016")
end

function Quest70100:OnSubFinish7010016(arg1)
    print("OnSubFinish7010016")
    this:QuestNarratorTask(datas.NarratorWithId_7010016, nil)
end

function Quest70100:OnSubStart7010040(arg1)
    print("OnSubStart7010040")
end

function Quest70100:OnSubFinish7010040(arg1)
    print("OnSubFinish7010040")
end

function Quest70100:OnSubStart7010017(arg1)
    print("OnSubStart7010017")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc17100.id, 0, 7010017, 50, true)
end

function Quest70100:OnSubFinish7010017(arg1)
    print("OnSubFinish7010017")
    this:NpcDestroyImmediately(1159, npcs.Npc17100.alias)
    this:ClearNarratorTask()
end

function Quest70100:OnSubStart7010019(arg1)
    print("OnSubStart7010019")
    this:NpcCreateWithNpcTrigger(npcs.Npc17106.id, 0, 30, 7010019)
    this:BanCrowdNpc(1159, 1, nil, true, true)
end

function Quest70100:OnSubFinish7010019(arg1)
    print("OnSubFinish7010019")
    this:NpcDestroyImmediately(1159, npcs.Npc17106.alias)
    this:BanCrowdNpc(1159, 1, nil, false, true)
end

function Quest70100:OnSubStart7010039(arg1)
    print("OnSubStart7010039")
end

function Quest70100:OnSubFinish7010039(arg1)
    print("OnSubFinish7010039")
end

function Quest70100:OnSubStart7010041(arg1)
    print("OnSubStart7010041")
end

function Quest70100:OnSubFinish7010041(arg1)
    print("OnSubFinish7010041")
end

function Quest70100:OnSubStart7010042(arg1)
    print("OnSubStart7010042")
    actorMgr:CreateActorWithPos("Q7010042Trigger", "Actor/Gadget/Q7010042Trigger", 70900002, 0, points._Q7010042TriggerPoint_.pos, points._Q7010042TriggerPoint_.rot, true, false, 3, nil, 0, 70100)
end

function Quest70100:OnSubFinish7010042(arg1)
    print("OnSubFinish7010042")
    this:ActorDestroy("Q7010042Trigger", 70100)
end

function Quest70100:OnSubStart7010020(arg1)
    print("OnSubStart7010020")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc17100.id, 0, 7010020, 30, true)
end

function Quest70100:OnSubFinish7010020(arg1)
    print("OnSubFinish7010020")
    this:NpcDestroyImmediately(51331, npcs.Npc17100.alias)
end

function Quest70100:OnSubFailed7010020(arg1)
    print("OnSubFailed7010020")
    this:RecycleAllRes()
end

function Quest70100:OnSubStart7010022(arg1)
    print("OnSubStart7010022")
    this:NpcCreateWithNpcTrigger(npcs.Npc17509.id, 0, 20, 7010022)
    this:GetQuestNpcActor(npcs.Npc17509.alias, 70100):DoFreeStyle(6, true, nil, true, true, false, false)
    this:DeployStoryByQuest(140000000)
end

function Quest70100:OnSubFinish7010022(arg1)
    print("OnSubFinish7010022")
    this:NpcDestroyImmediately(51331, npcs.Npc17509.alias)
    this:CancelStoryByQuest(140000000)
    this:CallDelay(10, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7010023, nil)
    end)
end

function Quest70100:OnSubFailed7010022(arg1)
    print("OnSubFailed7010022")
    this:RecycleAllRes()
end

function Quest70100:OnSubStart7010023(arg1)
    print("OnSubStart7010023")
end

function Quest70100:OnSubFinish7010023(arg1)
    print("OnSubFinish7010023")
    this:ClearNarratorTask()
end

function Quest70100:OnSubFailed7010023(arg1)
    print("OnSubFailed7010023")
    this:RecycleAllRes()
end

function Quest70100:OnSubStart7010024(arg1)
    print("OnSubStart7010024")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7010024, 0, 50, 2, npcs.Npc17100.id)
end

function Quest70100:OnSubFinish7010024(arg1)
    print("OnSubFinish7010024")
    this:NpcDestroyImmediately(51331, npcs.Npc17100.alias)
end

function Quest70100:OnSubFailed7010024(arg1)
    print("OnSubFailed7010024")
    this:RecycleAllRes()
end

function Quest70100:OnSubStart7010025(arg1)
    print("OnSubStart7010025")
end

function Quest70100:OnSubFinish7010025(arg1)
    print("OnSubFinish7010025")
end

function Quest70100:OnSubFailed7010025(arg1)
    print("OnSubFailed7010025")
    this:RecycleAllRes()
end

function Quest70100:OnSubStart7010026(arg1)
    print("OnSubStart7010026")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7010026, 0, 18, 2, npcs.Npc17100.id)
end

function Quest70100:OnSubFinish7010026(arg1)
    print("OnSubFinish7010026")
    this:NpcDestroyImmediately(51331, npcs.Npc17100.alias)
end

function Quest70100:OnSubFailed7010026(arg1)
    print("OnSubFailed7010026")
    this:RecycleAllRes()
end

function Quest70100:OnSubStart7010028(arg1)
    print("OnSubStart7010028")
    this:CreateQuestNpc(arg1, npcs.Npc1341.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1341.alias, 70100):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:AfterMainPageActiveSafeCall(function(arg1_2)
        if sceneData.currSceneID == 51331 then
            this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Black, function(arg1)
                this:QuestNarratorTask(datas.NarratorWithId_7010027, nil)
            end, nil, nil)
        end
    end, true)
end

function Quest70100:OnSubFinish7010028(arg1)
    print("OnSubFinish7010028")
    this:NpcDestroyImmediately(3, npcs.Npc1341.alias)
    this:ClearNarratorTask()
end

function Quest70100:OnSubStart7010011(arg1)
    print("OnSubStart7010011")
end

function Quest70100:OnSubFinish7010011(arg1)
    print("OnSubFinish7010011")
end

function Quest70100:OnSubFailed7010011(arg1)
    print("OnSubFailed7010011")
    this:RecycleAllRes()
end

function Quest70100:OnSubStart7010018(arg1)
    print("OnSubStart7010018")
end

function Quest70100:OnSubFinish7010018(arg1)
    print("OnSubFinish7010018")
end

function Quest70100:OnSubStart7010021(arg1)
    print("OnSubStart7010021")
end

function Quest70100:OnSubFinish7010021(arg1)
    print("OnSubFinish7010021")
end

function Quest70100:OnSubFailed7010021(arg1)
    print("OnSubFailed7010021")
    this:RecycleAllRes()
end

function Quest70100:OnSubStart7010027(arg1)
    print("OnSubStart7010027")
end

function Quest70100:OnSubFinish7010027(arg1)
    print("OnSubFinish7010027")
    this:QuestNarratorTask(datas.NarratorWithId_7010027, nil)
end

function Quest70100:OnSubStart7010029(arg1)
    print("OnSubStart7010029")
end

function Quest70100:OnSubFinish7010029(arg1)
    print("OnSubFinish7010029")
end

return Quest70100
