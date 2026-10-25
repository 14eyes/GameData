require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76037 = class("Quest76037", QuestActorProxy)
Quest76037.defaultAlias = "Quest76037"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76037:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76037:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7603701"] = self.OnSubStart7603701,
        ["7603702"] = self.OnSubStart7603702,
        ["7603703"] = self.OnSubStart7603703,
        ["7603704"] = self.OnSubStart7603704,
        ["7603705"] = self.OnSubStart7603705,
        ["7603706"] = self.OnSubStart7603706
    }
end

function Quest76037:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7603701"] = self.OnSubFinish7603701,
        ["7603702"] = self.OnSubFinish7603702,
        ["7603703"] = self.OnSubFinish7603703,
        ["7603704"] = self.OnSubFinish7603704,
        ["7603705"] = self.OnSubFinish7603705,
        ["7603706"] = self.OnSubFinish7603706
    }
end

function Quest76037:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76037:Start()
    print("Start")
end

function Quest76037:OnDestroy()
    print("OnDestroy")
end

function Quest76037:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76037:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76037:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76037:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76037:OnSubStart7603701(arg1)
    print("OnSubStart7603701")
    this:CreateQuestNpc(arg1, npcs.Npc22175.id, 0, false, 0)
end

function Quest76037:OnSubFinish7603701(arg1)
    print("OnSubFinish7603701")
    this:SafeDestroyQuestNpc(npcs.Npc22175.alias, 1204)
end

function Quest76037:OnSubStart7603702(arg1)
    print("OnSubStart7603702")
end

function Quest76037:OnSubFinish7603702(arg1)
    print("OnSubFinish7603702")
end

function Quest76037:OnSubStart7603703(arg1)
    print("OnSubStart7603703")
end

function Quest76037:OnSubFinish7603703(arg1)
    print("OnSubFinish7603703")
end

function Quest76037:OnSubStart7603704(arg1)
    print("OnSubStart7603704")
end

function Quest76037:OnSubFinish7603704(arg1)
    print("OnSubFinish7603704")
end

function Quest76037:OnSubStart7603705(arg1)
    print("OnSubStart7603705")
end

function Quest76037:OnSubFinish7603705(arg1)
    print("OnSubFinish7603705")
end

function Quest76037:OnSubStart7603706(arg1)
    print("OnSubStart7603706")
end

function Quest76037:OnSubFinish7603706(arg1)
    print("OnSubFinish7603706")
end

return Quest76037
