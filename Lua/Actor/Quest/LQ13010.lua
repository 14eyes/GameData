require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13010 = class("Quest13010", QuestActorProxy)
Quest13010.defaultAlias = "Quest13010"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest13010:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest13010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1301001"] = self.OnSubStart1301001,
        ["1301002"] = self.OnSubStart1301002,
        ["1301012"] = self.OnSubStart1301012,
        ["1301003"] = self.OnSubStart1301003,
        ["1301004"] = self.OnSubStart1301004,
        ["1301005"] = self.OnSubStart1301005,
        ["1301006"] = self.OnSubStart1301006,
        ["1301009"] = self.OnSubStart1301009,
        ["1301018"] = self.OnSubStart1301018,
        ["1301017"] = self.OnSubStart1301017,
        ["1301016"] = self.OnSubStart1301016,
        ["1301015"] = self.OnSubStart1301015,
        ["1301014"] = self.OnSubStart1301014,
        ["1301013"] = self.OnSubStart1301013,
        ["1301010"] = self.OnSubStart1301010,
        ["1301011"] = self.OnSubStart1301011,
        ["1301007"] = self.OnSubStart1301007,
        ["1301008"] = self.OnSubStart1301008,
        ["1301019"] = self.OnSubStart1301019
    }
end

function Quest13010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1301001"] = self.OnSubFinish1301001,
        ["1301002"] = self.OnSubFinish1301002,
        ["1301012"] = self.OnSubFinish1301012,
        ["1301003"] = self.OnSubFinish1301003,
        ["1301004"] = self.OnSubFinish1301004,
        ["1301005"] = self.OnSubFinish1301005,
        ["1301006"] = self.OnSubFinish1301006,
        ["1301009"] = self.OnSubFinish1301009,
        ["1301018"] = self.OnSubFinish1301018,
        ["1301017"] = self.OnSubFinish1301017,
        ["1301016"] = self.OnSubFinish1301016,
        ["1301015"] = self.OnSubFinish1301015,
        ["1301014"] = self.OnSubFinish1301014,
        ["1301013"] = self.OnSubFinish1301013,
        ["1301010"] = self.OnSubFinish1301010,
        ["1301011"] = self.OnSubFinish1301011,
        ["1301007"] = self.OnSubFinish1301007,
        ["1301008"] = self.OnSubFinish1301008,
        ["1301019"] = self.OnSubFinish1301019
    }
end

function Quest13010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13010:Start()
    print("Start")
end

function Quest13010:OnDestroy()
    print("OnDestroy")
end

function Quest13010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13010:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12780Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12781Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12948Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12946Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12949Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12950Data.alias, 3)
    actorMgr:DestroyEntityActor("Q13010Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q13010Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q13010Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q13010Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q13010Trigger4", 3, false)
end

function Quest13010:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13010:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest13010:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest13010:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest1301012")
        actorUtils.FinishQuestID(false, 1301012)
    end

    if arg1 == 2 then
        print("FinishSubQuest1301019")
        actorUtils.FinishQuestID(false, 1301019)
    end
end

function Quest13010:OnSubStart1301001(arg1)
    print("OnSubStart1301001")
    actorMgr:CreateActorWithPos("Q13010Trigger", "Actor/Gadget/Q13010Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1301001").pos, sceneData:GetDummyPoint(3, "Q1301001").rot, true, false, 3)
end

function Quest13010:OnSubFinish1301001(arg1)
    print("OnSubFinish1301001")
    self:ActorDestroy("Q13010Trigger")
end

function Quest13010:OnSubStart1301002(arg1)
    print("OnSubStart1301002")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1058Data.id, 1, npcs.Npc1058Data.alias)
end

function Quest13010:OnSubFinish1301002(arg1)
    print("OnSubFinish1301002")
    self:NpcDestroy(npcs.Npc1058Data.alias, 3)
end

function Quest13010:OnSubStart1301012(arg1)
    print("OnSubStart1301012")
end

function Quest13010:OnSubFinish1301012(arg1)
    print("OnSubFinish1301012")
end

function Quest13010:OnSubStart1301003(arg1)
    print("OnSubStart1301003")
end

function Quest13010:OnSubFinish1301003(arg1)
    print("OnSubFinish1301003")
end

function Quest13010:OnSubStart1301004(arg1)
    print("OnSubStart1301004")
    self:CallDelay(2, function(arg1)
        arg1:CreateQuestNpcWithTriggerBlack("1301004tri", 1301004, 1058, 1, 40, 1)
    end)
end

function Quest13010:OnSubFinish1301004(arg1)
    print("OnSubFinish1301004")
    self:NpcDestroy(npcs.Npc1058Data.alias, 3)
end

function Quest13010:OnSubStart1301005(arg1)
    print("OnSubStart1301005")
    actorMgr:CreateActorWithPos("Q13010Trigger1", "Actor/Gadget/Q13010Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "C1301006_guide").pos, sceneData:GetDummyPoint(3, "C1301006_guide").rot, true, false, 3)
end

function Quest13010:OnSubFinish1301005(arg1)
    print("OnSubFinish1301005")
    self:ActorDestroy("Q13010Trigger1")
    self:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest13010:OnSubStart1301006(arg1)
    print("OnSubStart1301006")
end

function Quest13010:OnSubFinish1301006(arg1)
    print("OnSubFinish1301006")
end

function Quest13010:OnSubStart1301009(arg1)
    print("OnSubStart1301009")
    self:CreateQuestNpcWithTriggerBlack("1301009tri", 1301009, 1058, 1, 15, 1)
end

function Quest13010:OnSubFinish1301009(arg1)
    print("OnSubFinish1301009")
    self:NpcDestroy(npcs.Npc1058Data.alias, 3)
end

function Quest13010:OnSubStart1301018(arg1)
    print("OnSubStart1301018")
end

function Quest13010:OnSubFinish1301018(arg1)
    print("OnSubFinish1301018")
end

function Quest13010:OnSubStart1301017(arg1)
    print("OnSubStart1301017")
end

function Quest13010:OnSubFinish1301017(arg1)
    print("OnSubFinish1301017")
end

function Quest13010:OnSubStart1301016(arg1)
    print("OnSubStart1301016")
end

function Quest13010:OnSubFinish1301016(arg1)
    print("OnSubFinish1301016")
end

function Quest13010:OnSubStart1301015(arg1)
    print("OnSubStart1301015")
end

function Quest13010:OnSubFinish1301015(arg1)
    print("OnSubFinish1301015")
end

function Quest13010:OnSubStart1301014(arg1)
    print("OnSubStart1301014")
    self:CreateQuestNpc(arg1, npcs.Npc12948Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12946Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12949Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12950Data.id, 4)
end

function Quest13010:OnSubFinish1301014(arg1)
    print("OnSubFinish1301014")
    self:NpcDestroy(npcs.Npc12948Data.alias, 3)
    self:NpcDestroy(npcs.Npc12946Data.alias, 3)
    self:NpcDestroy(npcs.Npc12949Data.alias, 3)
    self:NpcDestroy(npcs.Npc12950Data.alias, 3)
end

function Quest13010:OnSubStart1301013(arg1)
    print("OnSubStart1301013")
    self:CreateQuestNpcWithTriggerBlack("1301013tri", 1301013, 1058, 1, 30, 1)
end

function Quest13010:OnSubFinish1301013(arg1)
    print("OnSubFinish1301013")
end

function Quest13010:OnSubStart1301010(arg1)
    print("OnSubStart1301010")
    self:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    self:CreateQuestNpcWithTriggerBlack("1301010tri", 1301010, 1005, 1, 15, 1)
end

function Quest13010:OnSubFinish1301010(arg1)
    print("OnSubFinish1301010")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest13010:OnSubStart1301011(arg1)
    print("OnSubStart1301011")
    self:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc12780Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12780Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q13010Trigger4", "Actor/Gadget/Q13010Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q1301008_N12780").pos, sceneData:GetDummyPoint(3, "Q1301008_N12780").rot, true, false, 3)
end

function Quest13010:OnSubFinish1301011(arg1)
    print("OnSubFinish1301011")
    self:ActorDestroy("Q13010Trigger4")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId1)
    end)

    self:NpcDestroy(npcs.Npc1058Data.alias, 3)
    self:NpcDestroy(npcs.Npc12780Data.alias, 3)
end

function Quest13010:OnSubStart1301007(arg1)
    print("OnSubStart1301007")
    self:CreateQuestNpc(arg1, npcs.Npc12781Data.id, 3)
    actorMgr:CreateActorWithPos("Q13010Trigger2", "Actor/Gadget/Q13010Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q1301011").pos, sceneData:GetDummyPoint(3, "Q1301011").rot, true, false, 3)
end

function Quest13010:OnSubFinish1301007(arg1)
    print("OnSubFinish1301007")
    self:ActorDestroy("Q13010Trigger2")
end

function Quest13010:OnSubStart1301008(arg1)
    print("OnSubStart1301008")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1058Data.id, 1, npcs.Npc1058Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc12780Data.id, 2)
end

function Quest13010:OnSubFinish1301008(arg1)
    print("OnSubFinish1301008")
    self:NpcDestroy(npcs.Npc1058Data.alias, 3)
    self:NpcDestroy(npcs.Npc12780Data.alias, 3)
    self:NpcDestroy(npcs.Npc12781Data.alias, 3)
end

function Quest13010:OnSubStart1301019(arg1)
    print("OnSubStart1301019")
end

function Quest13010:OnSubFinish1301019(arg1)
    print("OnSubFinish1301019")
end

return Quest13010
