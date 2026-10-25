require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72280 = class("Quest72280", QuestActorProxy)
Quest72280.defaultAlias = "Quest72280"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72280:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72280:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7228018"] = self.OnSubStart7228018,
        ["7228001"] = self.OnSubStart7228001,
        ["7228019"] = self.OnSubStart7228019,
        ["7228002"] = self.OnSubStart7228002,
        ["7228003"] = self.OnSubStart7228003,
        ["7228016"] = self.OnSubStart7228016,
        ["7228004"] = self.OnSubStart7228004,
        ["7228005"] = self.OnSubStart7228005,
        ["7228006"] = self.OnSubStart7228006,
        ["7228011"] = self.OnSubStart7228011,
        ["7228017"] = self.OnSubStart7228017,
        ["7228007"] = self.OnSubStart7228007,
        ["7228008"] = self.OnSubStart7228008,
        ["7228009"] = self.OnSubStart7228009,
        ["7228010"] = self.OnSubStart7228010,
        ["7228012"] = self.OnSubStart7228012,
        ["7228013"] = self.OnSubStart7228013,
        ["7228015"] = self.OnSubStart7228015,
        ["7228014"] = self.OnSubStart7228014
    }
end

function Quest72280:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7228018"] = self.OnSubFinish7228018,
        ["7228001"] = self.OnSubFinish7228001,
        ["7228019"] = self.OnSubFinish7228019,
        ["7228002"] = self.OnSubFinish7228002,
        ["7228003"] = self.OnSubFinish7228003,
        ["7228016"] = self.OnSubFinish7228016,
        ["7228004"] = self.OnSubFinish7228004,
        ["7228005"] = self.OnSubFinish7228005,
        ["7228006"] = self.OnSubFinish7228006,
        ["7228011"] = self.OnSubFinish7228011,
        ["7228017"] = self.OnSubFinish7228017,
        ["7228007"] = self.OnSubFinish7228007,
        ["7228008"] = self.OnSubFinish7228008,
        ["7228009"] = self.OnSubFinish7228009,
        ["7228010"] = self.OnSubFinish7228010,
        ["7228012"] = self.OnSubFinish7228012,
        ["7228013"] = self.OnSubFinish7228013,
        ["7228015"] = self.OnSubFinish7228015,
        ["7228014"] = self.OnSubFinish7228014
    }
end

function Quest72280:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72280:Start()
    print("Start")
end

function Quest72280:OnDestroy()
    print("OnDestroy")
end

function Quest72280:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72280:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72280:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1038Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1040Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3082Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20572Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20573Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20574Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20575Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20570Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20571Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1036Data.alias, 3)
    actorMgr:DestroyEntityActor("Q72280Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q72280Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q72280Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q72280Trigger4", 3, false)
    self:ActionSafeCall(function(arg1)
        arg1:HideBargainLikingBar(6)
    end)

    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest72280:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72280:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72280:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest72280:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest72280:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest7228016")
        actorUtils.FinishQuestID(false, 7228016)
    elseif arg1 == 2 then
        print("FinishSubQuest7228014")
        actorUtils.FinishQuestID(false, 7228014)
    elseif arg1 == 3 then
        print("FinishSubQuest7228019")
        actorUtils.FinishQuestID(false, 7228019)
    end
end

function Quest72280:OnSubStart7228018(arg1)
    print("OnSubStart7228018")
end

function Quest72280:OnSubFinish7228018(arg1)
    print("OnSubFinish7228018")
end

function Quest72280:OnSubStart7228001(arg1)
    print("OnSubStart7228001")
    self:NpcCreate(arg1, npcs.Npc1038Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1038Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc3082Data.id, 3)
    self:NpcCreate(arg1, npcs.Npc20570Data.id, 4)
    self:NpcCreate(arg1, npcs.Npc20571Data.id, 5)
    actorMgr:CreateActorWithPos("Q72280Trigger3", "Actor/Gadget/Q72280Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q7228001_N10000005").pos, sceneData:GetDummyPoint(3, "Q7228001_N10000005").rot, true, false, 3)
end

function Quest72280:OnSubFinish7228001(arg1)
    print("OnSubFinish7228001")
    self:NpcDestroy(npcs.Npc1038Data.alias, 3)
    self:NpcDestroy(npcs.Npc1040Data.alias, 3)
    self:NpcDestroy(npcs.Npc3082Data.alias, 3)
    self:NpcDestroy(npcs.Npc20570Data.alias, 3)
    self:NpcDestroy(npcs.Npc20571Data.alias, 3)
    self:ActorDestroy("Q72280Trigger3")
end

function Quest72280:OnSubStart7228019(arg1)
    print("OnSubStart7228019")
end

function Quest72280:OnSubFinish7228019(arg1)
    print("OnSubFinish7228019")
end

function Quest72280:OnSubStart7228002(arg1)
    print("OnSubStart7228002")
end

function Quest72280:OnSubFinish7228002(arg1)
    print("OnSubFinish7228002")
end

function Quest72280:OnSubStart7228003(arg1)
    print("OnSubStart7228003")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1040Data.id, 1, npcs.Npc1040Data.alias)
end

function Quest72280:OnSubFinish7228003(arg1)
    print("OnSubFinish7228003")
    self:NpcDestroy(npcs.Npc1040Data.alias, 3)
end

function Quest72280:OnSubStart7228016(arg1)
    print("OnSubStart7228016")
end

function Quest72280:OnSubFinish7228016(arg1)
    print("OnSubFinish7228016")
end

function Quest72280:OnSubStart7228004(arg1)
    print("OnSubStart7228004")
    self:NpcCreate(arg1, npcs.Npc20572Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20572Data.alias):DoFreeStyle(1240, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc20573Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest72280:OnSubFinish7228004(arg1)
    print("OnSubFinish7228004")
end

function Quest72280:OnSubStart7228005(arg1)
    print("OnSubStart7228005")
    self:GetQuestNpcActor(npcs.Npc20572Data.alias):DoFreeStyle(1240, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc20573Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20573Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest72280:OnSubFinish7228005(arg1)
    print("OnSubFinish7228005")
end

function Quest72280:OnSubStart7228006(arg1)
    print("OnSubStart7228006")
    self:GetQuestNpcActor(npcs.Npc20572Data.alias):DoFreeStyle(1240, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc20573Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc20574Data.id, 2)
end

function Quest72280:OnSubFinish7228006(arg1)
    print("OnSubFinish7228006")
end

function Quest72280:OnSubStart7228011(arg1)
    print("OnSubStart7228011")
end

function Quest72280:OnSubFinish7228011(arg1)
    print("OnSubFinish7228011")
end

function Quest72280:OnSubStart7228017(arg1)
    print("OnSubStart7228017")
    self:NpcCreate(arg1, npcs.Npc1040Data.id, 1)
    actorMgr:CreateActorWithPos("Q72280Trigger2", "Actor/Gadget/Q72280Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q7227801_guide").pos, sceneData:GetDummyPoint(3, "Q7227801_guide").rot, true, false, 3)
end

function Quest72280:OnSubFinish7228017(arg1)
    print("OnSubFinish7228017")
    self:NpcDestroy(npcs.Npc1040Data.alias, 3)
    self:ActorDestroy("Q72280Trigger2")
end

function Quest72280:OnSubStart7228007(arg1)
    print("OnSubStart7228007")
    self:NpcCreate(arg1, npcs.Npc3082Data.id, 2)
    self:NpcCreate(arg1, npcs.Npc20572Data.id, 3)
    self:NpcCreate(arg1, npcs.Npc20573Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc20572Data.alias):DoFreeStateTrigger()
    self:GetQuestNpcActor(npcs.Npc20573Data.alias):DoFreeStateTrigger()
end

function Quest72280:OnSubFinish7228007(arg1)
    print("OnSubFinish7228007")
    self:NpcDestroy(npcs.Npc1040Data.alias, 3)
    self:NpcDestroy(npcs.Npc20572Data.alias, 3)
    self:NpcDestroy(npcs.Npc20573Data.alias, 3)
end

function Quest72280:OnSubStart7228008(arg1)
    print("OnSubStart7228008")
    self:NpcCreate(arg1, npcs.Npc20574Data.id, 3)
end

function Quest72280:OnSubFinish7228008(arg1)
    print("OnSubFinish7228008")
    self:NpcDestroy(npcs.Npc1038Data.alias, 3)
    self:NpcDestroy(npcs.Npc1040Data.alias, 3)
    self:NpcDestroy(npcs.Npc20574Data.alias, 3)
end

function Quest72280:OnSubStart7228009(arg1)
    print("OnSubStart7228009")
    self:NpcCreate(arg1, npcs.Npc20575Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc20575Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q72280Trigger4", "Actor/Gadget/Q72280Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7228009").pos, sceneData:GetDummyPoint(3, "guide_Q7228009").rot, true, false, 3)
end

function Quest72280:OnSubFinish7228009(arg1)
    print("OnSubFinish7228009")
    self:ActorDestroy("Q72280Trigger4")
end

function Quest72280:OnSubStart7228010(arg1)
    print("OnSubStart7228010")
end

function Quest72280:OnSubFinish7228010(arg1)
    print("OnSubFinish7228010")
end

function Quest72280:OnSubStart7228012(arg1)
    print("OnSubStart7228012")
end

function Quest72280:OnSubFinish7228012(arg1)
    print("OnSubFinish7228012")
    self:NpcDestroy(npcs.Npc1038Data.alias, 3)
    self:NpcDestroy(npcs.Npc1040Data.alias, 3)
    self:NpcDestroy(npcs.Npc20575Data.alias, 3)
    self:NpcDestroy(npcs.Npc20570Data.alias, 3)
    self:NpcDestroy(npcs.Npc20571Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)
end

function Quest72280:OnSubStart7228013(arg1)
    print("OnSubStart7228013")
end

function Quest72280:OnSubFinish7228013(arg1)
    print("OnSubFinish7228013")
    self:NpcDestroy(npcs.Npc1040Data.alias, 3)
end

function Quest72280:OnSubStart7228015(arg1)
    print("OnSubStart7228015")
    self:NpcCreate(arg1, npcs.Npc1038Data.id, 1)
    actorMgr:CreateActorWithPos("Q72280Trigger1", "Actor/Gadget/Q72280Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7228014").pos, sceneData:GetDummyPoint(3, "guide_Q7228014").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc1038Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest72280:OnSubFinish7228015(arg1)
    print("OnSubFinish7228015")
    self:NpcDestroy(npcs.Npc1038Data.alias, 3)
    self:NpcDestroy(npcs.Npc3082Data.alias, 3)
    self:NpcDestroy(npcs.Npc1036Data.alias, 3)
    self:ActorDestroy("Q72280Trigger1")
end

function Quest72280:OnSubStart7228014(arg1)
    print("OnSubStart7228014")
end

function Quest72280:OnSubFinish7228014(arg1)
    print("OnSubFinish7228014")
end

return Quest72280
