require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70012 = class("Quest70012", QuestActorProxy)
Quest70012.defaultAlias = "Quest70012"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70012:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7001201"] = self.OnSubStart7001201,
        ["7001202"] = self.OnSubStart7001202,
        ["7001203"] = self.OnSubStart7001203,
        ["7001204"] = self.OnSubStart7001204
    }
end

function Quest70012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7001201"] = self.OnSubFinish7001201,
        ["7001202"] = self.OnSubFinish7001202,
        ["7001203"] = self.OnSubFinish7001203,
        ["7001204"] = self.OnSubFinish7001204
    }
end

function Quest70012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7001201"] = self.OnSubFailed7001201,
        ["7001202"] = self.OnSubFailed7001202,
        ["7001203"] = self.OnSubFailed7001203,
        ["7001204"] = self.OnSubFailed7001204
    }
end

function Quest70012:Start()
    print("Start")
end

function Quest70012:OnDestroy()
    print("OnDestroy")
end

function Quest70012:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc11007Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70012:OnMainFailed(arg1)
    print("OnMainFailed")
    self:SafeDestroyQuestNpc(npcs.Npc11007Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70012:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc11007Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70012:QiuqiuMotion(arg1)
    self:GetQuestNpcActor(npcs.Npc11007Data.alias):DoFreeStyle(11, true, nil, true, true)
    self:Qiuqiutick()
end

function Quest70012:Qiuqiutick(arg1)
    self:CallDelay(10, self.QiuqiuMotion)
end

function Quest70012:OnSubStart7001201(arg1)
    print("OnSubStart7001201")
    self:CreateQuestNpc(arg1, npcs.Npc11007Data.id, 1)
    self:Qiuqiutick()
end

function Quest70012:OnSubFinish7001201(arg1)
    print("OnSubFinish7001201")
end

function Quest70012:OnSubFailed7001201(arg1)
    print("OnSubFailed7001201")
end

function Quest70012:OnSubStart7001202(arg1)
    print("OnSubStart7001202")
end

function Quest70012:OnSubFinish7001202(arg1)
    print("OnSubFinish7001202")
end

function Quest70012:OnSubFailed7001202(arg1)
    print("OnSubFailed7001202")
end

function Quest70012:OnSubStart7001203(arg1)
    print("OnSubStart7001203")
end

function Quest70012:OnSubFinish7001203(arg1)
    print("OnSubFinish7001203")
end

function Quest70012:OnSubFailed7001203(arg1)
    print("OnSubFailed7001203")
end

function Quest70012:OnSubStart7001204(arg1)
    print("OnSubStart7001204")
end

function Quest70012:OnSubFinish7001204(arg1)
    print("OnSubFinish7001204")
end

function Quest70012:OnSubFailed7001204(arg1)
    print("OnSubFailed7001204")
end

return Quest70012
