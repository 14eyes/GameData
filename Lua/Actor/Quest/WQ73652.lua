require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73652 = class("Quest73652", QuestActorProxy)
Quest73652.defaultAlias = "Quest73652"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73652:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73652:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7365201"] = self.OnSubStart7365201}
end

function Quest73652:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7365201"] = self.OnSubFinish7365201}
end

function Quest73652:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73652:Start()
    print("Start")
end

function Quest73652:OnDestroy()
    print("OnDestroy")
end

function Quest73652:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73652:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73652:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30226Data.alias, 3)
end

function Quest73652:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73652:OnSubStart7365201(arg1)
    print("OnSubStart7365201")
    self:CreateQuestNpc(arg1, npcs.Npc30226Data.id, 1)
end

function Quest73652:OnSubFinish7365201(arg1)
    print("OnSubFinish7365201")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc30226Data.alias)
end

return Quest73652
