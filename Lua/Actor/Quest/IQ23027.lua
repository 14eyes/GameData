require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23027 = class("Quest23027", QuestActorProxy)
Quest23027.defaultAlias = "Quest23027"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23027:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23027:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2302701"] = self.OnSubStart2302701,
        ["2302702"] = self.OnSubStart2302702,
        ["2302703"] = self.OnSubStart2302703,
        ["2302704"] = self.OnSubStart2302704,
        ["2302705"] = self.OnSubStart2302705,
        ["2302706"] = self.OnSubStart2302706,
        ["2302707"] = self.OnSubStart2302707,
        ["2302708"] = self.OnSubStart2302708,
        ["2302709"] = self.OnSubStart2302709,
        ["2302710"] = self.OnSubStart2302710,
        ["2302711"] = self.OnSubStart2302711
    }
end

function Quest23027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2302701"] = self.OnSubFinish2302701,
        ["2302702"] = self.OnSubFinish2302702,
        ["2302703"] = self.OnSubFinish2302703,
        ["2302704"] = self.OnSubFinish2302704,
        ["2302705"] = self.OnSubFinish2302705,
        ["2302706"] = self.OnSubFinish2302706,
        ["2302707"] = self.OnSubFinish2302707,
        ["2302708"] = self.OnSubFinish2302708,
        ["2302709"] = self.OnSubFinish2302709,
        ["2302710"] = self.OnSubFinish2302710,
        ["2302711"] = self.OnSubFinish2302711
    }
end

function Quest23027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2302702"] = self.OnSubFailed2302702,
        ["2302705"] = self.OnSubFailed2302705,
        ["2302708"] = self.OnSubFailed2302708
    }
end

function Quest23027:Start()
    print("Start")
end

function Quest23027:OnDestroy()
    print("OnDestroy")
end

function Quest23027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23027:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4178Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12690Data.alias, 3)
    actorMgr:DestroyEntityActor("Q2302702Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2302705Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2302708Trigger", 3, false)
end

function Quest23027:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23027:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest23027:OnSubStart2302701(arg1)
    print("OnSubStart2302701")
    self:CreateQuestNpc(arg1, npcs.Npc4178Data.id, 1)
end

function Quest23027:OnSubFinish2302701(arg1)
    print("OnSubFinish2302701")
end

function Quest23027:OnSubStart2302702(arg1)
    print("OnSubStart2302702")
    actorMgr:CreateActorWithPos("Q2302702Trigger", "Actor/Gadget/Q2302702Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2302702_guide").pos, sceneData:GetDummyPoint(3, "Q2302702_guide").rot, true, false, 3)
end

function Quest23027:OnSubFinish2302702(arg1)
    print("OnSubFinish2302702")
    self:NarratorOnlyTask(datas.NarratorTable02, nil, "")
end

function Quest23027:OnSubFailed2302702(arg1)
    print("OnSubFailed2302702")
    self:ActorDestroy("Q2302702Trigger")
end

function Quest23027:OnSubStart2302703(arg1)
    print("OnSubStart2302703")
end

function Quest23027:OnSubFinish2302703(arg1)
    print("OnSubFinish2302703")
    self:NarratorOnlyTask(datas.NarratorTable03, nil, "")
end

function Quest23027:OnSubStart2302704(arg1)
    print("OnSubStart2302704")
    self:CreateQuestNpc(arg1, npcs.Npc12690Data.id, 1)
end

function Quest23027:OnSubFinish2302704(arg1)
    print("OnSubFinish2302704")
    self:SafeDestroyQuestNpc(npcs.Npc12690Data.alias, 3)
end

function Quest23027:OnSubStart2302705(arg1)
    print("OnSubStart2302705")
    actorMgr:CreateActorWithPos("Q2302705Trigger", "Actor/Gadget/Q2302705Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2302705_guide").pos, sceneData:GetDummyPoint(3, "Q2302705_guide").rot, true, false, 3)
end

function Quest23027:OnSubFinish2302705(arg1)
    print("OnSubFinish2302705")
    self:NarratorOnlyTask(datas.NarratorTable05, nil, "")
end

function Quest23027:OnSubFailed2302705(arg1)
    print("OnSubFailed2302705")
    self:ActorDestroy("Q2302705Trigger")
end

function Quest23027:OnSubStart2302706(arg1)
    print("OnSubStart2302706")
end

function Quest23027:OnSubFinish2302706(arg1)
    print("OnSubFinish2302706")
    self:NarratorOnlyTask(datas.NarratorTable06, nil, "")
end

function Quest23027:OnSubStart2302707(arg1)
    print("OnSubStart2302707")
    self:CreateQuestNpc(arg1, npcs.Npc12690Data.id, 1)
end

function Quest23027:OnSubFinish2302707(arg1)
    print("OnSubFinish2302707")
    self:SafeDestroyQuestNpc(npcs.Npc12690Data.alias, 3)
end

function Quest23027:OnSubStart2302708(arg1)
    print("OnSubStart2302708")
    actorMgr:CreateActorWithPos("Q2302708Trigger", "Actor/Gadget/Q2302708Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2302708_guide").pos, sceneData:GetDummyPoint(3, "Q2302708_guide").rot, true, false, 3)
end

function Quest23027:OnSubFinish2302708(arg1)
    print("OnSubFinish2302708")
    self:NarratorOnlyTask(datas.NarratorTable08, nil, "")
end

function Quest23027:OnSubFailed2302708(arg1)
    print("OnSubFailed2302708")
    self:ActorDestroy("Q2302708Trigger")
end

function Quest23027:OnSubStart2302709(arg1)
    print("OnSubStart2302709")
end

function Quest23027:OnSubFinish2302709(arg1)
    print("OnSubFinish2302709")
    self:NarratorOnlyTask(datas.NarratorTable09, nil, "")
end

function Quest23027:OnSubStart2302710(arg1)
    print("OnSubStart2302710")
    self:CreateQuestNpc(arg1, npcs.Npc12690Data.id, 1)
end

function Quest23027:OnSubFinish2302710(arg1)
    print("OnSubFinish2302710")
    self:SafeDestroyQuestNpc(npcs.Npc12690Data.alias, 3)
end

function Quest23027:OnSubStart2302711(arg1)
    print("OnSubStart2302711")
end

function Quest23027:OnSubFinish2302711(arg1)
    print("OnSubFinish2302711")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4178Data.alias)
end

return Quest23027
