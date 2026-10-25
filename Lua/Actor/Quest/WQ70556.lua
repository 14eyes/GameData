require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70556 = class("Quest70556", QuestActorProxy)
Quest70556.defaultAlias = "Quest70556"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70556:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70556:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7055601"] = self.OnSubStart7055601}
end

function Quest70556:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7055601"] = self.OnSubFinish7055601}
end

function Quest70556:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70556:Start()
    print("Start")
end

function Quest70556:OnDestroy()
    print("OnDestroy")
end

function Quest70556:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70556:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70556:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30999.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30973.alias, 3)
    this:RecycleAllRes()
end

function Quest70556:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70556:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70556:OnSubStart7055601(arg1)
    print("OnSubStart7055601")
    this:CreateQuestNpc(arg1, npcs.Npc30999.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30999.alias, 70556):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc30973.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30973.alias, 70556):DisableInteeHeadCtrl(true)
end

function Quest70556:OnSubFinish7055601(arg1)
    print("OnSubFinish7055601")
    this:NpcDestroyImmediately(3, npcs.Npc30999.alias)
    this:NpcDestroyImmediately(3, npcs.Npc30973.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2566, nil)
    end)
end

return Quest70556
