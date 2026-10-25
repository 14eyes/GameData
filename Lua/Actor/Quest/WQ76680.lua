require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76680 = class("Quest76680", QuestActorProxy)
Quest76680.defaultAlias = "Quest76680"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76680:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76680:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7668001"] = self.OnSubStart7668001}
end

function Quest76680:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7668001"] = self.OnSubFinish7668001}
end

function Quest76680:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76680:Start()
    print("Start")
end

function Quest76680:OnDestroy()
    print("OnDestroy")
end

function Quest76680:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76680:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76680:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30978.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30979.alias, 3)
    this:RecycleAllRes()
end

function Quest76680:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76680:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76680:OnSubStart7668001(arg1)
    print("OnSubStart7668001")
    this:CreateQuestNpc(arg1, npcs.Npc30978.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30979.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30978.alias, 76680):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest76680:OnSubFinish7668001(arg1)
    print("OnSubFinish7668001")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:NpcDestroyImmediately(3, npcs.Npc30978.alias)
        this:NpcDestroyImmediately(3, npcs.Npc30979.alias)
    end, function(arg1)
        this:ShowTutorialDialog(2502, nil)
    end, nil, 0, false, true)
end

return Quest76680
