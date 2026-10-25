require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71669 = class("Quest71669", QuestActorProxy)
Quest71669.defaultAlias = "Quest71669"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71669:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71669:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7166901"] = self.OnSubStart7166901}
end

function Quest71669:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7166901"] = self.OnSubFinish7166901}
end

function Quest71669:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71669:Start()
    print("Start")
end

function Quest71669:OnDestroy()
    print("OnDestroy")
end

function Quest71669:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71669:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71669:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30673.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30672.alias, 3)
end

function Quest71669:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest71669:OnSubStart7166901(arg1)
    print("OnSubStart7166901")
    this:CreateQuestNpc(arg1, npcs.Npc30673.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30672.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30672.alias, 71669):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30672.alias, 71669):DisableInteeHeadCtrl(true)
end

function Quest71669:OnSubFinish7166901(arg1)
    print("OnSubFinish7166901")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30673.alias)
    this:SafeDestroyQuestNpc(npcs.Npc30672.alias, 3)
end

return Quest71669
