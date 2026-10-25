require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72111 = class("Quest72111", QuestActorProxy)
Quest72111.defaultAlias = "Quest72111"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72111:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72111:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7211104"] = self.OnSubStart7211104,
        ["7211101"] = self.OnSubStart7211101,
        ["7211105"] = self.OnSubStart7211105,
        ["7211102"] = self.OnSubStart7211102,
        ["7211106"] = self.OnSubStart7211106,
        ["7211103"] = self.OnSubStart7211103,
        ["7211108"] = self.OnSubStart7211108,
        ["7211107"] = self.OnSubStart7211107
    }
end

function Quest72111:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7211104"] = self.OnSubFinish7211104,
        ["7211101"] = self.OnSubFinish7211101,
        ["7211105"] = self.OnSubFinish7211105,
        ["7211102"] = self.OnSubFinish7211102,
        ["7211106"] = self.OnSubFinish7211106,
        ["7211103"] = self.OnSubFinish7211103,
        ["7211108"] = self.OnSubFinish7211108,
        ["7211107"] = self.OnSubFinish7211107
    }
end

function Quest72111:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7211104"] = self.OnSubFailed7211104,
        ["7211101"] = self.OnSubFailed7211101,
        ["7211105"] = self.OnSubFailed7211105,
        ["7211102"] = self.OnSubFailed7211102,
        ["7211106"] = self.OnSubFailed7211106,
        ["7211103"] = self.OnSubFailed7211103,
        ["7211108"] = self.OnSubFailed7211108,
        ["7211107"] = self.OnSubFailed7211107
    }
end

function Quest72111:Start()
    print("Start")
end

function Quest72111:OnDestroy()
    print("OnDestroy")
end

function Quest72111:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72111:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72111:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72111:interaction()
    print("interaction")
    self:RequestInteraction(npcs.Npc3151Data.alias)
end

function Quest72111:DelPaimon04()
    if actorMgr:GetActor(clientData.ActorAlias):GetSubQuestState(7211101) ~= 3 then
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end
end

function Quest72111:DelPaimon05()
    if actorMgr:GetActor(clientData.ActorAlias):GetSubQuestState(7211102) ~= 3 then
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end
end

function Quest72111:DelPaimon06()
    if actorMgr:GetActor(clientData.ActorAlias):GetSubQuestState(7211103) ~= 3 then
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end
end

function Quest72111:OnSubStart7211104(arg1)
    print("OnSubStart7211104")
    self:CreateQuestNpc(arg1, npcs.Npc3151Data.id, 1)
end

function Quest72111:OnSubFinish7211104(arg1)
    print("OnSubFinish7211104")
    self:DelPaimon04()
end

function Quest72111:OnSubFailed7211104(arg1)
    print("OnSubFailed7211104")
end

function Quest72111:OnSubStart7211101(arg1)
    print("OnSubStart7211101")
    self:CreateQuestNpc(arg1, npcs.Npc3151Data.id, 1)
end

function Quest72111:OnSubFinish7211101(arg1)
    print("OnSubFinish7211101")
end

function Quest72111:OnSubFailed7211101(arg1)
    print("OnSubFailed7211101")
end

function Quest72111:OnSubStart7211105(arg1)
    print("OnSubStart7211105")
    self:CreateQuestNpc(arg1, npcs.Npc3151Data.id, 1)
    self:RequestInteraction(npcs.Npc3151Data.alias)
end

function Quest72111:OnSubFinish7211105(arg1)
    print("OnSubFinish7211105")
    self:DelPaimon05()
end

function Quest72111:OnSubFailed7211105(arg1)
    print("OnSubFailed7211105")
end

function Quest72111:OnSubStart7211102(arg1)
    print("OnSubStart7211102")
    self:CreateQuestNpc(arg1, npcs.Npc3151Data.id, 1)
end

function Quest72111:OnSubFinish7211102(arg1)
    print("OnSubFinish7211102")
end

function Quest72111:OnSubFailed7211102(arg1)
    print("OnSubFailed7211102")
end

function Quest72111:OnSubStart7211106(arg1)
    print("OnSubStart7211106")
    self:CreateQuestNpc(arg1, npcs.Npc3151Data.id, 1)
    self:RequestInteraction(npcs.Npc3151Data.alias)
end

function Quest72111:OnSubFinish7211106(arg1)
    print("OnSubFinish7211106")
    self:DelPaimon06()
end

function Quest72111:OnSubFailed7211106(arg1)
    print("OnSubFailed7211106")
end

function Quest72111:OnSubStart7211103(arg1)
    print("OnSubStart7211103")
    self:CreateQuestNpc(arg1, npcs.Npc3151Data.id, 1)
end

function Quest72111:OnSubFinish7211103(arg1)
    print("OnSubFinish7211103")
end

function Quest72111:OnSubFailed7211103(arg1)
    print("OnSubFailed7211103")
end

function Quest72111:OnSubStart7211108(arg1)
    print("OnSubStart7211108")
end

function Quest72111:OnSubFinish7211108(arg1)
    print("OnSubFinish7211108")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72111:OnSubFailed7211108(arg1)
    print("OnSubFailed7211108")
end

function Quest72111:OnSubStart7211107(arg1)
    print("OnSubStart7211107")
    self:CreateQuestNpc(arg1, npcs.Npc3151Data.id, 1)
    self:RequestInteraction(npcs.Npc3151Data.alias)
end

function Quest72111:OnSubFinish7211107(arg1)
    print("OnSubFinish7211107")
    self:SafeDestroyQuestNpc(npcs.Npc3151Data.alias, 3)
end

function Quest72111:OnSubFailed7211107(arg1)
    print("OnSubFailed7211107")
end

return Quest72111
