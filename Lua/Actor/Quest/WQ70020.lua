require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70020 = class("Quest70020", QuestActorProxy)
Quest70020.defaultAlias = "Quest70020"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70020:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7002001"] = self.OnSubStart7002001,
        ["7002002"] = self.OnSubStart7002002,
        ["7002003"] = self.OnSubStart7002003
    }
end

function Quest70020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7002001"] = self.OnSubFinish7002001,
        ["7002002"] = self.OnSubFinish7002002,
        ["7002003"] = self.OnSubFinish7002003
    }
end

function Quest70020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7002001"] = self.OnSubFailed7002001,
        ["7002002"] = self.OnSubFailed7002002,
        ["7002003"] = self.OnSubFailed7002003
    }
end

function Quest70020:Start()
    print("Start")
end

function Quest70020:OnDestroy()
    print("OnDestroy")
end

function Quest70020:OnMainFinished(arg1)
    print("OnMainFinished")
    actorMgr:DestroyEntityActor(datas.Q700201Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q70020Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70020:OnMainFailed(arg1)
    print("OnMainFailed")
    actorMgr:DestroyEntityActor(datas.Q700201Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q70020Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70020:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:DestroyEntityActor(datas.Q700201Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q70020Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70020:OnSubStart7002001(arg1)
    print("OnSubStart7002001")
    self:CreateQuestNpc(arg1, npcs.Npc11008Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc11008Data.alias):DoFreeStyle(11, true, nil, true, true)
    actorMgr:CreateActorWithPos(datas.Q700201Trigger_.alias, datas.Q700201Trigger_.script, datas.Q700201Trigger_.id, 0, datas.Q700201Trigger_.point.pos, datas.Q700201Trigger_.point.rot, true, false, 3)
end

function Quest70020:OnSubFinish7002001(arg1)
    print("OnSubFinish7002001")
    self:SafeDestroyQuestNpc(npcs.Npc156501Data.alias, 3)
end

function Quest70020:OnSubFailed7002001(arg1)
    print("OnSubFailed7002001")
end

function Quest70020:OnSubStart7002002(arg1)
    print("OnSubStart7002002")
    actorMgr:CreateActorWithPos(datas.Q70020Trigger_.alias, datas.Q70020Trigger_.script, datas.Q70020Trigger_.id, 0, datas.Q70020Trigger_.point.pos, datas.Q70020Trigger_.point.rot, true, false, 3)
end

function Quest70020:OnSubFinish7002002(arg1)
    print("OnSubFinish7002002")
end

function Quest70020:OnSubFailed7002002(arg1)
    print("OnSubFailed7002002")
end

function Quest70020:OnSubStart7002003(arg1)
    print("OnSubStart7002003")
    self:CreateQuestNpc(arg1, npcs.Npc11008Data.id, 1)
end

function Quest70020:OnSubFinish7002003(arg1)
    print("OnSubFinish7002003")
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest70020:OnSubFailed7002003(arg1)
    print("OnSubFailed7002003")
end

return Quest70020
