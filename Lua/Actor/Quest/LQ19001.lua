require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19001 = class("Quest19001", QuestActorProxy)
Quest19001.defaultAlias = "Quest19001"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19001:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1900101"] = self.OnSubStart1900101,
        ["1900102"] = self.OnSubStart1900102,
        ["1900103"] = self.OnSubStart1900103,
        ["1900104"] = self.OnSubStart1900104,
        ["1900105"] = self.OnSubStart1900105,
        ["1900106"] = self.OnSubStart1900106,
        ["1900107"] = self.OnSubStart1900107,
        ["1900108"] = self.OnSubStart1900108,
        ["1900109"] = self.OnSubStart1900109
    }
end

function Quest19001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1900101"] = self.OnSubFinish1900101,
        ["1900102"] = self.OnSubFinish1900102,
        ["1900103"] = self.OnSubFinish1900103,
        ["1900104"] = self.OnSubFinish1900104,
        ["1900105"] = self.OnSubFinish1900105,
        ["1900106"] = self.OnSubFinish1900106,
        ["1900107"] = self.OnSubFinish1900107,
        ["1900108"] = self.OnSubFinish1900108,
        ["1900109"] = self.OnSubFinish1900109
    }
end

function Quest19001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1900101"] = self.OnSubFailed1900101,
        ["1900102"] = self.OnSubFailed1900102,
        ["1900103"] = self.OnSubFailed1900103,
        ["1900104"] = self.OnSubFailed1900104,
        ["1900105"] = self.OnSubFailed1900105,
        ["1900106"] = self.OnSubFailed1900106,
        ["1900107"] = self.OnSubFailed1900107,
        ["1900108"] = self.OnSubFailed1900108,
        ["1900109"] = self.OnSubFailed1900109
    }
end

function Quest19001:Start()
    print("Start")
end

function Quest19001:OnDestroy()
    print("OnDestroy")
end

function Quest19001:OnMainFinished(arg1)
    print("OnMainFinished")
    self:NotifyTo(npcs.Npc1471Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc147101Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q19001TriggerBaebarar01_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19001TriggerAlbert01_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19001TriggerAlbert02_.alias, 3, false)
end

function Quest19001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19001:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo(npcs.Npc1471Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc147101Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc160201Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q19001TriggerBaebarar01_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19001TriggerAlbert01_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19001TriggerAlbert02_.alias, 3, false)
end

function Quest19001:FinishSubQuest1900104()
    self:Standby()
    self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "COOP101401Babala02").rot))
    actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 1900104)
end

function Quest19001:OnSubStart1900101(arg1)
    print("OnSubStart1900101")
    self:CreateQuestNpc(arg1, npcs.Npc147101Data.id, 1)
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
    self:SetNavigationByMainId(19001, true)
end

function Quest19001:OnSubFinish1900101(arg1)
    print("OnSubFinish1900101")
end

function Quest19001:OnSubFailed1900101(arg1)
    print("OnSubFailed1900101")
end

function Quest19001:OnSubStart1900102(arg1)
    print("OnSubStart1900102")
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 1)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q19001TriggerBaebarar01_.alias, datas.Q19001TriggerBaebarar01_.script, datas.Q19001TriggerBaebarar01_.id, 0, datas.Q19001TriggerBaebarar01_.point.pos, datas.Q19001TriggerBaebarar01_.point.rot, true, false, 3)
end

function Quest19001:OnSubFinish1900102(arg1)
    print("OnSubFinish1900102")
end

function Quest19001:OnSubFailed1900102(arg1)
    print("OnSubFailed1900102")
end

function Quest19001:OnSubStart1900103(arg1)
    print("OnSubStart1900103")
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900102)
end

function Quest19001:OnSubFinish1900103(arg1)
    print("OnSubFinish1900103")
end

function Quest19001:OnSubFailed1900103(arg1)
    print("OnSubFailed1900103")
end

function Quest19001:OnSubStart1900104(arg1)
    print("OnSubStart1900104")
    self:CreateQuestNpc(arg1, npcs.Npc147101Data.id, 1)
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 2)
    self:CallDelay(2, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Coop_BarbaraData.alias, 0)
        arg1:NpcRunToRouteTask(questNpcActor, datas.RoutePointsData1900104, arg1.FinishSubQuest1900104, nil, nil, function(arg1)
            arg1:SyncPos(2)
        end)
    end)
end

function Quest19001:OnSubFinish1900104(arg1)
    print("OnSubFinish1900104")
end

function Quest19001:OnSubFailed1900104(arg1)
    print("OnSubFailed1900104")
end

function Quest19001:OnSubStart1900105(arg1)
    print("OnSubStart1900105")
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900103)
end

function Quest19001:OnSubFinish1900105(arg1)
    print("OnSubFinish1900105")
end

function Quest19001:OnSubFailed1900105(arg1)
    print("OnSubFailed1900105")
end

function Quest19001:OnSubStart1900106(arg1)
    print("OnSubStart1900106")
    self:CreateQuestNpc(arg1, npcs.Npc147101Data.id, 1)
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 2)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
end

function Quest19001:OnSubFinish1900106(arg1)
    print("OnSubFinish1900106")
end

function Quest19001:OnSubFailed1900106(arg1)
    print("OnSubFailed1900106")
end

function Quest19001:OnSubStart1900107(arg1)
    print("OnSubStart1900107")
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900104)
end

function Quest19001:OnSubFinish1900107(arg1)
    print("OnSubFinish1900107")
end

function Quest19001:OnSubFailed1900107(arg1)
    print("OnSubFailed1900107")
end

function Quest19001:OnSubStart1900108(arg1)
    print("OnSubStart1900108")
    self:CreateQuestNpc(arg1, npcs.Npc147101Data.id, 1)
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 2)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc160201Data.id, 3)
    self:NarratorOnlyTaskByData(datas.NarratorWithId19001001)
    actorMgr:CreateActorWithPos(datas.Q19001TriggerAlbert01_.alias, datas.Q19001TriggerAlbert01_.script, datas.Q19001TriggerAlbert01_.id, 0, datas.Q19001TriggerAlbert01_.point.pos, datas.Q19001TriggerAlbert01_.point.rot, true, false, 3)
    actorMgr:CreateActorWithPos(datas.Q19001TriggerAlbert02_.alias, datas.Q19001TriggerAlbert02_.script, datas.Q19001TriggerAlbert02_.id, 0, datas.Q19001TriggerAlbert02_.point.pos, datas.Q19001TriggerAlbert02_.point.rot, true, false, 3)
end

function Quest19001:OnSubFinish1900108(arg1)
    print("OnSubFinish1900108")
end

function Quest19001:OnSubFailed1900108(arg1)
    print("OnSubFailed1900108")
end

function Quest19001:OnSubStart1900109(arg1)
    print("OnSubStart1900109")
end

function Quest19001:OnSubFinish1900109(arg1)
    print("OnSubFinish1900109")
    self:NarratorOnlyTaskByData(datas.NarratorWithId19001002)
end

function Quest19001:OnSubFailed1900109(arg1)
    print("OnSubFailed1900109")
end

return Quest19001
