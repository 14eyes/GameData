require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72227 = class("Quest72227", QuestActorProxy)
Quest72227.defaultAlias = "Quest72227"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72227:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72227:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7222706"] = self.OnSubStart7222706,
        ["7222701"] = self.OnSubStart7222701,
        ["7222707"] = self.OnSubStart7222707,
        ["7222708"] = self.OnSubStart7222708,
        ["7222702"] = self.OnSubStart7222702,
        ["7222703"] = self.OnSubStart7222703,
        ["7222704"] = self.OnSubStart7222704,
        ["7222705"] = self.OnSubStart7222705
    }
end

function Quest72227:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7222706"] = self.OnSubFinish7222706,
        ["7222701"] = self.OnSubFinish7222701,
        ["7222707"] = self.OnSubFinish7222707,
        ["7222708"] = self.OnSubFinish7222708,
        ["7222702"] = self.OnSubFinish7222702,
        ["7222703"] = self.OnSubFinish7222703,
        ["7222704"] = self.OnSubFinish7222704,
        ["7222705"] = self.OnSubFinish7222705
    }
end

function Quest72227:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7222706"] = self.OnSubFailed7222706,
        ["7222701"] = self.OnSubFailed7222701,
        ["7222707"] = self.OnSubFailed7222707,
        ["7222708"] = self.OnSubFailed7222708,
        ["7222702"] = self.OnSubFailed7222702,
        ["7222703"] = self.OnSubFailed7222703,
        ["7222704"] = self.OnSubFailed7222704,
        ["7222705"] = self.OnSubFailed7222705
    }
end

function Quest72227:Start()
    print("Start")
end

function Quest72227:OnDestroy()
    print("OnDestroy")
end

function Quest72227:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72227:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72227:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72227:OnSubStart7222706(arg1)
    print("OnSubStart7222706")
end

function Quest72227:OnSubFinish7222706(arg1)
    print("OnSubFinish7222706")
end

function Quest72227:OnSubFailed7222706(arg1)
    print("OnSubFailed7222706")
end

function Quest72227:OnSubStart7222701(arg1)
    print("OnSubStart7222701")
    self:CreateQuestNpc(arg1, npcs.Npc20453Data.id, 1)
    actorMgr:CreateActorWithPos("Q72227Trigger", "Actor/Gadget/Q72227Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "72167_langwo").pos, sceneData:GetDummyPoint(3, "72167_langwo").rot, true, false, 3)
end

function Quest72227:OnSubFinish7222701(arg1)
    print("OnSubFinish7222701")
end

function Quest72227:OnSubFailed7222701(arg1)
    print("OnSubFailed7222701")
end

function Quest72227:OnSubStart7222707(arg1)
    print("OnSubStart7222707")
    self:CreateQuestNpc(arg1, npcs.Npc20453Data.id, 1)
end

function Quest72227:OnSubFinish7222707(arg1)
    print("OnSubFinish7222707")
end

function Quest72227:OnSubFailed7222707(arg1)
    print("OnSubFailed7222707")
end

function Quest72227:OnSubStart7222708(arg1)
    print("OnSubStart7222708")
    self:CreateQuestNpc(arg1, npcs.Npc20453Data.id, 1)
    self:PlayCutsceneIndex("7222708", function(arg1)
        arg1:FinishQuestID(false, 7222708)
    end, nil, nil, false)
end

function Quest72227:OnSubFinish7222708(arg1)
    print("OnSubFinish7222708")
end

function Quest72227:OnSubFailed7222708(arg1)
    print("OnSubFailed7222708")
end

function Quest72227:OnSubStart7222702(arg1)
    print("OnSubStart7222702")
    self:CreateQuestNpc(arg1, npcs.Npc20453Data.id, 1)
end

function Quest72227:OnSubFinish7222702(arg1)
    print("OnSubFinish7222702")
end

function Quest72227:OnSubFailed7222702(arg1)
    print("OnSubFailed7222702")
end

function Quest72227:OnSubStart7222703(arg1)
    print("OnSubStart7222703")
    self:CreateQuestNpc(arg1, npcs.Npc20453Data.id, 1)
    self:PlayCutsceneIndex("7222703", function(arg1)
        arg1:FinishQuestID(false, 7222703)
    end, nil, nil, false)
end

function Quest72227:OnSubFinish7222703(arg1)
    print("OnSubFinish7222703")
end

function Quest72227:OnSubFailed7222703(arg1)
    print("OnSubFailed7222703")
end

function Quest72227:OnSubStart7222704(arg1)
    print("OnSubStart7222704")
    self:CreateQuestNpc(arg1, npcs.Npc20453Data.id, 1)
end

function Quest72227:OnSubFinish7222704(arg1)
    print("OnSubFinish7222704")
end

function Quest72227:OnSubFailed7222704(arg1)
    print("OnSubFailed7222704")
end

function Quest72227:OnSubStart7222705(arg1)
    print("OnSubStart7222705")
    self:CreateQuestNpc(arg1, npcs.Npc20453Data.id, 1)
    self:RequestInteraction(npcs.Npc20453Data.alias)
end

function Quest72227:OnSubFinish7222705(arg1)
    print("OnSubFinish7222705")
    actorMgr:CreateActorWithPos("Q72227Trigger1", "Actor/Gadget/Q72227Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "72167_langwo").pos, sceneData:GetDummyPoint(3, "72167_langwo").rot, true, false, 3)
end

function Quest72227:OnSubFailed7222705(arg1)
    print("OnSubFailed7222705")
end

return Quest72227
