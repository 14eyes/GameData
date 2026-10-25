require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71546 = class("Quest71546", QuestActorProxy)
Quest71546.defaultAlias = "Quest71546"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71546:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71546:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7154601"] = self.OnSubStart7154601, ["7154602"] = self.OnSubStart7154602}
end

function Quest71546:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7154601"] = self.OnSubFinish7154601, ["7154602"] = self.OnSubFinish7154602}
end

function Quest71546:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71546:Start()
    print("Start")
end

function Quest71546:OnDestroy()
    print("OnDestroy")
end

function Quest71546:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71546:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71546:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Xiangling.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1308.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2204.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3210.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3211.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31181_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc17271.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31105.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2471.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31103.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31104.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4400.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31185_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1323.alias, 3)
    this:LightNotifyTo(npcs.Npc31102.alias, 0, true)
    this:LightNotifyTo(npcs.Npc31166.alias, 0, true)
    this:LightNotifyTo(npcs.Npc31167.alias, 0, true)
    this:LightNotifyTo(npcs.Npc31168.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4400.alias, 0, true)
    this:CancelStoryByQuest(147154602)
    this:RecycleAllRes()
end

function Quest71546:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71546:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest71546:OnSubStart7154601(arg1)
    print("OnSubStart7154601")
    this:CreateQuestNpc(arg1, npcs.Xiangling.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1308.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2204.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc3210.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc3211.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31181_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc17271.id, 0, false, 0)
    this:NotifyTo(npcs.Npc31102.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc31105.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc31105.alias, 71546):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc2471.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31103.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc31103.alias, 71546):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc31104.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc4400.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31185_1.id, 0, false, 0)
    this:NotifyTo(npcs.Npc31166.alias, 1, true)
    this:NotifyTo(npcs.Npc31167.alias, 1, true)
    this:NotifyTo(npcs.Npc31168.alias, 1, true)
end

function Quest71546:OnSubFinish7154601(arg1)
    print("OnSubFinish7154601")
    this:NpcDestroyImmediately(3, npcs.Xiangling.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1308.alias)
    this:NpcDestroyImmediately(3, npcs.Npc2204.alias)
    this:NpcDestroyImmediately(3, npcs.Npc3210.alias)
    this:NpcDestroyImmediately(3, npcs.Npc3211.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31181_1.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17271.alias)
    this:LightNotifyTo(npcs.Npc31102.alias, 0, true)
    this:NpcDestroyImmediately(3, npcs.Npc31105.alias)
    this:NpcDestroyImmediately(3, npcs.Npc2471.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31103.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31104.alias)
    this:NpcDestroyImmediately(3, npcs.Npc4400.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31185_1.alias)
    this:LightNotifyTo(npcs.Npc31166.alias, 0, true)
    this:LightNotifyTo(npcs.Npc31167.alias, 0, true)
    this:LightNotifyTo(npcs.Npc31168.alias, 0, true)
end

function Quest71546:OnSubStart7154602(arg1)
    print("OnSubStart7154602")
    this:CreateQuestNpc(arg1, npcs.Npc1323.id, 0, false, 0)
    this:NotifyTo(npcs.Npc4400.alias, 1, true)
end

function Quest71546:OnSubFinish7154602(arg1)
    print("OnSubFinish7154602")
    this:LightNotifyTo(npcs.Npc4400.alias, 0, true)
    this:DeployStoryByQuest(147154602)
end

return Quest71546
