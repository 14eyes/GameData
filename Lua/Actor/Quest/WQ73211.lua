require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73211 = class("Quest73211", QuestActorProxy)
Quest73211.defaultAlias = "Quest73211"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73211:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73211:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7321101"] = self.OnSubStart7321101,
        ["7321102"] = self.OnSubStart7321102,
        ["7321103"] = self.OnSubStart7321103,
        ["7321104"] = self.OnSubStart7321104,
        ["7321105"] = self.OnSubStart7321105,
        ["7321106"] = self.OnSubStart7321106,
        ["7321107"] = self.OnSubStart7321107,
        ["7321108"] = self.OnSubStart7321108,
        ["7321109"] = self.OnSubStart7321109,
        ["7321110"] = self.OnSubStart7321110
    }
end

function Quest73211:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7321101"] = self.OnSubFinish7321101,
        ["7321102"] = self.OnSubFinish7321102,
        ["7321103"] = self.OnSubFinish7321103,
        ["7321104"] = self.OnSubFinish7321104,
        ["7321105"] = self.OnSubFinish7321105,
        ["7321106"] = self.OnSubFinish7321106,
        ["7321107"] = self.OnSubFinish7321107,
        ["7321108"] = self.OnSubFinish7321108,
        ["7321109"] = self.OnSubFinish7321109,
        ["7321110"] = self.OnSubFinish7321110
    }
end

function Quest73211:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73211:Start()
    print("Start")
end

function Quest73211:OnDestroy()
    print("OnDestroy")
end

function Quest73211:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73211:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73211:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73211:OnSubStart7321101(arg1)
    print("OnSubStart7321101")
end

function Quest73211:OnSubFinish7321101(arg1)
    print("OnSubFinish7321101")
end

function Quest73211:OnSubStart7321102(arg1)
    print("OnSubStart7321102")
    self:CreateQuestNpc(arg1, npcs.Npc20886Data.id, 1)
    self:RequestInteraction(npcs.Npc20886Data.alias)
end

function Quest73211:OnSubFinish7321102(arg1)
    print("OnSubFinish7321102")
    self:SafeDestroyQuestNpc(npcs.Npc20886Data.alias, 3)
end

function Quest73211:OnSubStart7321103(arg1)
    print("OnSubStart7321103")
end

function Quest73211:OnSubFinish7321103(arg1)
    print("OnSubFinish7321103")
end

function Quest73211:OnSubStart7321104(arg1)
    print("OnSubStart7321104")
end

function Quest73211:OnSubFinish7321104(arg1)
    print("OnSubFinish7321104")
end

function Quest73211:OnSubStart7321105(arg1)
    print("OnSubStart7321105")
end

function Quest73211:OnSubFinish7321105(arg1)
    print("OnSubFinish7321105")
end

function Quest73211:OnSubStart7321106(arg1)
    print("OnSubStart7321106")
end

function Quest73211:OnSubFinish7321106(arg1)
    print("OnSubFinish7321106")
end

function Quest73211:OnSubStart7321107(arg1)
    print("OnSubStart7321107")
end

function Quest73211:OnSubFinish7321107(arg1)
    print("OnSubFinish7321107")
end

function Quest73211:OnSubStart7321108(arg1)
    print("OnSubStart7321108")
end

function Quest73211:OnSubFinish7321108(arg1)
    print("OnSubFinish7321108")
end

function Quest73211:OnSubStart7321109(arg1)
    print("OnSubStart7321109")
end

function Quest73211:OnSubFinish7321109(arg1)
    print("OnSubFinish7321109")
    self:PlayCutsceneIndex(7321110, nil, nil, nil, false)
end

function Quest73211:OnSubStart7321110(arg1)
    print("OnSubStart7321110")
end

function Quest73211:OnSubFinish7321110(arg1)
    print("OnSubFinish7321110")
end

return Quest73211
