require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40220 = class("Quest40220", QuestActorProxy)
Quest40220.defaultAlias = "Quest40220"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40220:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40220:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4022001"] = self.OnSubStart4022001,
        ["4022002"] = self.OnSubStart4022002,
        ["4022016"] = self.OnSubStart4022016,
        ["4022003"] = self.OnSubStart4022003,
        ["4022004"] = self.OnSubStart4022004,
        ["4022005"] = self.OnSubStart4022005,
        ["4022006"] = self.OnSubStart4022006,
        ["4022007"] = self.OnSubStart4022007,
        ["4022018"] = self.OnSubStart4022018,
        ["4022008"] = self.OnSubStart4022008,
        ["4022013"] = self.OnSubStart4022013,
        ["4022009"] = self.OnSubStart4022009,
        ["4022019"] = self.OnSubStart4022019,
        ["4022023"] = self.OnSubStart4022023,
        ["4022010"] = self.OnSubStart4022010,
        ["4022011"] = self.OnSubStart4022011,
        ["4022020"] = self.OnSubStart4022020,
        ["4022017"] = self.OnSubStart4022017,
        ["4022021"] = self.OnSubStart4022021,
        ["4022014"] = self.OnSubStart4022014,
        ["4022015"] = self.OnSubStart4022015,
        ["4022012"] = self.OnSubStart4022012,
        ["4022022"] = self.OnSubStart4022022
    }
end

function Quest40220:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4022001"] = self.OnSubFinish4022001,
        ["4022002"] = self.OnSubFinish4022002,
        ["4022016"] = self.OnSubFinish4022016,
        ["4022003"] = self.OnSubFinish4022003,
        ["4022004"] = self.OnSubFinish4022004,
        ["4022005"] = self.OnSubFinish4022005,
        ["4022006"] = self.OnSubFinish4022006,
        ["4022007"] = self.OnSubFinish4022007,
        ["4022018"] = self.OnSubFinish4022018,
        ["4022008"] = self.OnSubFinish4022008,
        ["4022013"] = self.OnSubFinish4022013,
        ["4022009"] = self.OnSubFinish4022009,
        ["4022019"] = self.OnSubFinish4022019,
        ["4022023"] = self.OnSubFinish4022023,
        ["4022010"] = self.OnSubFinish4022010,
        ["4022011"] = self.OnSubFinish4022011,
        ["4022020"] = self.OnSubFinish4022020,
        ["4022017"] = self.OnSubFinish4022017,
        ["4022021"] = self.OnSubFinish4022021,
        ["4022014"] = self.OnSubFinish4022014,
        ["4022015"] = self.OnSubFinish4022015,
        ["4022012"] = self.OnSubFinish4022012,
        ["4022022"] = self.OnSubFinish4022022
    }
end

function Quest40220:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4022006"] = self.OnSubFailed4022006,
        ["4022007"] = self.OnSubFailed4022007,
        ["4022018"] = self.OnSubFailed4022018,
        ["4022008"] = self.OnSubFailed4022008,
        ["4022013"] = self.OnSubFailed4022013,
        ["4022009"] = self.OnSubFailed4022009,
        ["4022019"] = self.OnSubFailed4022019,
        ["4022023"] = self.OnSubFailed4022023,
        ["4022010"] = self.OnSubFailed4022010,
        ["4022011"] = self.OnSubFailed4022011,
        ["4022020"] = self.OnSubFailed4022020,
        ["4022017"] = self.OnSubFailed4022017,
        ["4022021"] = self.OnSubFailed4022021
    }
end

function Quest40220:Start()
    print("Start")
end

function Quest40220:OnDestroy()
    print("OnDestroy")
end

function Quest40220:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40220:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40220:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.NPC20088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15854.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16229.alias, 3)
    this:LightNotifyTo(npcs.Npc1670.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc15853.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16014.alias, 20290)
    this:SafeDestroyQuestNpc(npcs.Npc16014.alias, 3)
    this:ActorDestroy("Q4022015_TriggerIn")
    this:ActorDestroy("Q4022016_TriggerIn")
    this:ActorDestroy("Q4022008_TriggerIn")
    this:ActorDestroy("Q4022010_TriggerIn")
    this:DestroyNpcTrigger("Q4022002N15853Trigger")
    this:DestroyNpcTrigger("Q4022005N16014Trigger")
    this:DestroyNpcTrigger("Q4022012N16014Trigger")
    this:DestroyNpcTrigger("Q4022015N15853Trigger")
    this:CancelStoryByQuest(134022003)
    this:CancelStoryByQuest(134022016)
    this:CancelStoryByQuest(134022005)
end

function Quest40220:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4022015_TriggerIn")
    this:ActorDestroy("Q4022016_TriggerIn")
    this:ActorDestroy("Q4022008_TriggerIn")
    this:ActorDestroy("Q4022010_TriggerIn")
end

function Quest40220:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40220:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40220:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest40220:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40220:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40220:OnSubStart4022001(arg1)
    print("OnSubStart4022001")
end

function Quest40220:OnSubFinish4022001(arg1)
    print("OnSubFinish4022001")
end

function Quest40220:OnSubStart4022002(arg1)
    print("OnSubStart4022002")
    this:CreateQuestNpc(arg1, npcs.NPC20088.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc15853.id, 0, 8, 4022002)
    this:DeployStoryByQuest(134022003)
end

function Quest40220:OnSubFinish4022002(arg1)
    print("OnSubFinish4022002")
    this:SafeDestroyQuestNpc(npcs.NPC20088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15853.alias, 3)
end

function Quest40220:OnSubStart4022016(arg1)
    print("OnSubStart4022016")
    this:CreateQuestNpc(arg1, npcs.Npc1098.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15854.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40220):DoFreeStyle(4121, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40220):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16229.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16229.alias, 40220):DoFreeStyle(1280, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16229.alias, 40220):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40220):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    actorMgr:CreateActorWithPos("Q4022016_TriggerIn", "Actor/Gadget/Q4022016_TriggerIn", 70900002, 0, points._Q4022016_TriggerInPoint_.pos, points._Q4022016_TriggerInPoint_.rot, true, false, 3)
    this:DeployStoryByQuest(134022003)
end

function Quest40220:OnSubFinish4022016(arg1)
    print("OnSubFinish4022016")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15854.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16229.alias, 3)
end

function Quest40220:OnSubStart4022003(arg1)
    print("OnSubStart4022003")
    this:DailyNpcSafeHideSelf(npcs.Npc1670.alias, true, 1)
    this:ClearNarratorTask()
    this:DeployStoryByQuest(134022003)
    this:DeployStoryByQuest(134022016)
end

function Quest40220:OnSubFinish4022003(arg1)
    print("OnSubFinish4022003")
    this:CancelStoryByQuest(134022016)
end

function Quest40220:OnSubStart4022004(arg1)
    print("OnSubStart4022004")
    this:DailyNpcSafeHideSelf(npcs.Npc1670.alias, true, 1)
    this:PlayerEnterDungeonWithData(1721, 1270, 4022004, 1, datas.PlayerEnterDungeonData, nil, nil)
end

function Quest40220:OnSubFinish4022004(arg1)
    print("OnSubFinish4022004")
    this:CancelStoryByQuest(134022003)
end

function Quest40220:OnSubStart4022005(arg1)
    print("OnSubStart4022005")
    this:DailyNpcSafeHideSelf(npcs.Npc1670.alias, true, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16014.id, 0, 4022005, 30, true)
end

function Quest40220:OnSubFinish4022005(arg1)
    print("OnSubFinish4022005")
    this:SafeDestroyQuestNpc(npcs.Npc16014.alias, 20290)
end

function Quest40220:OnSubStart4022006(arg1)
    print("OnSubStart4022006")
    this:DailyNpcSafeHideSelf(npcs.Npc1670.alias, true, 1)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(134022005)
    end)
end

function Quest40220:OnSubFinish4022006(arg1)
    print("OnSubFinish4022006")
end

function Quest40220:OnSubFailed4022006(arg1)
    print("OnSubFailed4022006")
    this:CancelStoryByQuest(134022005)
end

function Quest40220:OnSubStart4022007(arg1)
    print("OnSubStart4022007")
    this:DailyNpcSafeHideSelf(npcs.Npc1670.alias, true, 1)
end

function Quest40220:OnSubFinish4022007(arg1)
    print("OnSubFinish4022007")
end

function Quest40220:OnSubFailed4022007(arg1)
    print("OnSubFailed4022007")
    this:CancelStoryByQuest(134022005)
end

function Quest40220:OnSubStart4022018(arg1)
    print("OnSubStart4022018")
    this:DailyNpcSafeHideSelf(npcs.Npc1670.alias, true, 1)
end

function Quest40220:OnSubFinish4022018(arg1)
    print("OnSubFinish4022018")
end

function Quest40220:OnSubFailed4022018(arg1)
    print("OnSubFailed4022018")
    this:CancelStoryByQuest(134022005)
end

function Quest40220:OnSubStart4022008(arg1)
    print("OnSubStart4022008")
    this:DailyNpcSafeHideSelf(npcs.Npc1670.alias, true, 1)
    this:DeployStoryByQuest(134022005)
    actorMgr:CreateActorWithPos("Q4022008_TriggerIn", "Actor/Gadget/Q4022008_TriggerIn", 70900002, 0, points._Q4022008_TriggerInPoint_.pos, points._Q4022008_TriggerInPoint_.rot, true, false, 20290)
end

function Quest40220:OnSubFinish4022008(arg1)
    print("OnSubFinish4022008")
    this:ActorDestroy("Q4022008_TriggerIn")
end

function Quest40220:OnSubFailed4022008(arg1)
    print("OnSubFailed4022008")
    this:CancelStoryByQuest(134022005)
    this:ActorDestroy("Q4022008_TriggerIn")
end

function Quest40220:OnSubStart4022013(arg1)
    print("OnSubStart4022013")
    this:DailyNpcSafeHideSelf(npcs.Npc1670.alias, true, 1)
    this:DeployStoryByQuest(134022005)
    actorMgr:CreateActorWithPos("Q4022008_TriggerIn", "Actor/Gadget/Q4022008_TriggerIn", 70900002, 0, points._Q4022008_TriggerInPoint_.pos, points._Q4022008_TriggerInPoint_.rot, true, false, 20290)
end

function Quest40220:OnSubFinish4022013(arg1)
    print("OnSubFinish4022013")
    this:ActorDestroy("Q4022008_TriggerIn")
end

function Quest40220:OnSubFailed4022013(arg1)
    print("OnSubFailed4022013")
    this:CancelStoryByQuest(134022005)
    this:ActorDestroy("Q4022008_TriggerIn")
end

function Quest40220:OnSubStart4022009(arg1)
    print("OnSubStart4022009")
    this:DailyNpcSafeHideSelf(npcs.Npc1670.alias, true, 1)
end

function Quest40220:OnSubFinish4022009(arg1)
    print("OnSubFinish4022009")
end

function Quest40220:OnSubFailed4022009(arg1)
    print("OnSubFailed4022009")
    this:CancelStoryByQuest(134022005)
end

function Quest40220:OnSubStart4022019(arg1)
    print("OnSubStart4022019")
    this:DailyNpcSafeHideSelf(npcs.Npc1670.alias, true, 1)
end

function Quest40220:OnSubFinish4022019(arg1)
    print("OnSubFinish4022019")
end

function Quest40220:OnSubFailed4022019(arg1)
    print("OnSubFailed4022019")
    this:CancelStoryByQuest(134022005)
end

function Quest40220:OnSubStart4022023(arg1)
    print("OnSubStart4022023")
    this:DailyNpcSafeHideSelf(npcs.Npc1670.alias, true, 1)
end

function Quest40220:OnSubFinish4022023(arg1)
    print("OnSubFinish4022023")
end

function Quest40220:OnSubFailed4022023(arg1)
    print("OnSubFailed4022023")
    this:CancelStoryByQuest(134022005)
end

function Quest40220:OnSubStart4022010(arg1)
    print("OnSubStart4022010")
    this:DailyNpcSafeHideSelf(npcs.Npc1670.alias, true, 1)
    this:DeployStoryByQuest(134022005)
    actorMgr:CreateActorWithPos("Q4022010_TriggerIn", "Actor/Gadget/Q4022010_TriggerIn", 70900002, 0, points._Q4022010_TriggerInPoint_.pos, points._Q4022010_TriggerInPoint_.rot, true, false, 20290)
end

function Quest40220:OnSubFinish4022010(arg1)
    print("OnSubFinish4022010")
    this:ActorDestroy("Q4022010_TriggerIn")
end

function Quest40220:OnSubFailed4022010(arg1)
    print("OnSubFailed4022010")
    this:CancelStoryByQuest(134022005)
    this:ActorDestroy("Q4022010_TriggerIn")
end

function Quest40220:OnSubStart4022011(arg1)
    print("OnSubStart4022011")
    this:DailyNpcSafeHideSelf(npcs.Npc1670.alias, true, 1)
end

function Quest40220:OnSubFinish4022011(arg1)
    print("OnSubFinish4022011")
end

function Quest40220:OnSubFailed4022011(arg1)
    print("OnSubFailed4022011")
    this:CancelStoryByQuest(134022005)
end

function Quest40220:OnSubStart4022020(arg1)
    print("OnSubStart4022020")
    this:DailyNpcSafeHideSelf(npcs.Npc1670.alias, true, 1)
end

function Quest40220:OnSubFinish4022020(arg1)
    print("OnSubFinish4022020")
end

function Quest40220:OnSubFailed4022020(arg1)
    print("OnSubFailed4022020")
    this:CancelStoryByQuest(134022005)
end

function Quest40220:OnSubStart4022017(arg1)
    print("OnSubStart4022017")
    this:DailyNpcSafeHideSelf(npcs.Npc1670.alias, true, 1)
    this:DeployStoryByQuest(134022005)
end

function Quest40220:OnSubFinish4022017(arg1)
    print("OnSubFinish4022017")
    this:CancelStoryByQuest(134022005)
end

function Quest40220:OnSubFailed4022017(arg1)
    print("OnSubFailed4022017")
    this:CancelStoryByQuest(134022005)
end

function Quest40220:OnSubStart4022021(arg1)
    print("OnSubStart4022021")
    this:DailyNpcSafeHideSelf(npcs.Npc1670.alias, true, 1)
end

function Quest40220:OnSubFinish4022021(arg1)
    print("OnSubFinish4022021")
end

function Quest40220:OnSubFailed4022021(arg1)
    print("OnSubFailed4022021")
    this:CancelStoryByQuest(134022005)
end

function Quest40220:OnSubStart4022014(arg1)
    print("OnSubStart4022014")
    this:DailyNpcSafeHideSelf(npcs.Npc1670.alias, true, 1)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4022014_01, function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_4022014_02, nil)
        end)
    end)
end

function Quest40220:OnSubFinish4022014(arg1)
    print("OnSubFinish4022014")
    this:ClearNarratorTask()
end

function Quest40220:OnSubStart4022015(arg1)
    print("OnSubStart4022015")
    actorMgr:CreateActorWithPos("Q4022015_TriggerIn", "Actor/Gadget/Q4022015_TriggerIn", 70900002, 0, points._Q4022015_TriggerInPoint_.pos, points._Q4022015_TriggerInPoint_.rot, true, false, 20290)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc15853.id, 0, 4022015, 20, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1670.alias, true, 1)
end

function Quest40220:OnSubFinish4022015(arg1)
    print("OnSubFinish4022015")
    this:SafeDestroyQuestNpc(npcs.Npc15853.alias, 3)
    this:LightNotifyTo(npcs.Npc1670.alias, 0, true)
end

function Quest40220:OnSubStart4022012(arg1)
    print("OnSubStart4022012")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4022012, 0, 10, 1, npcs.Npc16014.id)
end

function Quest40220:OnSubFinish4022012(arg1)
    print("OnSubFinish4022012")
    this:SafeDestroyQuestNpc(npcs.Npc16014.alias, 3)
end

function Quest40220:OnSubStart4022022(arg1)
    print("OnSubStart4022022")
end

function Quest40220:OnSubFinish4022022(arg1)
    print("OnSubFinish4022022")
end

return Quest40220
