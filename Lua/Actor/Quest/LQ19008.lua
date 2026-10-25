require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19008 = class("Quest19008", QuestActorProxy)
Quest19008.defaultAlias = "Quest19008"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19008:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1900801"] = self.OnSubStart1900801,
        ["1900802"] = self.OnSubStart1900802,
        ["1900803"] = self.OnSubStart1900803,
        ["1900804"] = self.OnSubStart1900804
    }
end

function Quest19008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1900801"] = self.OnSubFinish1900801,
        ["1900802"] = self.OnSubFinish1900802,
        ["1900803"] = self.OnSubFinish1900803,
        ["1900804"] = self.OnSubFinish1900804
    }
end

function Quest19008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1900801"] = self.OnSubFailed1900801,
        ["1900802"] = self.OnSubFailed1900802,
        ["1900803"] = self.OnSubFailed1900803,
        ["1900804"] = self.OnSubFailed1900804
    }
end

function Quest19008:Start()
    print("Start")
end

function Quest19008:OnDestroy()
    print("OnDestroy")
end

function Quest19008:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10802Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q19008Trigger1900803_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19008Trigger1900801_.alias, 3, false)
end

function Quest19008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19008:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10802Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q19008Trigger1900803_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19008Trigger1900801_.alias, 3, false)
end

function Quest19008:OnSubStart1900801(arg1)
    print("OnSubStart1900801")
    self:CreateQuestNpc(arg1, npcs.Npc10802Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q19008Trigger1900801_.alias, datas.Q19008Trigger1900801_.script, datas.Q19008Trigger1900801_.id, 0, datas.Q19008Trigger1900801_.point.pos, datas.Q19008Trigger1900801_.point.rot, true, false, 3)
end

function Quest19008:OnSubFinish1900801(arg1)
    print("OnSubFinish1900801")
end

function Quest19008:OnSubFailed1900801(arg1)
    print("OnSubFailed1900801")
end

function Quest19008:OnSubStart1900802(arg1)
    print("OnSubStart1900802")
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900801)
end

function Quest19008:OnSubFinish1900802(arg1)
    print("OnSubFinish1900802")
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10802Data.alias, 3)
    self:TryPauseCurAutoNarrator()
end

function Quest19008:OnSubFailed1900802(arg1)
    print("OnSubFailed1900802")
end

function Quest19008:OnSubStart1900803(arg1)
    print("OnSubStart1900803")
    actorMgr:CreateActorWithPos(datas.Q19008Trigger1900803_.alias, datas.Q19008Trigger1900803_.script, datas.Q19008Trigger1900803_.id, 0, datas.Q19008Trigger1900803_.point.pos, datas.Q19008Trigger1900803_.point.rot, true, false, 3)
end

function Quest19008:OnSubFinish1900803(arg1)
    print("OnSubFinish1900803")
end

function Quest19008:OnSubFailed1900803(arg1)
    print("OnSubFailed1900803")
end

function Quest19008:OnSubStart1900804(arg1)
    print("OnSubStart1900804")
    self:ShowBlackScreen(0.2, 1, 0.2, nil, nil, nil, "")
    self:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900802)
    self:RequestInteraction(npcs.Coop_BarbaraData.alias)
end

function Quest19008:OnSubFinish1900804(arg1)
    print("OnSubFinish1900804")
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
end

function Quest19008:OnSubFailed1900804(arg1)
    print("OnSubFailed1900804")
end

return Quest19008
