require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70014 = class("Quest70014", QuestActorProxy)
Quest70014.defaultAlias = "Quest70014"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70014:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7001401"] = self.OnSubStart7001401,
        ["7001402"] = self.OnSubStart7001402,
        ["7001403"] = self.OnSubStart7001403
    }
end

function Quest70014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7001401"] = self.OnSubFinish7001401,
        ["7001402"] = self.OnSubFinish7001402,
        ["7001403"] = self.OnSubFinish7001403
    }
end

function Quest70014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7001401"] = self.OnSubFailed7001401,
        ["7001402"] = self.OnSubFailed7001402,
        ["7001403"] = self.OnSubFailed7001403
    }
end

function Quest70014:Start()
    print("Start")
end

function Quest70014:OnDestroy()
    print("OnDestroy")
end

function Quest70014:OnMainFinished(arg1)
    print("OnMainFinished")
    actorMgr:DestroyEntityActor(datas.Q70014Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70014:OnMainFailed(arg1)
    print("OnMainFailed")
    actorMgr:DestroyEntityActor(datas.Q70014Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70014:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:DestroyEntityActor(datas.Q70014Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11008Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70014:QiuqiuMotion(arg1)
    self:GetQuestNpcActor(npcs.Npc11008Data.alias):DoFreeStyle(11, true, nil, true, true)
end

function Quest70014:Qiuqiutick(arg1)
    self:CallDelay(10, self.QiuqiuMotion)
end

function Quest70014:OnSubStart7001401(arg1)
    print("OnSubStart7001401")
    self:CreateQuestNpc(arg1, npcs.Npc11008Data.id, 1)
    self:QiuqiuMotion()
end

function Quest70014:OnSubFinish7001401(arg1)
    print("OnSubFinish7001401")
end

function Quest70014:OnSubFailed7001401(arg1)
    print("OnSubFailed7001401")
end

function Quest70014:OnSubStart7001402(arg1)
    print("OnSubStart7001402")
    actorMgr:CreateActorWithPos(datas.Q70014Trigger_.alias, datas.Q70014Trigger_.script, datas.Q70014Trigger_.id, 0, datas.Q70014Trigger_.point.pos, datas.Q70014Trigger_.point.rot, true, false, 3)
end

function Quest70014:OnSubFinish7001402(arg1)
    print("OnSubFinish7001402")
end

function Quest70014:OnSubFailed7001402(arg1)
    print("OnSubFailed7001402")
end

function Quest70014:OnSubStart7001403(arg1)
    print("OnSubStart7001403")
end

function Quest70014:OnSubFinish7001403(arg1)
    print("OnSubFinish7001403")
end

function Quest70014:OnSubFailed7001403(arg1)
    print("OnSubFailed7001403")
end

return Quest70014
