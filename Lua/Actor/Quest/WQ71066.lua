require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71066 = class("Quest71066", QuestActorProxy)
Quest71066.defaultAlias = "Quest71066"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71066:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71066:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7106605"] = self.OnSubStart7106605,
        ["7106601"] = self.OnSubStart7106601,
        ["7106602"] = self.OnSubStart7106602,
        ["7106603"] = self.OnSubStart7106603,
        ["7106606"] = self.OnSubStart7106606,
        ["7106607"] = self.OnSubStart7106607,
        ["7106604"] = self.OnSubStart7106604
    }
end

function Quest71066:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7106605"] = self.OnSubFinish7106605,
        ["7106601"] = self.OnSubFinish7106601,
        ["7106602"] = self.OnSubFinish7106602,
        ["7106603"] = self.OnSubFinish7106603,
        ["7106606"] = self.OnSubFinish7106606,
        ["7106607"] = self.OnSubFinish7106607,
        ["7106604"] = self.OnSubFinish7106604
    }
end

function Quest71066:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71066:Start()
    print("Start")
end

function Quest71066:OnDestroy()
    print("OnDestroy")
end

function Quest71066:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71066:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71066:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71066:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71066:OnSubStart7106605(arg1)
    print("OnSubStart7106605")
end

function Quest71066:OnSubFinish7106605(arg1)
    print("OnSubFinish7106605")
end

function Quest71066:OnSubStart7106601(arg1)
    print("OnSubStart7106601")
end

function Quest71066:OnSubFinish7106601(arg1)
    print("OnSubFinish7106601")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2154Data.alias)
end

function Quest71066:OnSubStart7106602(arg1)
    print("OnSubStart7106602")
end

function Quest71066:OnSubFinish7106602(arg1)
    print("OnSubFinish7106602")
end

function Quest71066:OnSubStart7106603(arg1)
    print("OnSubStart7106603")
end

function Quest71066:OnSubFinish7106603(arg1)
    print("OnSubFinish7106603")
end

function Quest71066:OnSubStart7106606(arg1)
    print("OnSubStart7106606")
end

function Quest71066:OnSubFinish7106606(arg1)
    print("OnSubFinish7106606")
end

function Quest71066:OnSubStart7106607(arg1)
    print("OnSubStart7106607")
end

function Quest71066:OnSubFinish7106607(arg1)
    print("OnSubFinish7106607")
end

function Quest71066:OnSubStart7106604(arg1)
    print("OnSubStart7106604")
end

function Quest71066:OnSubFinish7106604(arg1)
    print("OnSubFinish7106604")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2154Data.alias)
end

return Quest71066
