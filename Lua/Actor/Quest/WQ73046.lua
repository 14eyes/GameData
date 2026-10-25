require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73046 = class("Quest73046", QuestActorProxy)
Quest73046.defaultAlias = "Quest73046"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73046:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73046:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7304601"] = self.OnSubStart7304601,
        ["7304602"] = self.OnSubStart7304602,
        ["7304603"] = self.OnSubStart7304603,
        ["7304604"] = self.OnSubStart7304604,
        ["7304605"] = self.OnSubStart7304605
    }
end

function Quest73046:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7304601"] = self.OnSubFinish7304601,
        ["7304602"] = self.OnSubFinish7304602,
        ["7304603"] = self.OnSubFinish7304603,
        ["7304604"] = self.OnSubFinish7304604,
        ["7304605"] = self.OnSubFinish7304605
    }
end

function Quest73046:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73046:Start()
    print("Start")
end

function Quest73046:OnDestroy()
    print("OnDestroy")
end

function Quest73046:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73046:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73046:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73046:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73046:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73046:OnSubStart7304601(arg1)
    print("OnSubStart7304601")
    self:NpcCreate(arg1, npcs.Npc20661Data.id, 1)
    actorMgr:CreateActorWithPos("Q7304601jumpTrigger", "Actor/Gadget/Q7304601jumpTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7304601_jump").pos, sceneData:GetDummyPoint(3, "Q7304601_jump").rot, true, false, 3)
end

function Quest73046:OnSubFinish7304601(arg1)
    print("OnSubFinish7304601")
    self:NarratorOnlyTask(datas.Q7304603reminder, nil, "")
end

function Quest73046:OnSubStart7304602(arg1)
    print("OnSubStart7304602")
end

function Quest73046:OnSubFinish7304602(arg1)
    print("OnSubFinish7304602")
end

function Quest73046:OnSubStart7304603(arg1)
    print("OnSubStart7304603")
    actorMgr:CreateActorWithPos("Q7304603jumpTrigger", "Actor/Gadget/Q7304603jumpTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7304603_jump").pos, sceneData:GetDummyPoint(3, "Q7304603_jump").rot, true, false, 3)
end

function Quest73046:OnSubFinish7304603(arg1)
    print("OnSubFinish7304603")
end

function Quest73046:OnSubStart7304604(arg1)
    print("OnSubStart7304604")
end

function Quest73046:OnSubFinish7304604(arg1)
    print("OnSubFinish7304604")
end

function Quest73046:OnSubStart7304605(arg1)
    print("OnSubStart7304605")
end

function Quest73046:OnSubFinish7304605(arg1)
    print("OnSubFinish7304605")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20661Data.alias)
end

return Quest73046
