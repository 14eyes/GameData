require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19082 = class("Quest19082", QuestActorProxy)
Quest19082.defaultAlias = "Quest19082"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19082:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19082:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1908201"] = self.OnSubStart1908201,
        ["1908202"] = self.OnSubStart1908202,
        ["1908203"] = self.OnSubStart1908203,
        ["1908206"] = self.OnSubStart1908206,
        ["1908204"] = self.OnSubStart1908204,
        ["1908205"] = self.OnSubStart1908205
    }
end

function Quest19082:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1908201"] = self.OnSubFinish1908201,
        ["1908202"] = self.OnSubFinish1908202,
        ["1908203"] = self.OnSubFinish1908203,
        ["1908206"] = self.OnSubFinish1908206,
        ["1908204"] = self.OnSubFinish1908204,
        ["1908205"] = self.OnSubFinish1908205
    }
end

function Quest19082:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1908201"] = self.OnSubFailed1908201,
        ["1908202"] = self.OnSubFailed1908202,
        ["1908203"] = self.OnSubFailed1908203,
        ["1908206"] = self.OnSubFailed1908206,
        ["1908204"] = self.OnSubFailed1908204,
        ["1908205"] = self.OnSubFailed1908205
    }
end

function Quest19082:Start()
    print("Start")
end

function Quest19082:OnDestroy()
    print("OnDestroy")
end

function Quest19082:OnMainFinished(arg1)
    local actor = actorMgr:GetActor(datas.Q19082Trigger1_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor(datas.Q19082Trigger2_.alias)
    if v ~= nil then
        v:DestroySelf()
    end

    local actor2 = actorMgr:GetActor(datas.Q19082Trigger3_.alias)
    if actor2 ~= nil then
        actor2:DestroySelf()
    end
end

function Quest19082:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19082:OnMainCanceled(arg1)
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc204501Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc204901Data.alias, 3)
    self:LightNotifyTo("Npc2045", 0, true)
    self:LightNotifyTo("Npc2049", 0, true)
    local actor = actorMgr:GetActor(datas.Q19082Trigger1_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor(datas.Q19082Trigger2_.alias)
    if v ~= nil then
        v:DestroySelf()
    end

    local actor2 = actorMgr:GetActor(datas.Q19082Trigger3_.alias)
    if actor2 ~= nil then
        actor2:DestroySelf()
    end
end

function Quest19082:createNoel1()
    print("createNoel1")
    self:CreateQuestNpcById(1908202, npcs.Npc1027Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908201)
    self:RequestInteraction(npcs.Npc1027Data.alias)
end

function Quest19082:destroyMao()
    self:SafeDestroyQuestNpc(npcs.Npc204501Data.alias, 3)
    self:LightNotifyTo("Npc2045", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
end

function Quest19082:createNoel3()
    print("createNoel3")
    self:NotifyTo("Npc2049", 1, true)
    self:CreateQuestNpcById(1908205, npcs.Npc1027Data.id, 1)
    self:CreateQuestNpcById(1908205, npcs.Npc204901Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908203)
    self:RequestInteraction(npcs.Npc204901Data.alias)
end

function Quest19082:destroyNoel()
    print("destroyNoel")
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
end

function Quest19082:destorydugushuo()
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc204901Data.alias, 3)
    self:LightNotifyTo("Npc2049", 0, true)
end

function Quest19082:createNoel2()
    print("createNoel2")
    self:NotifyTo("Npc2045", 1, true)
    self:CreateQuestNpcById(1908206, npcs.Npc1027Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908202)
    self:RequestInteraction(npcs.Npc204501Data.alias)
end

function Quest19082:OnSubStart1908201(arg1)
    print("OnSubStart1908201")
    actorMgr:CreateActorWithPos(datas.Q19082Trigger1_.alias, datas.Q19082Trigger1_.script, datas.Q19082Trigger1_.id, 0, datas.Q19082Trigger1_.point.pos, datas.Q19082Trigger1_.point.rot, true, false, 3)
end

function Quest19082:OnSubFinish1908201(arg1)
    print("OnSubFinish1908201")
end

function Quest19082:OnSubFailed1908201(arg1)
    print("OnSubFailed1908201")
end

function Quest19082:OnSubStart1908202(arg1)
    print("OnSubStart1908202")
    self:ShowBlackScreen(0.5, 1, 0.5, self.createNoel1, nil, nil, "")
end

function Quest19082:OnSubFinish1908202(arg1)
    print("OnSubFinish1908202")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel, nil, nil, "")
end

function Quest19082:OnSubFailed1908202(arg1)
    print("OnSubFailed1908202")
end

function Quest19082:OnSubStart1908203(arg1)
    print("OnSubStart1908203")
    self:NotifyTo("Npc2045", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc204501Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q19082Trigger3_.alias, datas.Q19082Trigger3_.script, datas.Q19082Trigger3_.id, 0, datas.Q19082Trigger3_.point.pos, datas.Q19082Trigger3_.point.rot, true, false, 3)
end

function Quest19082:OnSubFinish1908203(arg1)
    print("OnSubFinish1908203")
end

function Quest19082:OnSubFailed1908203(arg1)
    print("OnSubFailed1908203")
end

function Quest19082:OnSubStart1908206(arg1)
    print("OnSubStart1908206")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createNoel2, nil, nil, "")
end

function Quest19082:OnSubFinish1908206(arg1)
    print("OnSubFinish1908206")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyMao, nil, nil, "")
end

function Quest19082:OnSubFailed1908206(arg1)
    print("OnSubFailed1908206")
end

function Quest19082:OnSubStart1908204(arg1)
    print("OnSubStart1908204")
    actorMgr:CreateActorWithPos(datas.Q19082Trigger2_.alias, datas.Q19082Trigger2_.script, datas.Q19082Trigger2_.id, 0, datas.Q19082Trigger2_.point.pos, datas.Q19082Trigger2_.point.rot, true, false, 3)
    self:NotifyTo("Npc2049", 1, true)
end

function Quest19082:OnSubFinish1908204(arg1)
    print("OnSubFinish1908204")
end

function Quest19082:OnSubFailed1908204(arg1)
    print("OnSubFailed1908204")
end

function Quest19082:OnSubStart1908205(arg1)
    print("OnSubStart1908205")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createNoel3, nil, nil, "")
end

function Quest19082:OnSubFinish1908205(arg1)
    print("OnSubFinish1908205")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destorydugushuo, nil, nil, "")
end

function Quest19082:OnSubFailed1908205(arg1)
    print("OnSubFailed1908205")
end

return Quest19082
