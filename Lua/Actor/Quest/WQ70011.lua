require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70011 = class("Quest70011", QuestActorProxy)
Quest70011.defaultAlias = "Quest70011"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70011:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7001101"] = self.OnSubStart7001101,
        ["7001102"] = self.OnSubStart7001102,
        ["7001103"] = self.OnSubStart7001103
    }
end

function Quest70011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7001101"] = self.OnSubFinish7001101,
        ["7001102"] = self.OnSubFinish7001102,
        ["7001103"] = self.OnSubFinish7001103
    }
end

function Quest70011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7001101"] = self.OnSubFailed7001101,
        ["7001102"] = self.OnSubFailed7001102,
        ["7001103"] = self.OnSubFailed7001103
    }
end

function Quest70011:Start()
    print("Start")
end

function Quest70011:OnDestroy()
    print("OnDestroy")
end

function Quest70011:OnMainFinished(arg1)
    print("OnMainFinished")
    actorMgr:DestroyEntityActor(datas.Q70011Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11007Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70011:OnMainFailed(arg1)
    print("OnMainFailed")
    actorMgr:DestroyEntityActor(datas.Q70011Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11007Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70011:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:DestroyEntityActor(datas.Q70011Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11007Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70011:QiuqiuMotion(arg1)
    self:GetQuestNpcActor(npcs.Npc11007Data.alias):DoFreeStyle(11, true, nil, true, true)
    self:Qiuqiutick()
end

function Quest70011:Qiuqiutick(arg1)
    self:CallDelay(10, self.QiuqiuMotion)
end

function Quest70011:OnSubStart7001101(arg1)
    print("OnSubStart7001101")
    self:CreateQuestNpc(arg1, npcs.Npc11007Data.id, 1)
    self:Qiuqiutick()
end

function Quest70011:OnSubFinish7001101(arg1)
    print("OnSubFinish7001101")
end

function Quest70011:OnSubFailed7001101(arg1)
    print("OnSubFailed7001101")
end

function Quest70011:OnSubStart7001102(arg1)
    print("OnSubStart7001102")
    actorMgr:CreateActorWithPos(datas.Q70011Trigger_.alias, datas.Q70011Trigger_.script, datas.Q70011Trigger_.id, 0, datas.Q70011Trigger_.point.pos, datas.Q70011Trigger_.point.rot, true, false, 3)
end

function Quest70011:OnSubFinish7001102(arg1)
    print("OnSubFinish7001102")
end

function Quest70011:OnSubFailed7001102(arg1)
    print("OnSubFailed7001102")
end

function Quest70011:OnSubStart7001103(arg1)
    print("OnSubStart7001103")
end

function Quest70011:OnSubFinish7001103(arg1)
    print("OnSubFinish7001103")
end

function Quest70011:OnSubFailed7001103(arg1)
    print("OnSubFailed7001103")
end

return Quest70011
