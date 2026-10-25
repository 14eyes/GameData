require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73102 = class("Quest73102", QuestActorProxy)
Quest73102.defaultAlias = "Quest73102"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73102:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73102:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7310201"] = self.OnSubStart7310201,
        ["7310202"] = self.OnSubStart7310202,
        ["7310204"] = self.OnSubStart7310204,
        ["7310205"] = self.OnSubStart7310205,
        ["7310206"] = self.OnSubStart7310206,
        ["7310207"] = self.OnSubStart7310207,
        ["7310208"] = self.OnSubStart7310208,
        ["7310209"] = self.OnSubStart7310209,
        ["7310210"] = self.OnSubStart7310210,
        ["7310211"] = self.OnSubStart7310211
    }
end

function Quest73102:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7310201"] = self.OnSubFinish7310201,
        ["7310202"] = self.OnSubFinish7310202,
        ["7310204"] = self.OnSubFinish7310204,
        ["7310205"] = self.OnSubFinish7310205,
        ["7310206"] = self.OnSubFinish7310206,
        ["7310207"] = self.OnSubFinish7310207,
        ["7310208"] = self.OnSubFinish7310208,
        ["7310209"] = self.OnSubFinish7310209,
        ["7310210"] = self.OnSubFinish7310210,
        ["7310211"] = self.OnSubFinish7310211
    }
end

function Quest73102:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73102:Start()
    print("Start")
end

function Quest73102:OnDestroy()
    print("OnDestroy")
end

function Quest73102:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73102:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73102:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73102:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73102:OnSubStart7310201(arg1)
    print("OnSubStart7310201")
end

function Quest73102:OnSubFinish7310201(arg1)
    print("OnSubFinish7310201")
end

function Quest73102:OnSubStart7310202(arg1)
    print("OnSubStart7310202")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc4225Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4226Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc4227Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc4228Data.id, 4)
end

function Quest73102:OnSubFinish7310202(arg1)
    print("OnSubFinish7310202")
end

function Quest73102:OnSubStart7310204(arg1)
    print("OnSubStart7310204")
end

function Quest73102:OnSubFinish7310204(arg1)
    print("OnSubFinish7310204")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:TransmitPlayerByQuestId(7310204, 1)
        arg1:DestroyQuestNpcActor(npcs.Npc4225Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4226Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4227Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4228Data.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest73102:OnSubStart7310205(arg1)
    print("OnSubStart7310205")
end

function Quest73102:OnSubFinish7310205(arg1)
    print("OnSubFinish7310205")
end

function Quest73102:OnSubStart7310206(arg1)
    print("OnSubStart7310206")
end

function Quest73102:OnSubFinish7310206(arg1)
    print("OnSubFinish7310206")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:TransmitPlayerByQuestId(7310206, 2)
        arg1:DestroyQuestNpcActor(npcs.Npc4225Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4226Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4227Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4228Data.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest73102:OnSubStart7310207(arg1)
    print("OnSubStart7310207")
end

function Quest73102:OnSubFinish7310207(arg1)
    print("OnSubFinish7310207")
end

function Quest73102:OnSubStart7310208(arg1)
    print("OnSubStart7310208")
end

function Quest73102:OnSubFinish7310208(arg1)
    print("OnSubFinish7310208")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:TransmitPlayerByQuestId(7310208, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4225Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4226Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4227Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4228Data.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest73102:OnSubStart7310209(arg1)
    print("OnSubStart7310209")
end

function Quest73102:OnSubFinish7310209(arg1)
    print("OnSubFinish7310209")
end

function Quest73102:OnSubStart7310210(arg1)
    print("OnSubStart7310210")
end

function Quest73102:OnSubFinish7310210(arg1)
    print("OnSubFinish7310210")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:TransmitPlayerByQuestId(7310210, 4)
        arg1:DestroyQuestNpcActor(npcs.Npc4225Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4226Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4227Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4228Data.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest73102:OnSubStart7310211(arg1)
    print("OnSubStart7310211")
end

function Quest73102:OnSubFinish7310211(arg1)
    print("OnSubFinish7310211")
end

return Quest73102
