require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70006 = class("Quest70006", QuestActorProxy)
Quest70006.defaultAlias = "Quest70006"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70006:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7000601"] = self.OnSubStart7000601,
        ["7000602"] = self.OnSubStart7000602,
        ["7000603"] = self.OnSubStart7000603,
        ["7000604"] = self.OnSubStart7000604
    }
end

function Quest70006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7000601"] = self.OnSubFinish7000601,
        ["7000602"] = self.OnSubFinish7000602,
        ["7000603"] = self.OnSubFinish7000603,
        ["7000604"] = self.OnSubFinish7000604
    }
end

function Quest70006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7000601"] = self.OnSubFailed7000601,
        ["7000602"] = self.OnSubFailed7000602,
        ["7000603"] = self.OnSubFailed7000603,
        ["7000604"] = self.OnSubFailed7000604
    }
end

function Quest70006:Start()
    print("Start")
end

function Quest70006:OnDestroy()
    print("OnDestroy")
end

function Quest70006:OnMainFinished(arg1)
    print("OnMainFinished")
    actorMgr:DestroyEntityActor(datas.Q70006Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11007Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70006:OnMainFailed(arg1)
    print("OnMainFailed")
    actorMgr:DestroyEntityActor(datas.Q70006Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11007Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70006:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:DestroyEntityActor(datas.Q70006Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11007Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70006:QiuqiuMotion(arg1)
    self:GetQuestNpcActor(npcs.Npc11007Data.alias):DoFreeStyle(11, true, nil, true, true)
end

function Quest70006:Qiuqiutick(arg1)
    self:CallDelay(10, self.QiuqiuMotion)
end

function Quest70006:OnSubStart7000601(arg1)
    print("OnSubStart7000601")
    self:CreateQuestNpc(arg1, npcs.Npc11007Data.id, 1)
    self:QiuqiuMotion()
    actorMgr:CreateActorWithPos(datas.Q70006Trigger_.alias, datas.Q70006Trigger_.script, datas.Q70006Trigger_.id, 0, datas.Q70006Trigger_.point.pos, datas.Q70006Trigger_.point.rot, true, false, 3)
end

function Quest70006:OnSubFinish7000601(arg1)
    print("OnSubFinish7000601")
end

function Quest70006:OnSubFailed7000601(arg1)
    print("OnSubFailed7000601")
end

function Quest70006:OnSubStart7000602(arg1)
    print("OnSubStart7000602")
    self:CreateQuestNpc(arg1, npcs.Npc11007Data.id, 1)
end

function Quest70006:OnSubFinish7000602(arg1)
    print("OnSubFinish7000602")
end

function Quest70006:OnSubFailed7000602(arg1)
    print("OnSubFailed7000602")
end

function Quest70006:OnSubStart7000603(arg1)
    print("OnSubStart7000603")
end

function Quest70006:OnSubFinish7000603(arg1)
    print("OnSubFinish7000603")
end

function Quest70006:OnSubFailed7000603(arg1)
    print("OnSubFailed7000603")
end

function Quest70006:OnSubStart7000604(arg1)
    print("OnSubStart7000604")
end

function Quest70006:OnSubFinish7000604(arg1)
    print("OnSubFinish7000604")
end

function Quest70006:OnSubFailed7000604(arg1)
    print("OnSubFailed7000604")
end

return Quest70006
