require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77674 = class("Quest77674", QuestActorProxy)
Quest77674.defaultAlias = "Quest77674"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest77674:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest77674:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7767401"] = self.OnSubStart7767401}
end

function Quest77674:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7767401"] = self.OnSubFinish7767401}
end

function Quest77674:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77674:Start()
    print("Start")
end

function Quest77674:OnDestroy()
    print("OnDestroy")
end

function Quest77674:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77674:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77674:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc7540.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc17015.alias, 3)
    this:BanCrowdNpc(3712, 8, datas.InstanceIDList, false, true)
    this:RecycleAllRes()
end

function Quest77674:OnMainPaused(arg1)
    print("OnMainPaused")
    this:BanCrowdNpc(3712, 8, datas.InstanceIDList, false, true)
end

function Quest77674:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77674:OnSubStart7767401(arg1)
    print("OnSubStart7767401")
    this:CreateQuestNpc(arg1, npcs.Npc7540.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc17015.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17015.alias, 77674):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc7540.alias, 77674):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc17015.alias, 77674):DisableInteeHeadCtrl(true)
    this:BanCrowdNpc(3712, 8, datas.InstanceIDList, true, true)
end

function Quest77674:OnSubFinish7767401(arg1)
    print("OnSubFinish7767401")
    this:NpcDestroyImmediately(3, npcs.Npc7540.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17015.alias)
    this:BanCrowdNpc(3712, 8, datas.InstanceIDList, false, true)
end

return Quest77674
