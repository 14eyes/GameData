require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70018 = class("Quest70018", QuestActorProxy)
Quest70018.defaultAlias = "Quest70018"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70018:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7001801"] = self.OnSubStart7001801,
        ["7001802"] = self.OnSubStart7001802,
        ["7001803"] = self.OnSubStart7001803,
        ["7001804"] = self.OnSubStart7001804
    }
end

function Quest70018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7001801"] = self.OnSubFinish7001801,
        ["7001802"] = self.OnSubFinish7001802,
        ["7001803"] = self.OnSubFinish7001803,
        ["7001804"] = self.OnSubFinish7001804
    }
end

function Quest70018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7001801"] = self.OnSubFailed7001801,
        ["7001802"] = self.OnSubFailed7001802,
        ["7001803"] = self.OnSubFailed7001803,
        ["7001804"] = self.OnSubFailed7001804
    }
end

function Quest70018:Start()
    print("Start")
end

function Quest70018:OnDestroy()
    print("OnDestroy")
end

function Quest70018:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc11007Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70018:OnMainFailed(arg1)
    print("OnMainFailed")
    self:SafeDestroyQuestNpc(npcs.Npc11007Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70018:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc11007Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70018:QiuqiuMotion(arg1)
    self:GetQuestNpcActor(npcs.Npc11007Data.alias):DoFreeStyle(11, true, nil, true, true)
end

function Quest70018:Qiuqiutick(arg1)
    self:CallDelay(10, self.QiuqiuMotion)
end

function Quest70018:OnSubStart7001801(arg1)
    print("OnSubStart7001801")
    self:CreateQuestNpc(arg1, npcs.Npc11007Data.id, 1)
    self:QiuqiuMotion()
end

function Quest70018:OnSubFinish7001801(arg1)
    print("OnSubFinish7001801")
end

function Quest70018:OnSubFailed7001801(arg1)
    print("OnSubFailed7001801")
end

function Quest70018:OnSubStart7001802(arg1)
    print("OnSubStart7001802")
end

function Quest70018:OnSubFinish7001802(arg1)
    print("OnSubFinish7001802")
end

function Quest70018:OnSubFailed7001802(arg1)
    print("OnSubFailed7001802")
end

function Quest70018:OnSubStart7001803(arg1)
    print("OnSubStart7001803")
end

function Quest70018:OnSubFinish7001803(arg1)
    print("OnSubFinish7001803")
end

function Quest70018:OnSubFailed7001803(arg1)
    print("OnSubFailed7001803")
end

function Quest70018:OnSubStart7001804(arg1)
    print("OnSubStart7001804")
end

function Quest70018:OnSubFinish7001804(arg1)
    print("OnSubFinish7001804")
end

function Quest70018:OnSubFailed7001804(arg1)
    print("OnSubFailed7001804")
end

return Quest70018
