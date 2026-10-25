require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70554 = class("Quest70554", QuestActorProxy)
Quest70554.defaultAlias = "Quest70554"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70554:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70554:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7055401"] = self.OnSubStart7055401}
end

function Quest70554:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7055401"] = self.OnSubFinish7055401}
end

function Quest70554:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70554:Start()
    print("Start")
end

function Quest70554:OnDestroy()
    print("OnDestroy")
end

function Quest70554:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70554:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70554:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1663.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30970.alias, 3)
end

function Quest70554:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70554:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70554:OnSubStart7055401(arg1)
    print("OnSubStart7055401")
    this:CreateQuestNpc(arg1, npcs.Npc1663.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30970.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1663.alias, 70554):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30970.alias, 70554):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1663.alias, 70554):DoFreeStyle(1170, true, nil, true, true, false, false)
end

function Quest70554:OnSubFinish7055401(arg1)
    print("OnSubFinish7055401")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:NpcDestroyImmediately(3, npcs.Npc1663.alias)
        this:NpcDestroyImmediately(3, npcs.Npc30970.alias)
    end, function(arg1)
        this:ShowTutorialDialog(2573, nil)
    end, nil, 0, false, true)
end

return Quest70554
