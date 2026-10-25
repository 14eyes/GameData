require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40112 = class("Quest40112", QuestActorProxy)
Quest40112.defaultAlias = "Quest40112"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40112:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40112:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4011201"] = self.OnSubStart4011201,
        ["4011202"] = self.OnSubStart4011202,
        ["4011203"] = self.OnSubStart4011203,
        ["4011204"] = self.OnSubStart4011204,
        ["4011205"] = self.OnSubStart4011205,
        ["4011206"] = self.OnSubStart4011206,
        ["4011207"] = self.OnSubStart4011207
    }
end

function Quest40112:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4011201"] = self.OnSubFinish4011201,
        ["4011202"] = self.OnSubFinish4011202,
        ["4011203"] = self.OnSubFinish4011203,
        ["4011204"] = self.OnSubFinish4011204,
        ["4011205"] = self.OnSubFinish4011205,
        ["4011206"] = self.OnSubFinish4011206,
        ["4011207"] = self.OnSubFinish4011207
    }
end

function Quest40112:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40112:Start()
    print("Start")
end

function Quest40112:OnDestroy()
    print("OnDestroy")
end

function Quest40112:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40112:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40112:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.QinData.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.GaiaData.alias, 1004)
    actorMgr:DestroyEntityActor("Q4011201Finish", 1004, false)
    actorMgr:DestroyEntityActor("Q4011203Talk", 3, false)
    actorMgr:DestroyEntityActor("Q4011204Finish", 3, false)
    actorMgr:DestroyEntityActor("Q4011204kaiche", 3, false)
    actorMgr:DestroyEntityActor("Q4011206CreateKelee", 3, false)
    actorMgr:DestroyEntityActor("Q4011207CreateKelee", 10, false)
    actorMgr:DestroyEntityActor("Q4011207Kaiche", 10, false)
    this:ActorDestroy("Q4011207Talk")
    this:UnCallDelayByQuest("4011201")
    this:ActorDestroy("Q40112Finishcaidan")
end

function Quest40112:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40112:StartKaiche()
    print("StartKaiche")
    this:NarratorOnlyTaskByData(datas.kaiche1, nil, 40112)
end

function Quest40112:OnSubStart4011201(arg1)
    print("OnSubStart4011201")
    this:CreateQuestNpc(arg1, npcs.QinData.id, 1)
    actorMgr:CreateActorWithPos("Q4011201Finish", "Actor/Gadget/Q4011201Finish", 70900002, 0, sceneData:GetDummyPoint(1004, "Q4011201_N1006").pos, sceneData:GetDummyPoint(1004, "Q4011201_N1006").rot, true, false, 1004)
    this:CreateQuestNpc(arg1, npcs.Npc10090Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.GaiaData.id, 3)
    actorMgr:CreateActorWithPos("Q40112Finishcaidan", "Actor/Gadget/Q40112Finishcaidan", 70900002, 0, {x = 5.231, y = 0.038, z = 1.52}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1004)
    if self:GetQuestVar(4011201, 0) == 0 then
        this:ClearNarratorTask()
        this:UnCallDelayByQuest("4011201")
        this:CallDelayByQuest("4011201", 1, function(arg1)
            this:AfterMainPageActiveSafeCall(function(arg1)
                this:NarratorOnlyTaskByData(datas.kaiche1, function(arg1)
                    this:SetQuestVarByMainId(0, 3)
                end)

                print("startkaiche")
            end)
        end)
    end
end

function Quest40112:OnSubFinish4011201(arg1)
    print("OnSubFinish4011201")
    this:ActorDestroy("Q40112Finishcaidan")
end

function Quest40112:OnSubStart4011202(arg1)
    print("OnSubStart4011202")
    this:RequestInteraction(npcs.QinData.alias)
end

function Quest40112:OnSubFinish4011202(arg1)
    print("OnSubFinish4011202")
    this:TransmitPlayerById(arg1, 1)
    this:DestroyQuestNpcActor(npcs.QinData.alias, 1004)
    this:DestroyQuestNpcActor(npcs.Npc10090Data.alias, 1004)
    this:DestroyQuestNpcActor(npcs.GaiaData.alias, 1004)
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest40112:OnSubStart4011203(arg1)
    print("OnSubStart4011203")
    actorMgr:CreateActorWithPos("Q4011203Talk", "Actor/Gadget/Q4011203Talk", 70900002, 0, sceneData:GetDummyPoint(3, "Q4011203_N10090").pos, sceneData:GetDummyPoint(3, "Q4011203_N10090").rot, true, false, 3)
end

function Quest40112:OnSubFinish4011203(arg1)
    print("OnSubFinish4011203")
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
end

function Quest40112:OnSubStart4011204(arg1)
    print("OnSubStart4011204")
    this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 1)
    actorMgr:CreateActorWithPos("Q4011204Finish", "Actor/Gadget/Q4011204Finish", 70900002, 0, points.TPos_Q4011204Finish.pos, points.TPos_Q4011204Finish.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q4011204kaiche", "Actor/Gadget/Q4011204kaiche", 70900002, 0, points.TPos_Q4011204kaiche.pos, points.TPos_Q4011204kaiche.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1029Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1029Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest40112:OnSubFinish4011204(arg1)
    print("OnSubFinish4011204")
    this:ActionSafeCall(function(arg1)
        this:TryPauseCurAutoNarrator()
        this:ClearNarratorTask()
    end)
end

function Quest40112:OnSubStart4011205(arg1)
    print("OnSubStart4011205")
    this:RequestInteraction(npcs.Npc1051Data.alias)
end

function Quest40112:OnSubFinish4011205(arg1)
    print("OnSubFinish4011205")
    self:TransmitPlayerWithTextByQuestId(4011205, 1, {"QUEST_Message_Q3007"}, 2.5)
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1051Data.alias, 3)
    end)
end

function Quest40112:OnSubStart4011206(arg1)
    print("OnSubStart4011206")
    actorMgr:CreateActorWithPos("Q4011206CreateKelee", "Actor/Gadget/Q4011206CreateKelee", 70900002, 0, sceneData:GetDummyPoint(3, "Q4011206_N10090").pos, sceneData:GetDummyPoint(3, "Q4011206_N10090").rot, true, false, 3)
end

function Quest40112:OnSubFinish4011206(arg1)
    print("OnSubFinish4011206")
    self:TransmitPlayerWithTextByQuestId(4011206, 1, {"QUEST_Message_Q3007"}, 2.5)
end

function Quest40112:OnSubStart4011207(arg1)
    print("OnSubStart4011207")
    actorMgr:CreateActorWithPos("Q4011207Kaiche", "Actor/Gadget/Q4011207Kaiche", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011206_Transmit").pos, sceneData:GetDummyPoint(10, "Q4011206_Transmit").rot, true, false, 10)
    this:CreateQuestNpc(arg1, npcs.Npc10090Data.id, 0)
    actorMgr:CreateActorWithPos("Q4011207Talk", "Actor/Gadget/Q4011207Talk", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011207_N10090").pos, sceneData:GetDummyPoint(10, "Q4011207_N10090").rot, true, false, 10)
end

function Quest40112:OnSubFinish4011207(arg1)
    print("OnSubFinish4011207")
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 10)
    this:ActorDestroy("Q4011207Kaiche")
end

return Quest40112
