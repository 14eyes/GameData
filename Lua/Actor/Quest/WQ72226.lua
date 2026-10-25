require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72226 = class("Quest72226", QuestActorProxy)
Quest72226.defaultAlias = "Quest72226"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72226:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72226:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7222601"] = self.OnSubStart7222601,
        ["7222606"] = self.OnSubStart7222606,
        ["7222607"] = self.OnSubStart7222607,
        ["7222602"] = self.OnSubStart7222602,
        ["7222603"] = self.OnSubStart7222603,
        ["7222604"] = self.OnSubStart7222604,
        ["7222605"] = self.OnSubStart7222605
    }
end

function Quest72226:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7222601"] = self.OnSubFinish7222601,
        ["7222606"] = self.OnSubFinish7222606,
        ["7222607"] = self.OnSubFinish7222607,
        ["7222602"] = self.OnSubFinish7222602,
        ["7222603"] = self.OnSubFinish7222603,
        ["7222604"] = self.OnSubFinish7222604,
        ["7222605"] = self.OnSubFinish7222605
    }
end

function Quest72226:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7222601"] = self.OnSubFailed7222601,
        ["7222606"] = self.OnSubFailed7222606,
        ["7222607"] = self.OnSubFailed7222607,
        ["7222602"] = self.OnSubFailed7222602,
        ["7222603"] = self.OnSubFailed7222603,
        ["7222604"] = self.OnSubFailed7222604,
        ["7222605"] = self.OnSubFailed7222605
    }
end

function Quest72226:Start()
    print("Start")
end

function Quest72226:OnDestroy()
    print("OnDestroy")
end

function Quest72226:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72226:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72226:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72226:OnSubStart7222601(arg1)
    print("OnSubStart7222601")
    self:CreateQuestNpc(arg1, npcs.Npc20452Data.id, 1)
    actorMgr:CreateActorWithPos("Q72226Trigger", "Actor/Gadget/Q72226Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "72167_shandong").pos, sceneData:GetDummyPoint(3, "72167_shandong").rot, true, false, 3)
end

function Quest72226:OnSubFinish7222601(arg1)
    print("OnSubFinish7222601")
end

function Quest72226:OnSubFailed7222601(arg1)
    print("OnSubFailed7222601")
end

function Quest72226:OnSubStart7222606(arg1)
    print("OnSubStart7222606")
    self:CreateQuestNpc(arg1, npcs.Npc20452Data.id, 1)
end

function Quest72226:OnSubFinish7222606(arg1)
    print("OnSubFinish7222606")
end

function Quest72226:OnSubFailed7222606(arg1)
    print("OnSubFailed7222606")
end

function Quest72226:OnSubStart7222607(arg1)
    print("OnSubStart7222607")
    self:CreateQuestNpc(arg1, npcs.Npc20452Data.id, 1)
    self:PlayCutsceneIndex("7222607", function(arg1)
        arg1:FinishQuestID(false, 7222607)
    end, nil, nil, false)
end

function Quest72226:OnSubFinish7222607(arg1)
    print("OnSubFinish7222607")
end

function Quest72226:OnSubFailed7222607(arg1)
    print("OnSubFailed7222607")
end

function Quest72226:OnSubStart7222602(arg1)
    print("OnSubStart7222602")
    self:CreateQuestNpc(arg1, npcs.Npc20452Data.id, 1)
end

function Quest72226:OnSubFinish7222602(arg1)
    print("OnSubFinish7222602")
end

function Quest72226:OnSubFailed7222602(arg1)
    print("OnSubFailed7222602")
end

function Quest72226:OnSubStart7222603(arg1)
    print("OnSubStart7222603")
    self:CreateQuestNpc(arg1, npcs.Npc20452Data.id, 1)
    self:PlayCutsceneIndex("7222603", function(arg1)
        arg1:FinishQuestID(false, 7222603)
    end, nil, nil, false)
end

function Quest72226:OnSubFinish7222603(arg1)
    print("OnSubFinish7222603")
end

function Quest72226:OnSubFailed7222603(arg1)
    print("OnSubFailed7222603")
end

function Quest72226:OnSubStart7222604(arg1)
    print("OnSubStart7222604")
    self:CreateQuestNpc(arg1, npcs.Npc20452Data.id, 1)
end

function Quest72226:OnSubFinish7222604(arg1)
    print("OnSubFinish7222604")
end

function Quest72226:OnSubFailed7222604(arg1)
    print("OnSubFailed7222604")
end

function Quest72226:OnSubStart7222605(arg1)
    print("OnSubStart7222605")
    self:CreateQuestNpc(arg1, npcs.Npc20452Data.id, 1)
    self:RequestInteraction(npcs.Npc20452Data.alias)
end

function Quest72226:OnSubFinish7222605(arg1)
    print("OnSubFinish7222605")
    actorMgr:CreateActorWithPos("Q72226Trigger1", "Actor/Gadget/Q72226Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "72167_shandong").pos, sceneData:GetDummyPoint(3, "72167_shandong").rot, true, false, 3)
end

function Quest72226:OnSubFailed7222605(arg1)
    print("OnSubFailed7222605")
end

return Quest72226
