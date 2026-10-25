require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23023 = class("Quest23023", QuestActorProxy)
Quest23023.defaultAlias = "Quest23023"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest23023:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest23023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2302301"] = self.OnSubStart2302301,
        ["2302302"] = self.OnSubStart2302302,
        ["2302304"] = self.OnSubStart2302304,
        ["2302303"] = self.OnSubStart2302303,
        ["2302305"] = self.OnSubStart2302305,
        ["2302306"] = self.OnSubStart2302306
    }
end

function Quest23023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2302301"] = self.OnSubFinish2302301,
        ["2302302"] = self.OnSubFinish2302302,
        ["2302304"] = self.OnSubFinish2302304,
        ["2302303"] = self.OnSubFinish2302303,
        ["2302305"] = self.OnSubFinish2302305,
        ["2302306"] = self.OnSubFinish2302306
    }
end

function Quest23023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23023:Start()
    print("Start")
end

function Quest23023:OnDestroy()
    print("OnDestroy")
end

function Quest23023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23023:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4079Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4080Data.alias, 3)
end

function Quest23023:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23023:OnSubStart2302301(arg1)
    print("OnSubStart2302301")
    self:CreateQuestNpc(arg1, npcs.Npc4079Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4080Data.id, 2)
end

function Quest23023:OnSubFinish2302301(arg1)
    print("OnSubFinish2302301")
end

function Quest23023:OnSubStart2302302(arg1)
    print("OnSubStart2302302")
end

function Quest23023:OnSubFinish2302302(arg1)
    print("OnSubFinish2302302")
end

function Quest23023:OnSubStart2302304(arg1)
    print("OnSubStart2302304")
end

function Quest23023:OnSubFinish2302304(arg1)
    print("OnSubFinish2302304")
end

function Quest23023:OnSubStart2302303(arg1)
    print("OnSubStart2302303")
end

function Quest23023:OnSubFinish2302303(arg1)
    print("OnSubFinish2302303")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4079Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4080Data.alias)
end

function Quest23023:OnSubStart2302305(arg1)
    print("OnSubStart2302305")
end

function Quest23023:OnSubFinish2302305(arg1)
    print("OnSubFinish2302305")
end

function Quest23023:OnSubStart2302306(arg1)
    print("OnSubStart2302306")
end

function Quest23023:OnSubFinish2302306(arg1)
    print("OnSubFinish2302306")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4079Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4080Data.alias)
end

return Quest23023
