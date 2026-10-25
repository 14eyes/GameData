require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70522 = class("Quest70522", QuestActorProxy)
Quest70522.defaultAlias = "Quest70522"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70522:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70522:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7052201"] = self.OnSubStart7052201,
        ["7052205"] = self.OnSubStart7052205,
        ["7052204"] = self.OnSubStart7052204,
        ["7052202"] = self.OnSubStart7052202,
        ["7052206"] = self.OnSubStart7052206,
        ["7052203"] = self.OnSubStart7052203
    }
end

function Quest70522:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7052201"] = self.OnSubFinish7052201,
        ["7052205"] = self.OnSubFinish7052205,
        ["7052204"] = self.OnSubFinish7052204,
        ["7052202"] = self.OnSubFinish7052202,
        ["7052206"] = self.OnSubFinish7052206,
        ["7052203"] = self.OnSubFinish7052203
    }
end

function Quest70522:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70522:Start()
    print("Start")
end

function Quest70522:OnDestroy()
    print("OnDestroy")
end

function Quest70522:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70522:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70522:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc30238Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30236Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7052205Trigger", 3, false)
end

function Quest70522:OnSubStart7052201(arg1)
    print("OnSubStart7052201")
end

function Quest70522:OnSubFinish7052201(arg1)
    print("OnSubFinish7052201")
end

function Quest70522:OnSubStart7052205(arg1)
    print("OnSubStart7052205")
    self:CreateQuestNpc(arg1, npcs.Npc30238Data.id, 1)
    actorMgr:CreateActorWithPos("Q7052205Trigger", "Actor/Gadget/Q7052205Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7052201_N30238").pos, sceneData:GetDummyPoint(3, "Q7052201_N30238").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc30238Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest70522:OnSubFinish7052205(arg1)
    print("OnSubFinish7052205")
end

function Quest70522:OnSubStart7052204(arg1)
    print("OnSubStart7052204")
end

function Quest70522:OnSubFinish7052204(arg1)
    print("OnSubFinish7052204")
end

function Quest70522:OnSubStart7052202(arg1)
    print("OnSubStart7052202")
    self:CreateQuestNpc(arg1, npcs.Npc30236Data.id, 1)
end

function Quest70522:OnSubFinish7052202(arg1)
    print("OnSubFinish7052202")
end

function Quest70522:OnSubStart7052206(arg1)
    print("OnSubStart7052206")
end

function Quest70522:OnSubFinish7052206(arg1)
    print("OnSubFinish7052206")
    self:SafeDestroyQuestNpc(npcs.Npc30236Data.alias, 3)
end

function Quest70522:OnSubStart7052203(arg1)
    print("OnSubStart7052203")
end

function Quest70522:OnSubFinish7052203(arg1)
    print("OnSubFinish7052203")
    self:SafeDestroyQuestNpc(npcs.Npc30238Data.alias, 3)
end

return Quest70522
