require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40218 = class("Quest40218", QuestActorProxy)
Quest40218.defaultAlias = "Quest40218"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40218:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40218:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4021801"] = self.OnSubStart4021801,
        ["4021802"] = self.OnSubStart4021802,
        ["4021803"] = self.OnSubStart4021803,
        ["4021804"] = self.OnSubStart4021804,
        ["4021818"] = self.OnSubStart4021818,
        ["4021820"] = self.OnSubStart4021820,
        ["4021805"] = self.OnSubStart4021805,
        ["4021817"] = self.OnSubStart4021817,
        ["4021808"] = self.OnSubStart4021808,
        ["4021806"] = self.OnSubStart4021806,
        ["4021807"] = self.OnSubStart4021807,
        ["4021819"] = self.OnSubStart4021819,
        ["4021809"] = self.OnSubStart4021809,
        ["4021812"] = self.OnSubStart4021812,
        ["4021810"] = self.OnSubStart4021810,
        ["4021811"] = self.OnSubStart4021811,
        ["4021814"] = self.OnSubStart4021814,
        ["4021813"] = self.OnSubStart4021813,
        ["4021815"] = self.OnSubStart4021815,
        ["4021816"] = self.OnSubStart4021816
    }
end

function Quest40218:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4021801"] = self.OnSubFinish4021801,
        ["4021802"] = self.OnSubFinish4021802,
        ["4021803"] = self.OnSubFinish4021803,
        ["4021804"] = self.OnSubFinish4021804,
        ["4021818"] = self.OnSubFinish4021818,
        ["4021820"] = self.OnSubFinish4021820,
        ["4021805"] = self.OnSubFinish4021805,
        ["4021817"] = self.OnSubFinish4021817,
        ["4021808"] = self.OnSubFinish4021808,
        ["4021806"] = self.OnSubFinish4021806,
        ["4021807"] = self.OnSubFinish4021807,
        ["4021819"] = self.OnSubFinish4021819,
        ["4021809"] = self.OnSubFinish4021809,
        ["4021812"] = self.OnSubFinish4021812,
        ["4021810"] = self.OnSubFinish4021810,
        ["4021811"] = self.OnSubFinish4021811,
        ["4021814"] = self.OnSubFinish4021814,
        ["4021813"] = self.OnSubFinish4021813,
        ["4021815"] = self.OnSubFinish4021815,
        ["4021816"] = self.OnSubFinish4021816
    }
end

function Quest40218:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4021818"] = self.OnSubFailed4021818,
        ["4021805"] = self.OnSubFailed4021805,
        ["4021817"] = self.OnSubFailed4021817,
        ["4021808"] = self.OnSubFailed4021808,
        ["4021806"] = self.OnSubFailed4021806,
        ["4021807"] = self.OnSubFailed4021807,
        ["4021819"] = self.OnSubFailed4021819,
        ["4021809"] = self.OnSubFailed4021809,
        ["4021812"] = self.OnSubFailed4021812,
        ["4021814"] = self.OnSubFailed4021814
    }
end

function Quest40218:Start()
    print("Start")
end

function Quest40218:OnDestroy()
    print("OnDestroy")
end

function Quest40218:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40218:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40218:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
    this:SafeDestroyQuestNpc(npcs.NPC20088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16014.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15854.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15853.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 20290)
    this:SafeDestroyQuestNpc(npcs.Npc16290.alias, 3)
    this:ActorDestroy("Q4021816_TriggerIn")
    this:ActorDestroy("Q4021809_TriggerIn")
    this:ActorDestroy("Q4021814_TriggerIn01")
    this:ActorDestroy("Q4021814_TriggerIn02")
    this:ActorDestroy("Q4021815_TriggerIn")
    this:ActorDestroy("Q4021814_TriggerIn03")
    this:ActorDestroy("Q4021818_TriggerOut")
    this:DestroyNpcTrigger("Q4021802N1098Trigger")
    this:DestroyNpcTrigger("Q4021803N16014Trigger")
    this:DestroyNpcTrigger("Q4021804N1095Trigger")
    this:DestroyNpcTrigger("Q4021812N1098Trigger")
    this:DestroyNpcTrigger("Q4021815N1095Trigger")
    this:DestroyNpcTrigger("Q4021814N1098Trigger")
    this:DestroyNpcTrigger("Q4021816N20088Trigger")
    this:CancelStoryByQuest(134021809)
    this:CancelStoryByQuest(134021805)
    this:ActorDestroy("Q4021802_TriggerIn")
    globalActor:ResumePaimonInProfilePage({3})
end

function Quest40218:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4021816_TriggerIn")
    this:ActorDestroy("Q4021809_TriggerIn")
    this:ActorDestroy("Q4021814_TriggerIn01")
    this:ActorDestroy("Q4021814_TriggerIn02")
    this:ActorDestroy("Q4021815_TriggerIn")
    this:ActorDestroy("Q4021814_TriggerIn03")
    this:ActorDestroy("Q4021818_TriggerOut")
    globalActor:ResumePaimonInProfilePage({3})
    this:ActorDestroy("Q4021802_TriggerIn")
end

function Quest40218:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    if arg1.valueString == "Way_1" then
        this:SetQuestVarByMainId(0, 1)
        actorUtils.FinishQuestID(false, 4021805)
    else
        if arg1.valueString == "Way_2" then
            this:SetQuestVarByMainId(0, 2)
            actorUtils.FinishQuestID(false, 4021805)
        end
    end
end

function Quest40218:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40218:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40218:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest40218:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40218:OnSubStart4021801(arg1)
    print("OnSubStart4021801")
end

function Quest40218:OnSubFinish4021801(arg1)
    print("OnSubFinish4021801")
end

function Quest40218:OnSubStart4021802(arg1)
    print("OnSubStart4021802")
    this:NpcCreateWithNpcTrigger(npcs.Npc1098.id, 0, 20, 4021802)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40218):DoFreeStyle(1160, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40218):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.NPC20088.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.NPC20088.alias, 40218):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40218):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Normal01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
end

function Quest40218:OnSubFinish4021802(arg1)
    print("OnSubFinish4021802")
    this:SafeDestroyQuestNpc(npcs.NPC20088.alias, 3)
end

function Quest40218:OnSubStart4021803(arg1)
    print("OnSubStart4021803")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1098.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40218):DoFreeStyle(1280, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40218):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTrigger(npcs.Npc16014.id, 0, 10, 4021803)
end

function Quest40218:OnSubFinish4021803(arg1)
    print("OnSubFinish4021803")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16014.alias, 3)
end

function Quest40218:OnSubStart4021804(arg1)
    print("OnSubStart4021804")
    this:NpcCreateWithNpcTrigger(npcs.Npc1095.id, 0, 20, 4021804)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 40218):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15854.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40218):DoFreeStyle(4412, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40218):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15853.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40218):DoFreeStyle(4433, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40218):DisableInteeHeadCtrl(true)
end

function Quest40218:OnSubFinish4021804(arg1)
    print("OnSubFinish4021804")
end

function Quest40218:OnSubStart4021818(arg1)
    print("OnSubStart4021818")
    this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 40218):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 40218):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1098.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40218):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40218):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15853.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40218):DoFreeStyle(1160, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40218):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15854.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40218):DoFreeStyle(4412, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40218):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16290.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16290.alias, 40218):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16290.alias, 40218):DisableInteeHeadCtrl(true)
    this:ActionSafeCall(function(arg1)
        globalActor:DisablePaimonInProfilePage({3})
        actorMgr:CreateActorWithPos("Q4021818_TriggerOut", "Actor/Gadget/Q4021818_TriggerOut", 70900002, 0, points._Q4021818_TriggerOutPoint_.pos, points._Q4021818_TriggerOutPoint_.rot, true, false, 3)
    end)
end

function Quest40218:OnSubFinish4021818(arg1)
    print("OnSubFinish4021818")
    this:SafeDestroyQuestNpc(npcs.Npc15854.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16290.alias, 3)
    this:PlayerEnterDungeonWithData(1721, 1270, 4021818, 1, datas.PlayerEnterDungeonData, nil, nil)
    globalActor:ResumePaimonInProfilePage({3})
    this:ActorDestroy("Q4021818_TriggerOut")
end

function Quest40218:OnSubFailed4021818(arg1)
    print("OnSubFailed4021818")
    globalActor:ResumePaimonInProfilePage({3})
    this:ActorDestroy("Q4021818_TriggerOut")
    this:SafeDestroyQuestNpc(npcs.Npc16290.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
end

function Quest40218:OnSubStart4021820(arg1)
    print("OnSubStart4021820")
    this:GetQuestNpcActor(npcs.Npc1095.alias, 40218):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 40218):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40218):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40218):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40218):DoFreeStyle(1160, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15853.alias, 40218):DisableInteeHeadCtrl(true)
end

function Quest40218:OnSubFinish4021820(arg1)
    print("OnSubFinish4021820")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15853.alias, 3)
end

function Quest40218:OnSubStart4021805(arg1)
    print("OnSubStart4021805")
    this:DeployStoryByQuest(134021805)
end

function Quest40218:OnSubFinish4021805(arg1)
    print("OnSubFinish4021805")
end

function Quest40218:OnSubFailed4021805(arg1)
    print("OnSubFailed4021805")
    this:CancelStoryByQuest(134021805)
end

function Quest40218:OnSubStart4021817(arg1)
    print("OnSubStart4021817")
end

function Quest40218:OnSubFinish4021817(arg1)
    print("OnSubFinish4021817")
end

function Quest40218:OnSubFailed4021817(arg1)
    print("OnSubFailed4021817")
    this:CancelStoryByQuest(134021805)
end

function Quest40218:OnSubStart4021808(arg1)
    print("OnSubStart4021808")
end

function Quest40218:OnSubFinish4021808(arg1)
    print("OnSubFinish4021808")
    this:CancelStoryByQuest(134021805)
end

function Quest40218:OnSubFailed4021808(arg1)
    print("OnSubFailed4021808")
    this:CancelStoryByQuest(134021805)
end

function Quest40218:OnSubStart4021806(arg1)
    print("OnSubStart4021806")
end

function Quest40218:OnSubFinish4021806(arg1)
    print("OnSubFinish4021806")
end

function Quest40218:OnSubFailed4021806(arg1)
    print("OnSubFailed4021806")
    this:CancelStoryByQuest(134021805)
    if false then
    end
end

function Quest40218:OnSubStart4021807(arg1)
    print("OnSubStart4021807")
end

function Quest40218:OnSubFinish4021807(arg1)
    print("OnSubFinish4021807")
    this:CancelStoryByQuest(134021805)
end

function Quest40218:OnSubFailed4021807(arg1)
    print("OnSubFailed4021807")
    this:CancelStoryByQuest(134021805)
end

function Quest40218:OnSubStart4021819(arg1)
    print("OnSubStart4021819")
    this:CancelStoryByQuest(134021805)
    this:ClearNarratorTask()
    actorUtils.FinishQuestID(false, 4021819)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(134021809)
    end)
end

function Quest40218:OnSubFinish4021819(arg1)
    print("OnSubFinish4021819")
    this:CancelStoryByQuest(134021805)
end

function Quest40218:OnSubFailed4021819(arg1)
    print("OnSubFailed4021819")
    this:CancelStoryByQuest(134021809)
end

function Quest40218:OnSubStart4021809(arg1)
    print("OnSubStart4021809")
    actorMgr:CreateActorWithPos("Q4021809_TriggerIn", "Actor/Gadget/Q4021809_TriggerIn", 70900002, 0, points._Q4021809_TriggerInPoint_.pos, points._Q4021809_TriggerInPoint_.rot, true, false, 20290)
    this:DeployStoryByQuest(134021809)
end

function Quest40218:OnSubFinish4021809(arg1)
    print("OnSubFinish4021809")
    this:QuestNarratorTask(datas.NarratorWithId_4021809, nil)
    this:ActorDestroy("Q4021809_TriggerIn")
end

function Quest40218:OnSubFailed4021809(arg1)
    print("OnSubFailed4021809")
    this:CancelStoryByQuest(134021809)
    this:ActorDestroy("Q4021809_TriggerIn")
end

function Quest40218:OnSubStart4021812(arg1)
    print("OnSubStart4021812")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4021812, 0, 5, 1, npcs.Npc1098.id)
    this:DeployStoryByQuest(134021809)
end

function Quest40218:OnSubFinish4021812(arg1)
    print("OnSubFinish4021812")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 20290)
    this:ClearNarratorTask()
end

function Quest40218:OnSubFailed4021812(arg1)
    print("OnSubFailed4021812")
    this:CancelStoryByQuest(134021809)
    this:ClearNarratorTask()
end

function Quest40218:OnSubStart4021810(arg1)
    print("OnSubStart4021810")
end

function Quest40218:OnSubFinish4021810(arg1)
    print("OnSubFinish4021810")
end

function Quest40218:OnSubStart4021811(arg1)
    print("OnSubStart4021811")
end

function Quest40218:OnSubFinish4021811(arg1)
    print("OnSubFinish4021811")
end

function Quest40218:OnSubStart4021814(arg1)
    print("OnSubStart4021814")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4021814, 0, 5, 1, npcs.Npc1098.id)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4021814_03, nil)
    end)

    actorMgr:CreateActorWithPos("Q4021814_TriggerIn01", "Actor/Gadget/Q4021814_TriggerIn01", 70900002, 0, points._Q4021814_TriggerIn01Point_.pos, points._Q4021814_TriggerIn01Point_.rot, true, false, 20290)
    actorMgr:CreateActorWithPos("Q4021814_TriggerIn02", "Actor/Gadget/Q4021814_TriggerIn02", 70900002, 0, points._Q4021814_TriggerIn02Point_.pos, points._Q4021814_TriggerIn02Point_.rot, true, false, 20290)
    actorMgr:CreateActorWithPos("Q4021814_TriggerIn03", "Actor/Gadget/Q4021814_TriggerIn03", 70900002, 0, points._Q4021814_TriggerIn03Point_.pos, points._Q4021814_TriggerIn03Point_.rot, true, false, 20290)
    this:DeployStoryByQuest(134021809)
end

function Quest40218:OnSubFinish4021814(arg1)
    print("OnSubFinish4021814")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 20290)
    this:CancelStoryByQuest(134021809)
    this:ActorDestroy("Q4021814_TriggerIn01")
    this:ActorDestroy("Q4021814_TriggerIn02")
    this:ActorDestroy("Q4021814_TriggerIn03")
    this:ClearNarratorTask()
end

function Quest40218:OnSubFailed4021814(arg1)
    print("OnSubFailed4021814")
    this:CancelStoryByQuest(134021809)
    this:ActorDestroy("Q4021814_TriggerIn03")
    this:ActorDestroy("Q4021814_TriggerIn01")
    this:ActorDestroy("Q4021814_TriggerIn02")
    this:ClearNarratorTask()
end

function Quest40218:OnSubStart4021813(arg1)
    print("OnSubStart4021813")
    actorUtils.FinishQuestID(false, 4021813)
    this:CancelStoryByQuest(134021809)
end

function Quest40218:OnSubFinish4021813(arg1)
    print("OnSubFinish4021813")
end

function Quest40218:OnSubStart4021815(arg1)
    print("OnSubStart4021815")
    this:NpcCreateWithNpcTrigger(npcs.Npc1095.id, 0, 8, 4021815)
    this:CreateQuestNpc(arg1, npcs.Npc15854.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15853.id, 0, false, 0)
    if sceneData.currSceneID == 20290 then
        this:TransmitPlayerWithQuestIdByData(4021815, 1, datas.Q4021815_TransmitData, nil, nil, nil)
    end
end

function Quest40218:OnSubFinish4021815(arg1)
    print("OnSubFinish4021815")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15854.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15853.alias, 3)
end

function Quest40218:OnSubStart4021816(arg1)
    print("OnSubStart4021816")
    this:NpcCreateWithNpcTrigger(npcs.NPC20088.id, 0, 10, 4021816)
end

function Quest40218:OnSubFinish4021816(arg1)
    print("OnSubFinish4021816")
    this:SafeDestroyQuestNpc(npcs.NPC20088.alias, 3)
end

return Quest40218
