require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70023 = class("Quest70023", QuestActorProxy)
Quest70023.defaultAlias = "Quest70023"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70023:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7002301"] = self.OnSubStart7002301,
        ["7002302"] = self.OnSubStart7002302,
        ["7002303"] = self.OnSubStart7002303,
        ["7002304"] = self.OnSubStart7002304
    }
end

function Quest70023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7002301"] = self.OnSubFinish7002301,
        ["7002302"] = self.OnSubFinish7002302,
        ["7002303"] = self.OnSubFinish7002303,
        ["7002304"] = self.OnSubFinish7002304
    }
end

function Quest70023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7002301"] = self.OnSubFailed7002301,
        ["7002302"] = self.OnSubFailed7002302,
        ["7002303"] = self.OnSubFailed7002303,
        ["7002304"] = self.OnSubFailed7002304
    }
end

function Quest70023:Start()
    print("Start")
end

function Quest70023:OnDestroy()
    print("OnDestroy")
end

function Quest70023:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70023:OnMainFailed(arg1)
    print("OnMainFailed")
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70023:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70023:QiuqiuMotion(arg1)
    self:GetQuestNpcActor(npcs.Npc11008Data.alias):DoFreeStyle(11, true, nil, true, true)
end

function Quest70023:Qiuqiutick(arg1)
    self:CallDelay(10, self.QiuqiuMotion)
end

function Quest70023:OnSubStart7002301(arg1)
    print("OnSubStart7002301")
    self:CreateQuestNpc(arg1, npcs.Npc11008Data.id, 1)
    self:QiuqiuMotion()
end

function Quest70023:OnSubFinish7002301(arg1)
    print("OnSubFinish7002301")
end

function Quest70023:OnSubFailed7002301(arg1)
    print("OnSubFailed7002301")
end

function Quest70023:OnSubStart7002302(arg1)
    print("OnSubStart7002302")
end

function Quest70023:OnSubFinish7002302(arg1)
    print("OnSubFinish7002302")
end

function Quest70023:OnSubFailed7002302(arg1)
    print("OnSubFailed7002302")
end

function Quest70023:OnSubStart7002303(arg1)
    print("OnSubStart7002303")
end

function Quest70023:OnSubFinish7002303(arg1)
    print("OnSubFinish7002303")
end

function Quest70023:OnSubFailed7002303(arg1)
    print("OnSubFailed7002303")
end

function Quest70023:OnSubStart7002304(arg1)
    print("OnSubStart7002304")
end

function Quest70023:OnSubFinish7002304(arg1)
    print("OnSubFinish7002304")
end

function Quest70023:OnSubFailed7002304(arg1)
    print("OnSubFailed7002304")
end

return Quest70023
