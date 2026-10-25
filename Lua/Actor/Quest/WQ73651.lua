require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73651 = class("Quest73651", QuestActorProxy)
Quest73651.defaultAlias = "Quest73651"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73651:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73651:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7365101"] = self.OnSubStart7365101}
end

function Quest73651:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7365101"] = self.OnSubFinish7365101}
end

function Quest73651:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73651:Start()
    print("Start")
end

function Quest73651:OnDestroy()
    print("OnDestroy")
end

function Quest73651:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73651:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73651:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30226Data.alias, 3)
end

function Quest73651:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73651:OnSubStart7365101(arg1)
    print("OnSubStart7365101")
    self:CreateQuestNpc(arg1, npcs.Npc30226Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc30226Data.alias)
    questNpcActor:DoFreeStyle(1120, true, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest73651:OnSubFinish7365101(arg1)
    print("OnSubFinish7365101")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc30226Data.alias)
    self:CallDelay(3, function(arg1)
        arg1:ShowTutorialDialog(860)
    end)
end

return Quest73651
