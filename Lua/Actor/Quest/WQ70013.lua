require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70013 = class("Quest70013", QuestActorProxy)
Quest70013.defaultAlias = "Quest70013"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70013:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7001301"] = self.OnSubStart7001301,
        ["7001302"] = self.OnSubStart7001302,
        ["7001303"] = self.OnSubStart7001303
    }
end

function Quest70013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7001301"] = self.OnSubFinish7001301,
        ["7001302"] = self.OnSubFinish7001302,
        ["7001303"] = self.OnSubFinish7001303
    }
end

function Quest70013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7001301"] = self.OnSubFailed7001301,
        ["7001302"] = self.OnSubFailed7001302,
        ["7001303"] = self.OnSubFailed7001303
    }
end

function Quest70013:Start()
    print("Start")
end

function Quest70013:OnDestroy()
    print("OnDestroy")
end

function Quest70013:OnMainFinished(arg1)
    print("OnMainFinished")
    actorMgr:DestroyEntityActor(datas.Q70013Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70013:OnMainFailed(arg1)
    print("OnMainFailed")
    actorMgr:DestroyEntityActor(datas.Q70013Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70013:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:DestroyEntityActor(datas.Q70013Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70013:QiuqiuMotion(arg1)
    self:GetQuestNpcActor(npcs.Npc11008Data.alias):DoFreeStyle(11, true, nil, true, true)
    self:Qiuqiutick()
end

function Quest70013:Qiuqiutick(arg1)
    self:CallDelay(10, self.QiuqiuMotion)
end

function Quest70013:OnSubStart7001301(arg1)
    print("OnSubStart7001301")
    self:CreateQuestNpc(arg1, npcs.Npc11008Data.id, 1)
    self:Qiuqiutick()
end

function Quest70013:OnSubFinish7001301(arg1)
    print("OnSubFinish7001301")
end

function Quest70013:OnSubFailed7001301(arg1)
    print("OnSubFailed7001301")
end

function Quest70013:OnSubStart7001302(arg1)
    print("OnSubStart7001302")
    actorMgr:CreateActorWithPos(datas.Q70013Trigger_.alias, datas.Q70013Trigger_.script, datas.Q70013Trigger_.id, 0, datas.Q70013Trigger_.point.pos, datas.Q70013Trigger_.point.rot, true, false, 3)
end

function Quest70013:OnSubFinish7001302(arg1)
    print("OnSubFinish7001302")
end

function Quest70013:OnSubFailed7001302(arg1)
    print("OnSubFailed7001302")
end

function Quest70013:OnSubStart7001303(arg1)
    print("OnSubStart7001303")
end

function Quest70013:OnSubFinish7001303(arg1)
    print("OnSubFinish7001303")
end

function Quest70013:OnSubFailed7001303(arg1)
    print("OnSubFailed7001303")
end

return Quest70013
