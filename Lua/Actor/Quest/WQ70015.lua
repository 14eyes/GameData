require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70015 = class("Quest70015", QuestActorProxy)
Quest70015.defaultAlias = "Quest70015"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70015:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7001501"] = self.OnSubStart7001501,
        ["7001502"] = self.OnSubStart7001502,
        ["7001503"] = self.OnSubStart7001503,
        ["7001504"] = self.OnSubStart7001504
    }
end

function Quest70015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7001501"] = self.OnSubFinish7001501,
        ["7001502"] = self.OnSubFinish7001502,
        ["7001503"] = self.OnSubFinish7001503,
        ["7001504"] = self.OnSubFinish7001504
    }
end

function Quest70015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7001501"] = self.OnSubFailed7001501,
        ["7001502"] = self.OnSubFailed7001502,
        ["7001503"] = self.OnSubFailed7001503,
        ["7001504"] = self.OnSubFailed7001504
    }
end

function Quest70015:Start()
    print("Start")
end

function Quest70015:OnDestroy()
    print("OnDestroy")
end

function Quest70015:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70015:OnMainFailed(arg1)
    print("OnMainFailed")
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70015:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70015:QiuqiuMotion(arg1)
    self:GetQuestNpcActor(npcs.Npc11008Data.alias):DoFreeStyle(11, true, nil, true, true)
end

function Quest70015:Qiuqiutick(arg1)
    self:CallDelay(10, self.QiuqiuMotion)
end

function Quest70015:OnSubStart7001501(arg1)
    print("OnSubStart7001501")
    self:CreateQuestNpc(arg1, npcs.Npc11008Data.id, 1)
    self:QiuqiuMotion()
end

function Quest70015:OnSubFinish7001501(arg1)
    print("OnSubFinish7001501")
end

function Quest70015:OnSubFailed7001501(arg1)
    print("OnSubFailed7001501")
end

function Quest70015:OnSubStart7001502(arg1)
    print("OnSubStart7001502")
end

function Quest70015:OnSubFinish7001502(arg1)
    print("OnSubFinish7001502")
end

function Quest70015:OnSubFailed7001502(arg1)
    print("OnSubFailed7001502")
end

function Quest70015:OnSubStart7001503(arg1)
    print("OnSubStart7001503")
end

function Quest70015:OnSubFinish7001503(arg1)
    print("OnSubFinish7001503")
end

function Quest70015:OnSubFailed7001503(arg1)
    print("OnSubFailed7001503")
end

function Quest70015:OnSubStart7001504(arg1)
    print("OnSubStart7001504")
end

function Quest70015:OnSubFinish7001504(arg1)
    print("OnSubFinish7001504")
end

function Quest70015:OnSubFailed7001504(arg1)
    print("OnSubFailed7001504")
end

return Quest70015
