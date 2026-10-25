require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72202 = class("Quest72202", QuestActorProxy)
Quest72202.defaultAlias = "Quest72202"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72202:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72202:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7220201"] = self.OnSubStart7220201,
        ["7220202"] = self.OnSubStart7220202,
        ["7220203"] = self.OnSubStart7220203
    }
end

function Quest72202:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7220201"] = self.OnSubFinish7220201,
        ["7220202"] = self.OnSubFinish7220202,
        ["7220203"] = self.OnSubFinish7220203
    }
end

function Quest72202:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7220201"] = self.OnSubFailed7220201,
        ["7220202"] = self.OnSubFailed7220202,
        ["7220203"] = self.OnSubFailed7220203
    }
end

function Quest72202:Start()
    print("Start")
end

function Quest72202:OnDestroy()
    print("OnDestroy")
end

function Quest72202:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72202:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72202:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72202:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72202:OnSubStart7220201(arg1)
    print("OnSubStart7220201")
    self:CreateQuestNpc(arg1, npcs.Npc20424Data.id, 1)
end

function Quest72202:OnSubFinish7220201(arg1)
    print("OnSubFinish7220201")
end

function Quest72202:OnSubFailed7220201(arg1)
    print("OnSubFailed7220201")
end

function Quest72202:OnSubStart7220202(arg1)
    print("OnSubStart7220202")
    self:CreateQuestNpc(arg1, npcs.Npc20424Data.id, 1)
end

function Quest72202:OnSubFinish7220202(arg1)
    print("OnSubFinish7220202")
end

function Quest72202:OnSubFailed7220202(arg1)
    print("OnSubFailed7220202")
end

function Quest72202:OnSubStart7220203(arg1)
    print("OnSubStart7220203")
    self:CreateQuestNpc(arg1, npcs.Npc20424Data.id, 1)
end

function Quest72202:OnSubFinish7220203(arg1)
    print("OnSubFinish7220203")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20424Data.alias)
end

function Quest72202:OnSubFailed7220203(arg1)
    print("OnSubFailed7220203")
end

return Quest72202
