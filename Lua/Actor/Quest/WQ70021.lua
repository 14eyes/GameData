require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70021 = class("Quest70021", QuestActorProxy)
Quest70021.defaultAlias = "Quest70021"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70021:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7002101"] = self.OnSubStart7002101,
        ["7002102"] = self.OnSubStart7002102,
        ["7002103"] = self.OnSubStart7002103,
        ["7002104"] = self.OnSubStart7002104
    }
end

function Quest70021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7002101"] = self.OnSubFinish7002101,
        ["7002102"] = self.OnSubFinish7002102,
        ["7002103"] = self.OnSubFinish7002103,
        ["7002104"] = self.OnSubFinish7002104
    }
end

function Quest70021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7002101"] = self.OnSubFailed7002101,
        ["7002102"] = self.OnSubFailed7002102,
        ["7002103"] = self.OnSubFailed7002103,
        ["7002104"] = self.OnSubFailed7002104
    }
end

function Quest70021:Start()
    print("Start")
end

function Quest70021:OnDestroy()
    print("OnDestroy")
end

function Quest70021:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc11007Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70021:OnMainFailed(arg1)
    print("OnMainFailed")
    self:SafeDestroyQuestNpc(npcs.Npc11007Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70021:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc11007Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70021:QiuqiuMotion(arg1)
    self:GetQuestNpcActor(npcs.Npc11007Data.alias):DoFreeStyle(11, true, nil, true, true)
end

function Quest70021:Qiuqiutick(arg1)
    self:CallDelay(10, self.QiuqiuMotion)
end

function Quest70021:OnSubStart7002101(arg1)
    print("OnSubStart7002101")
    self:CreateQuestNpc(arg1, npcs.Npc11007Data.id, 1)
    self:QiuqiuMotion()
end

function Quest70021:OnSubFinish7002101(arg1)
    print("OnSubFinish7002101")
end

function Quest70021:OnSubFailed7002101(arg1)
    print("OnSubFailed7002101")
end

function Quest70021:OnSubStart7002102(arg1)
    print("OnSubStart7002102")
end

function Quest70021:OnSubFinish7002102(arg1)
    print("OnSubFinish7002102")
end

function Quest70021:OnSubFailed7002102(arg1)
    print("OnSubFailed7002102")
end

function Quest70021:OnSubStart7002103(arg1)
    print("OnSubStart7002103")
end

function Quest70021:OnSubFinish7002103(arg1)
    print("OnSubFinish7002103")
end

function Quest70021:OnSubFailed7002103(arg1)
    print("OnSubFailed7002103")
end

function Quest70021:OnSubStart7002104(arg1)
    print("OnSubStart7002104")
end

function Quest70021:OnSubFinish7002104(arg1)
    print("OnSubFinish7002104")
end

function Quest70021:OnSubFailed7002104(arg1)
    print("OnSubFailed7002104")
end

return Quest70021
