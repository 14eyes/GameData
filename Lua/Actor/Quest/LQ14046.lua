require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14046 = class("Quest14046", QuestActorProxy)
Quest14046.defaultAlias = "Quest14046"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest14046:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest14046:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1404601"] = self.OnSubStart1404601,
        ["1404602"] = self.OnSubStart1404602,
        ["1404620"] = self.OnSubStart1404620,
        ["1404603"] = self.OnSubStart1404603,
        ["1404629"] = self.OnSubStart1404629,
        ["1404616"] = self.OnSubStart1404616,
        ["1404621"] = self.OnSubStart1404621,
        ["1404604"] = self.OnSubStart1404604,
        ["1404605"] = self.OnSubStart1404605,
        ["1404615"] = self.OnSubStart1404615,
        ["1404619"] = self.OnSubStart1404619,
        ["1404618"] = self.OnSubStart1404618,
        ["1404606"] = self.OnSubStart1404606,
        ["1404622"] = self.OnSubStart1404622,
        ["1404624"] = self.OnSubStart1404624,
        ["1404627"] = self.OnSubStart1404627,
        ["1404623"] = self.OnSubStart1404623,
        ["1404607"] = self.OnSubStart1404607,
        ["1404608"] = self.OnSubStart1404608,
        ["1404625"] = self.OnSubStart1404625,
        ["1404626"] = self.OnSubStart1404626,
        ["1404628"] = self.OnSubStart1404628,
        ["1404610"] = self.OnSubStart1404610,
        ["1404609"] = self.OnSubStart1404609,
        ["1404611"] = self.OnSubStart1404611,
        ["1404612"] = self.OnSubStart1404612,
        ["1404613"] = self.OnSubStart1404613,
        ["1404614"] = self.OnSubStart1404614,
        ["1404617"] = self.OnSubStart1404617
    }
end

function Quest14046:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1404601"] = self.OnSubFinish1404601,
        ["1404602"] = self.OnSubFinish1404602,
        ["1404620"] = self.OnSubFinish1404620,
        ["1404603"] = self.OnSubFinish1404603,
        ["1404629"] = self.OnSubFinish1404629,
        ["1404616"] = self.OnSubFinish1404616,
        ["1404621"] = self.OnSubFinish1404621,
        ["1404604"] = self.OnSubFinish1404604,
        ["1404605"] = self.OnSubFinish1404605,
        ["1404615"] = self.OnSubFinish1404615,
        ["1404619"] = self.OnSubFinish1404619,
        ["1404618"] = self.OnSubFinish1404618,
        ["1404606"] = self.OnSubFinish1404606,
        ["1404622"] = self.OnSubFinish1404622,
        ["1404624"] = self.OnSubFinish1404624,
        ["1404627"] = self.OnSubFinish1404627,
        ["1404623"] = self.OnSubFinish1404623,
        ["1404607"] = self.OnSubFinish1404607,
        ["1404608"] = self.OnSubFinish1404608,
        ["1404625"] = self.OnSubFinish1404625,
        ["1404626"] = self.OnSubFinish1404626,
        ["1404628"] = self.OnSubFinish1404628,
        ["1404610"] = self.OnSubFinish1404610,
        ["1404609"] = self.OnSubFinish1404609,
        ["1404611"] = self.OnSubFinish1404611,
        ["1404612"] = self.OnSubFinish1404612,
        ["1404613"] = self.OnSubFinish1404613,
        ["1404614"] = self.OnSubFinish1404614,
        ["1404617"] = self.OnSubFinish1404617
    }
end

function Quest14046:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1404620"] = self.OnSubFailed1404620}
end

function Quest14046:Start()
    print("Start")
end

function Quest14046:OnDestroy()
    print("OnDestroy")
end

function Quest14046:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14046:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14046:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14046:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1404602Trigger")
    this:ActorDestroy("Q1404604Trigger")
    this:ActorDestroy("Q1404608Trigger")
end

function Quest14046:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest14046:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest14046:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest14046:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest14046:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest14046:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest14046:DungeonRewind()
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1308.alias, 20268)
    this:SafeDestroyQuestNpc(npcs.Npc15257.alias, 20268)
    this:SafeDestroyQuestNpc(npcs.Npc15369.alias, 20268)
    this:SafeDestroyQuestNpc(npcs.Npc15370.alias, 20268)
    this:ActorDestroy("Q1404608Trigger")
    this:DestroyNpcTrigger("Q1404611N1308Trigger")
    this:DestroyNpcTrigger("Q1404609N1308Trigger")
    this:DestroyNpcTrigger("Q1404607N1308Trigger")
    this:DestroyNpcTrigger("Q1404606N1308Trigger")
    this:DestroyNpcTrigger("Q1404613N1308Trigger")
    this:UnCallDelayByQuest("Q1404613N1308CallDelay")
    this:DestroyNpcTrigger("Q1404615N130801")
    this:CancelStoryByQuest(121404625)
end

function Quest14046:OnSubStart1404601(arg1)
    print("OnSubStart1404601")
    this:CreateQuestNpc(arg1, npcs.Npc1308.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1308.alias, 14046):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest14046:OnSubFinish1404601(arg1)
    print("OnSubFinish1404601")
end

function Quest14046:OnSubStart1404602(arg1)
    print("OnSubStart1404602")
    this:CreateQuestNpc(arg1, npcs.Npc1308.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1308.alias, 14046):DoFreeStyle(8061, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q1404602Trigger", "Actor/Gadget/Q1404602Trigger", 70900002, 0, points._Q1404602TriggerPoint_.pos, points._Q1404602TriggerPoint_.rot, true, false, 1084)
    this:GetQuestNpcActor(npcs.Npc1308.alias, 14046):SitOnChair(8061, true)
    this:GetQuestNpcActor(npcs.Npc1308.alias, 14046):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
end

function Quest14046:OnSubFinish1404602(arg1)
    print("OnSubFinish1404602")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1404601, nil)
    end)
end

function Quest14046:OnSubStart1404620(arg1)
    print("OnSubStart1404620")
    this:CreateQuestNpc(arg1, npcs.Npc5053.id, 0, false, 0)
end

function Quest14046:OnSubFinish1404620(arg1)
    print("OnSubFinish1404620")
    this:SafeDestroyQuestNpc(npcs.Npc5053.alias, 3)
end

function Quest14046:OnSubFailed1404620(arg1)
    print("OnSubFailed1404620")
    this:SafeDestroyQuestNpc(npcs.Npc5053.alias, 3)
end

function Quest14046:OnSubStart1404603(arg1)
    print("OnSubStart1404603")
    this:CreateQuestNpc(arg1, npcs.Npc1308.id, 0, true, 1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1308.alias, 14046):SitOnChair(8061, true)
        this:GetQuestNpcActor(npcs.Npc1308.alias, 14046):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    end)
end

function Quest14046:OnSubFinish1404603(arg1)
    print("OnSubFinish1404603")
end

function Quest14046:OnSubStart1404629(arg1)
    print("OnSubStart1404629")
    actorUtils.FinishQuestID(false, 1404629)
end

function Quest14046:OnSubFinish1404629(arg1)
    print("OnSubFinish1404629")
end

function Quest14046:OnSubStart1404616(arg1)
    print("OnSubStart1404616")
    this:GetQuestNpcActor(npcs.Npc1308.alias, 14046):DoFreeStateTrigger()
    this:GetQuestNpcActor(npcs.Npc1308.alias, 14046):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1308.alias, 14046):CancelDefaultEmo()
    this:GetQuestNpcActor(npcs.Npc1308.alias, 14046):ForceFinishEmoSync(0)
end

function Quest14046:OnSubFinish1404616(arg1)
    print("OnSubFinish1404616")
    this:NpcDestroyImmediately(1084, npcs.Npc1308.alias)
    if this:GetSubQuestState(7466801) == 3 then
        this:TransmitPlayerByData(arg1, 4, datas.TransmitData_NowordNoSound, nil, nil, nil)
    end
end

function Quest14046:OnSubStart1404621(arg1)
    print("OnSubStart1404621")
end

function Quest14046:OnSubFinish1404621(arg1)
    print("OnSubFinish1404621")
end

function Quest14046:OnSubStart1404604(arg1)
    print("OnSubStart1404604")
    actorMgr:CreateActorWithPos("Q1404604Trigger", "Actor/Gadget/Q1404604Trigger", 70900002, 0, points._Q1404604TriggerPoint_.pos, points._Q1404604TriggerPoint_.rot, true, false, 3)
end

function Quest14046:OnSubFinish1404604(arg1)
    print("OnSubFinish1404604")
end

function Quest14046:OnSubStart1404605(arg1)
    print("OnSubStart1404605")
    this:DungeonRewind()
end

function Quest14046:OnSubFinish1404605(arg1)
    print("OnSubFinish1404605")
end

function Quest14046:OnSubStart1404615(arg1)
    print("OnSubStart1404615")
    this:CreateQuestNpc(arg1, npcs.Npc15369.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15370.id, 0, false, 0)
    this:CreateNpcWithCameraLookTrigger("Q1404615N130801", 1404615, 1308, 0, 15, 1404606, true)
end

function Quest14046:OnSubFinish1404615(arg1)
    print("OnSubFinish1404615")
    this:SafeDestroyQuestNpc(npcs.Npc1308.alias, 20268)
end

function Quest14046:OnSubStart1404619(arg1)
    print("OnSubStart1404619")
end

function Quest14046:OnSubFinish1404619(arg1)
    print("OnSubFinish1404619")
end

function Quest14046:OnSubStart1404618(arg1)
    print("OnSubStart1404618")
    this:CreateQuestNpc(arg1, npcs.Npc15257.id, 0, false, 0)
end

function Quest14046:OnSubFinish1404618(arg1)
    print("OnSubFinish1404618")
end

function Quest14046:OnSubStart1404606(arg1)
    print("OnSubStart1404606")
    this:NpcCreateWithNpcTrigger(npcs.Npc15257.id, 0, 30, 1404606)
end

function Quest14046:OnSubFinish1404606(arg1)
    print("OnSubFinish1404606")
    this:SafeDestroyQuestNpc(npcs.Npc15257.alias, 20268)
end

function Quest14046:OnSubStart1404622(arg1)
    print("OnSubStart1404622")
    this:DeployStoryByQuest(121404625)
end

function Quest14046:OnSubFinish1404622(arg1)
    print("OnSubFinish1404622")
end

function Quest14046:OnSubStart1404624(arg1)
    print("OnSubStart1404624")
end

function Quest14046:OnSubFinish1404624(arg1)
    print("OnSubFinish1404624")
end

function Quest14046:OnSubStart1404627(arg1)
    print("OnSubStart1404627")
end

function Quest14046:OnSubFinish1404627(arg1)
    print("OnSubFinish1404627")
end

function Quest14046:OnSubStart1404623(arg1)
    print("OnSubStart1404623")
    this:CreateQuestNpc(arg1, npcs.Npc15257.id, 0, false, 0)
    this:DeployStoryByQuest(121404625)
end

function Quest14046:OnSubFinish1404623(arg1)
    print("OnSubFinish1404623")
    this:SafeDestroyQuestNpc(npcs.Npc15257.alias, 20268)
end

function Quest14046:OnSubStart1404607(arg1)
    print("OnSubStart1404607")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1404607, 0, 10, 0, npcs.Npc1308.id)
    this:DeployStoryByQuest(121404625)
end

function Quest14046:OnSubFinish1404607(arg1)
    print("OnSubFinish1404607")
    this:SafeDestroyQuestNpc(npcs.Npc1308.alias, 20268)
end

function Quest14046:OnSubStart1404608(arg1)
    print("OnSubStart1404608")
    this:DeployStoryByQuest(121404625)
end

function Quest14046:OnSubFinish1404608(arg1)
    print("OnSubFinish1404608")
end

function Quest14046:OnSubStart1404625(arg1)
    print("OnSubStart1404625")
    this:CreateQuestNpc(arg1, npcs.Npc15257.id, 0, false, 0)
    this:DeployStoryByQuest(121404625)
end

function Quest14046:OnSubFinish1404625(arg1)
    print("OnSubFinish1404625")
    this:SafeDestroyQuestNpc(npcs.Npc15257.alias, 20268)
end

function Quest14046:OnSubStart1404626(arg1)
    print("OnSubStart1404626")
    this:DeployStoryByQuest(121404625)
end

function Quest14046:OnSubFinish1404626(arg1)
    print("OnSubFinish1404626")
end

function Quest14046:OnSubStart1404628(arg1)
    print("OnSubStart1404628")
end

function Quest14046:OnSubFinish1404628(arg1)
    print("OnSubFinish1404628")
end

function Quest14046:OnSubStart1404610(arg1)
    print("OnSubStart1404610")
    this:CreateQuestNpc(arg1, npcs.Npc15257.id, 0, false, 0)
    this:DeployStoryByQuest(121404625)
end

function Quest14046:OnSubFinish1404610(arg1)
    print("OnSubFinish1404610")
    this:SafeDestroyQuestNpc(npcs.Npc15257.alias, 20268)
end

function Quest14046:OnSubStart1404609(arg1)
    print("OnSubStart1404609")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1404609, 0, 20, 0, npcs.Npc1308.id)
    this:DeployStoryByQuest(121404625)
end

function Quest14046:OnSubFinish1404609(arg1)
    print("OnSubFinish1404609")
    this:SafeDestroyQuestNpc(npcs.Npc1308.alias, 20268)
end

function Quest14046:OnSubStart1404611(arg1)
    print("OnSubStart1404611")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1404611, 0, 20, 0, npcs.Npc1308.id)
    this:DeployStoryByQuest(121404625)
end

function Quest14046:OnSubFinish1404611(arg1)
    print("OnSubFinish1404611")
    this:SafeDestroyQuestNpc(npcs.Npc1308.alias, 20268)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1404603, nil)
    end)
end

function Quest14046:OnSubStart1404612(arg1)
    print("OnSubStart1404612")
    this:DeployStoryByQuest(121404625)
end

function Quest14046:OnSubFinish1404612(arg1)
    print("OnSubFinish1404612")
end

function Quest14046:OnSubStart1404613(arg1)
    print("OnSubStart1404613")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(1404613, 0, 30, 0, npcs.Npc1308.id)
    this:DeployStoryByQuest(121404625)
end

function Quest14046:OnSubFinish1404613(arg1)
    print("OnSubFinish1404613")
    this:SafeDestroyQuestNpc(npcs.Npc15369.alias, 20268)
    this:SafeDestroyQuestNpc(npcs.Npc15370.alias, 20268)
    this:CancelStoryByQuest(121404625)
end

function Quest14046:OnSubStart1404614(arg1)
    print("OnSubStart1404614")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1308.id, 0, 1404614, 5, true)
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 20268 then
                this:TransmitPlayerByData(arg1, 2, datas.TransmitData_NowordNoSound, nil, nil, nil)
            end
        end)
    end)
end

function Quest14046:OnSubFinish1404614(arg1)
    print("OnSubFinish1404614")
    this:TransmitPlayerByData(arg1, 3, datas.TransmitData_NowordNoSound, nil, nil, nil)
    globalActor:ChangeDay24Time(3, true)
end

function Quest14046:OnSubStart1404617(arg1)
    print("OnSubStart1404617")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1308.id, 0, 1404617, 15, true)
end

function Quest14046:OnSubFinish1404617(arg1)
    print("OnSubFinish1404617")
    this:SafeDestroyQuestNpc(npcs.Npc1308.alias, 3)
end

return Quest14046
