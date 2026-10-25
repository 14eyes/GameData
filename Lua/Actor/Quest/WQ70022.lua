require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70022 = class("Quest70022", QuestActorProxy)
Quest70022.defaultAlias = "Quest70022"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70022:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7002201"] = self.OnSubStart7002201,
        ["7002202"] = self.OnSubStart7002202,
        ["7002203"] = self.OnSubStart7002203
    }
end

function Quest70022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7002201"] = self.OnSubFinish7002201,
        ["7002202"] = self.OnSubFinish7002202,
        ["7002203"] = self.OnSubFinish7002203
    }
end

function Quest70022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7002201"] = self.OnSubFailed7002201,
        ["7002202"] = self.OnSubFailed7002202,
        ["7002203"] = self.OnSubFailed7002203
    }
end

function Quest70022:Start()
    print("Start")
end

function Quest70022:OnDestroy()
    print("OnDestroy")
end

function Quest70022:OnMainFinished(arg1)
    print("OnMainFinished")
    actorMgr:DestroyEntityActor(datas.Q70022Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70022:OnMainFailed(arg1)
    print("OnMainFailed")
    actorMgr:DestroyEntityActor(datas.Q70022Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70022:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:DestroyEntityActor(datas.Q70022Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70022:QiuqiuMotion(arg1)
    self:GetQuestNpcActor(npcs.Npc11008Data.alias):DoFreeStyle(11, true, nil, true, true)
end

function Quest70022:Qiuqiutick(arg1)
    self:CallDelay(10, self.QiuqiuMotion)
end

function Quest70022:OnSubStart7002201(arg1)
    print("OnSubStart7002201")
    self:CreateQuestNpc(arg1, npcs.Npc11008Data.id, 1)
    self:QiuqiuMotion()
end

function Quest70022:OnSubFinish7002201(arg1)
    print("OnSubFinish7002201")
end

function Quest70022:OnSubFailed7002201(arg1)
    print("OnSubFailed7002201")
end

function Quest70022:OnSubStart7002202(arg1)
    print("OnSubStart7002202")
    actorMgr:CreateActorWithPos(datas.Q70022Trigger_.alias, datas.Q70022Trigger_.script, datas.Q70022Trigger_.id, 0, datas.Q70022Trigger_.point.pos, datas.Q70022Trigger_.point.rot, true, false, 3)
end

function Quest70022:OnSubFinish7002202(arg1)
    print("OnSubFinish7002202")
end

function Quest70022:OnSubFailed7002202(arg1)
    print("OnSubFailed7002202")
end

function Quest70022:OnSubStart7002203(arg1)
    print("OnSubStart7002203")
end

function Quest70022:OnSubFinish7002203(arg1)
    print("OnSubFinish7002203")
end

function Quest70022:OnSubFailed7002203(arg1)
    print("OnSubFailed7002203")
end

return Quest70022
