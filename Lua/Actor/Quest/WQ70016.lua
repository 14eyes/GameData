require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70016 = class("Quest70016", QuestActorProxy)
Quest70016.defaultAlias = "Quest70016"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70016:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70016:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7001601"] = self.OnSubStart7001601,
        ["7001602"] = self.OnSubStart7001602,
        ["7001603"] = self.OnSubStart7001603
    }
end

function Quest70016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7001601"] = self.OnSubFinish7001601,
        ["7001602"] = self.OnSubFinish7001602,
        ["7001603"] = self.OnSubFinish7001603
    }
end

function Quest70016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7001601"] = self.OnSubFailed7001601,
        ["7001602"] = self.OnSubFailed7001602,
        ["7001603"] = self.OnSubFailed7001603
    }
end

function Quest70016:Start()
    print("Start")
end

function Quest70016:OnDestroy()
    print("OnDestroy")
end

function Quest70016:OnMainFinished(arg1)
    print("OnMainFinished")
    actorMgr:DestroyEntityActor(datas.Q70016Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11007Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70016:OnMainFailed(arg1)
    print("OnMainFailed")
    actorMgr:DestroyEntityActor(datas.Q70016Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11007Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70016:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:DestroyEntityActor(datas.Q70016Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11007Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70016:QiuqiuMotion(arg1)
    self:GetQuestNpcActor(npcs.Npc11007Data.alias):DoFreeStyle(11, true, nil, true, true)
end

function Quest70016:Qiuqiutick(arg1)
    self:CallDelay(10, self.QiuqiuMotion)
end

function Quest70016:OnSubStart7001601(arg1)
    print("OnSubStart7001601")
    self:CreateQuestNpc(arg1, npcs.Npc11007Data.id, 1)
    self:QiuqiuMotion()
end

function Quest70016:OnSubFinish7001601(arg1)
    print("OnSubFinish7001601")
end

function Quest70016:OnSubFailed7001601(arg1)
    print("OnSubFailed7001601")
end

function Quest70016:OnSubStart7001602(arg1)
    print("OnSubStart7001602")
    actorMgr:CreateActorWithPos(datas.Q70016Trigger_.alias, datas.Q70016Trigger_.script, datas.Q70016Trigger_.id, 0, datas.Q70016Trigger_.point.pos, datas.Q70016Trigger_.point.rot, true, false, 3)
end

function Quest70016:OnSubFinish7001602(arg1)
    print("OnSubFinish7001602")
end

function Quest70016:OnSubFailed7001602(arg1)
    print("OnSubFailed7001602")
end

function Quest70016:OnSubStart7001603(arg1)
    print("OnSubStart7001603")
end

function Quest70016:OnSubFinish7001603(arg1)
    print("OnSubFinish7001603")
end

function Quest70016:OnSubFailed7001603(arg1)
    print("OnSubFailed7001603")
end

return Quest70016
