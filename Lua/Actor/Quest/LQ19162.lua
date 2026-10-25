require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19162 = class("Quest19162", QuestActorProxy)
Quest19162.defaultAlias = "Quest19162"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest19162:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest19162:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1916201"] = self.OnSubStart1916201,
        ["1916202"] = self.OnSubStart1916202,
        ["1916208"] = self.OnSubStart1916208,
        ["1916203"] = self.OnSubStart1916203,
        ["1916209"] = self.OnSubStart1916209,
        ["1916204"] = self.OnSubStart1916204,
        ["1916207"] = self.OnSubStart1916207,
        ["1916210"] = self.OnSubStart1916210,
        ["1916205"] = self.OnSubStart1916205,
        ["1916206"] = self.OnSubStart1916206
    }
end

function Quest19162:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1916201"] = self.OnSubFinish1916201,
        ["1916202"] = self.OnSubFinish1916202,
        ["1916208"] = self.OnSubFinish1916208,
        ["1916203"] = self.OnSubFinish1916203,
        ["1916209"] = self.OnSubFinish1916209,
        ["1916204"] = self.OnSubFinish1916204,
        ["1916207"] = self.OnSubFinish1916207,
        ["1916210"] = self.OnSubFinish1916210,
        ["1916205"] = self.OnSubFinish1916205,
        ["1916206"] = self.OnSubFinish1916206
    }
end

function Quest19162:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19162:Start()
    print("Start")
end

function Quest19162:OnDestroy()
    print("OnDestroy")
end

function Quest19162:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19162:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19162:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 3)
    actorMgr:DestroyEntityActor("Q19162Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19162Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q19162Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q19162Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q19162Trigger4", 3, false)
    actorMgr:DestroyEntityActor("Q19162Trigger5", 3, false)
    actorMgr:DestroyEntityActor("Q19162Trigger6", 3, false)
end

function Quest19162:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest19162:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest19162:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19162:OnSubStart1916201(arg1)
    print("OnSubStart1916201")
    actorMgr:CreateActorWithPos("Q19162Trigger", "Actor/Gadget/Q19162Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1916201_N10000005").pos, sceneData:GetDummyPoint(3, "Q1916201_N10000005").rot, true, false, 3)
    this:ActorDestroy("Q19162Trigger4")
    this:ActorDestroy("Q19162Trigger1")
    this:ActorDestroy("Q19162Trigger5")
end

function Quest19162:OnSubFinish1916201(arg1)
    print("OnSubFinish1916201")
    this:ActorDestroy("Q19162Trigger")
end

function Quest19162:OnSubStart1916202(arg1)
    print("OnSubStart1916202")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Coop_LaylaData.id, 1, npcs.Coop_LaylaData.alias)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1916202)
end

function Quest19162:OnSubFinish1916202(arg1)
    print("OnSubFinish1916202")
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)
end

function Quest19162:OnSubStart1916208(arg1)
    print("OnSubStart1916208")
    actorMgr:CreateActorWithPos("Q19162Trigger4", "Actor/Gadget/Q19162Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q1916202_guide").pos, sceneData:GetDummyPoint(3, "Q1916202_guide").rot, true, false, 3)
end

function Quest19162:OnSubFinish1916208(arg1)
    print("OnSubFinish1916208")
    this:ActorDestroy("Q19162Trigger4")
end

function Quest19162:OnSubStart1916203(arg1)
    print("OnSubStart1916203")
    actorMgr:CreateActorWithPos("Q19162Trigger1", "Actor/Gadget/Q19162Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q1916202_guide").pos, sceneData:GetDummyPoint(3, "Q1916202_guide").rot, true, false, 3)
end

function Quest19162:OnSubFinish1916203(arg1)
    print("OnSubFinish1916203")
    this:ActorDestroy("Q19162Trigger1")
end

function Quest19162:OnSubStart1916209(arg1)
    print("OnSubStart1916209")
    actorMgr:CreateActorWithPos("Q19162Trigger5", "Actor/Gadget/Q19162Trigger5", 70900002, 0, sceneData:GetDummyPoint(3, "Q1916203_guide").pos, sceneData:GetDummyPoint(3, "Q1916203_guide").rot, true, false, 3)
end

function Quest19162:OnSubFinish1916209(arg1)
    print("OnSubFinish1916209")
    this:ActorDestroy("Q19162Trigger5")
end

function Quest19162:OnSubStart1916204(arg1)
    print("OnSubStart1916204")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Coop_LaylaData.id, 1, npcs.Coop_LaylaData.alias)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1916204)
end

function Quest19162:OnSubFinish1916204(arg1)
    print("OnSubFinish1916204")
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 3)
end

function Quest19162:OnSubStart1916207(arg1)
    print("OnSubStart1916207")
    actorMgr:CreateActorWithPos("Q19162Trigger3", "Actor/Gadget/Q19162Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q1916206_guide").pos, sceneData:GetDummyPoint(3, "Q1916206_guide").rot, true, false, 3)
end

function Quest19162:OnSubFinish1916207(arg1)
    print("OnSubFinish1916207")
    this:NarratorOnlyTaskByData(datas.NarratorWithId1)
    this:ActorDestroy("Q19162Trigger3")
end

function Quest19162:OnSubStart1916210(arg1)
    print("OnSubStart1916210")
    actorMgr:CreateActorWithPos("Q19162Trigger6", "Actor/Gadget/Q19162Trigger6", 70900002, 0, points.TPos_Q19162Trigger6.pos, points.TPos_Q19162Trigger6.rot, true, false, 3)
end

function Quest19162:OnSubFinish1916210(arg1)
    print("OnSubFinish1916210")
    this:ActorDestroy("Q19162Trigger6")
end

function Quest19162:OnSubStart1916205(arg1)
    print("OnSubStart1916205")
    actorMgr:CreateActorWithPos("Q19162Trigger2", "Actor/Gadget/Q19162Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "C1916205_N10000005").pos, sceneData:GetDummyPoint(3, "C1916205_N10000005").rot, true, false, 3)
end

function Quest19162:OnSubFinish1916205(arg1)
    print("OnSubFinish1916205")
    this:ActorDestroy("Q19162Trigger2")
end

function Quest19162:OnSubStart1916206(arg1)
    print("OnSubStart1916206")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Coop_LaylaData.id, 1, npcs.Coop_LaylaData.alias)
    this:ClearNarratorTask()
    this:RequestCoopInteractionFromSubStartPoint(107401, 1916206)
end

function Quest19162:OnSubFinish1916206(arg1)
    print("OnSubFinish1916206")
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 3)
end

return Quest19162
