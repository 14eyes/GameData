require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73009 = class("Quest73009", QuestActorProxy)
Quest73009.defaultAlias = "Quest73009"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73009:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7300901"] = self.OnSubStart7300901,
        ["7300902"] = self.OnSubStart7300902,
        ["7300903"] = self.OnSubStart7300903,
        ["7300904"] = self.OnSubStart7300904,
        ["7300905"] = self.OnSubStart7300905,
        ["7300906"] = self.OnSubStart7300906
    }
end

function Quest73009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7300901"] = self.OnSubFinish7300901,
        ["7300902"] = self.OnSubFinish7300902,
        ["7300903"] = self.OnSubFinish7300903,
        ["7300904"] = self.OnSubFinish7300904,
        ["7300905"] = self.OnSubFinish7300905,
        ["7300906"] = self.OnSubFinish7300906
    }
end

function Quest73009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73009:Start()
    print("Start")
end

function Quest73009:OnDestroy()
    print("OnDestroy")
end

function Quest73009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73009:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73009:OnSubStart7300901(arg1)
    print("OnSubStart7300901")
    self:CreateQuestNpc(arg1, npcs.Npc20647Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20813Data.id, 2)
end

function Quest73009:OnSubFinish7300901(arg1)
    print("OnSubFinish7300901")
    self:SafeDestroyQuestNpc(npcs.Npc20647Data.alias, 3)
end

function Quest73009:OnSubStart7300902(arg1)
    print("OnSubStart7300902")
    self:CreateQuestNpc(arg1, npcs.Npc20648Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20648Data.alias):ShowNpcWithLevelTagId(38, false)
end

function Quest73009:OnSubFinish7300902(arg1)
    print("OnSubFinish7300902")
    self:SafeDestroyQuestNpc(npcs.Npc20648Data.alias, 3)
end

function Quest73009:OnSubStart7300903(arg1)
    print("OnSubStart7300903")
end

function Quest73009:OnSubFinish7300903(arg1)
    print("OnSubFinish7300903")
    self:SafeDestroyQuestNpc(npcs.Npc20813Data.alias, 3)
end

function Quest73009:OnSubStart7300904(arg1)
    print("OnSubStart7300904")
end

function Quest73009:OnSubFinish7300904(arg1)
    print("OnSubFinish7300904")
end

function Quest73009:OnSubStart7300905(arg1)
    print("OnSubStart7300905")
    self:CreateQuestNpc(arg1, npcs.Npc20813Data.id, 1)
end

function Quest73009:OnSubFinish7300905(arg1)
    print("OnSubFinish7300905")
    self:SafeDestroyQuestNpc(npcs.Npc20813Data.alias, 3)
end

function Quest73009:OnSubStart7300906(arg1)
    print("OnSubStart7300906")
    self:CreateQuestNpc(arg1, npcs.Npc20648Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20648Data.alias):ShowNpcWithLevelTagId(38, false)
end

function Quest73009:OnSubFinish7300906(arg1)
    print("OnSubFinish7300906")
    self:SafeDestroyQuestNpc(npcs.Npc20648Data.alias, 3)
end

return Quest73009
