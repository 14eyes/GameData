require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70019 = class("Quest70019", QuestActorProxy)
Quest70019.defaultAlias = "Quest70019"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70019:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7001901"] = self.OnSubStart7001901,
        ["7001902"] = self.OnSubStart7001902,
        ["7001903"] = self.OnSubStart7001903,
        ["7001904"] = self.OnSubStart7001904
    }
end

function Quest70019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7001901"] = self.OnSubFinish7001901,
        ["7001902"] = self.OnSubFinish7001902,
        ["7001903"] = self.OnSubFinish7001903,
        ["7001904"] = self.OnSubFinish7001904
    }
end

function Quest70019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7001901"] = self.OnSubFailed7001901,
        ["7001902"] = self.OnSubFailed7001902,
        ["7001903"] = self.OnSubFailed7001903,
        ["7001904"] = self.OnSubFailed7001904
    }
end

function Quest70019:Start()
    print("Start")
end

function Quest70019:OnDestroy()
    print("OnDestroy")
end

function Quest70019:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70019:OnMainFailed(arg1)
    print("OnMainFailed")
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70019:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70019:QiuqiuMotion(arg1)
    self:GetQuestNpcActor(npcs.Npc11008Data.alias):DoFreeStyle(11, true, nil, true, true)
end

function Quest70019:Qiuqiutick(arg1)
    self:CallDelay(10, self.QiuqiuMotion)
end

function Quest70019:OnSubStart7001901(arg1)
    print("OnSubStart7001901")
    self:CreateQuestNpc(arg1, npcs.Npc11008Data.id, 1)
    self:QiuqiuMotion()
end

function Quest70019:OnSubFinish7001901(arg1)
    print("OnSubFinish7001901")
end

function Quest70019:OnSubFailed7001901(arg1)
    print("OnSubFailed7001901")
end

function Quest70019:OnSubStart7001902(arg1)
    print("OnSubStart7001902")
end

function Quest70019:OnSubFinish7001902(arg1)
    print("OnSubFinish7001902")
end

function Quest70019:OnSubFailed7001902(arg1)
    print("OnSubFailed7001902")
end

function Quest70019:OnSubStart7001903(arg1)
    print("OnSubStart7001903")
end

function Quest70019:OnSubFinish7001903(arg1)
    print("OnSubFinish7001903")
end

function Quest70019:OnSubFailed7001903(arg1)
    print("OnSubFailed7001903")
end

function Quest70019:OnSubStart7001904(arg1)
    print("OnSubStart7001904")
end

function Quest70019:OnSubFinish7001904(arg1)
    print("OnSubFinish7001904")
end

function Quest70019:OnSubFailed7001904(arg1)
    print("OnSubFailed7001904")
end

return Quest70019
