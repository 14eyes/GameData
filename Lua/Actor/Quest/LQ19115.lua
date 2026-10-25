require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19115 = class("Quest19115", QuestActorProxy)
Quest19115.defaultAlias = "Quest19115"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19115:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19115:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1911506"] = self.OnSubStart1911506,
        ["1911501"] = self.OnSubStart1911501,
        ["1911507"] = self.OnSubStart1911507,
        ["1911508"] = self.OnSubStart1911508,
        ["1911509"] = self.OnSubStart1911509,
        ["1911510"] = self.OnSubStart1911510,
        ["1911502"] = self.OnSubStart1911502,
        ["1911505"] = self.OnSubStart1911505,
        ["1911504"] = self.OnSubStart1911504,
        ["1911503"] = self.OnSubStart1911503
    }
end

function Quest19115:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1911506"] = self.OnSubFinish1911506,
        ["1911501"] = self.OnSubFinish1911501,
        ["1911507"] = self.OnSubFinish1911507,
        ["1911508"] = self.OnSubFinish1911508,
        ["1911509"] = self.OnSubFinish1911509,
        ["1911510"] = self.OnSubFinish1911510,
        ["1911502"] = self.OnSubFinish1911502,
        ["1911505"] = self.OnSubFinish1911505,
        ["1911504"] = self.OnSubFinish1911504,
        ["1911503"] = self.OnSubFinish1911503
    }
end

function Quest19115:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1911506"] = self.OnSubFailed1911506,
        ["1911501"] = self.OnSubFailed1911501,
        ["1911507"] = self.OnSubFailed1911507,
        ["1911508"] = self.OnSubFailed1911508,
        ["1911509"] = self.OnSubFailed1911509,
        ["1911510"] = self.OnSubFailed1911510,
        ["1911502"] = self.OnSubFailed1911502,
        ["1911505"] = self.OnSubFailed1911505,
        ["1911504"] = self.OnSubFailed1911504,
        ["1911503"] = self.OnSubFailed1911503
    }
end

function Quest19115:Start()
    print("Start")
end

function Quest19115:OnDestroy()
    print("OnDestroy")
end

function Quest19115:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19115:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19115:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3101Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3100Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3103Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3099Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3102Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12236Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12237Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12235Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12257Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12258Data.alias, 3)
    self:LightNotifyTo("Npc3101", 0, true)
    local actor = actorMgr:GetActor(datas.Q19115Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19115:CheckDistance()
    if self:GetSubQuestState(1911502) == 2 then
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = sceneData:GetDummyPoint(3, "Q1911503born").pos
        local dist = M.Dist(pos, avatarPos)
        print("StartCheck")
        if 55 < dist then
            actorUtils.FinishQuestID(true, 1911502)
        else
            self:CallDelay(1, self.NormalCheck)
        end
    end
end

function Quest19115:NormalCheck()
    self:CheckDistance()
end

function Quest19115:OnSubStart1911506(arg1)
    print("OnSubStart1911506")
    self:CreateQuestNpc(arg1, npcs.Npc3100Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911504)
end

function Quest19115:OnSubFinish1911506(arg1)
    print("OnSubFinish1911506")
end

function Quest19115:OnSubFailed1911506(arg1)
    print("OnSubFailed1911506")
end

function Quest19115:OnSubStart1911501(arg1)
    print("OnSubStart1911501")
    self:CreateQuestNpc(arg1, npcs.Npc3101Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911501)
    local actor = actorMgr:GetActor(datas.Q19115Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19115:OnSubFinish1911501(arg1)
    print("OnSubFinish1911501")
    self:SafeDestroyQuestNpc(npcs.Npc3101Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3100Data.alias, 3)
    self:TransmitPlayerByQuestId(1911501, 1)
end

function Quest19115:OnSubFailed1911501(arg1)
    print("OnSubFailed1911501")
end

function Quest19115:OnSubStart1911507(arg1)
    print("OnSubStart1911507")
end

function Quest19115:OnSubFinish1911507(arg1)
    print("OnSubFinish1911507")
    self:CreateQuestNpc(arg1, npcs.Npc12235Data.id, 0)
end

function Quest19115:OnSubFailed1911507(arg1)
    print("OnSubFailed1911507")
end

function Quest19115:OnSubStart1911508(arg1)
    print("OnSubStart1911508")
    self:CreateQuestNpc(arg1, npcs.Npc12235Data.id, 1)
end

function Quest19115:OnSubFinish1911508(arg1)
    print("OnSubFinish1911508")
    self:SafeDestroyQuestNpc(npcs.Npc12235Data.alias, 3)
end

function Quest19115:OnSubFailed1911508(arg1)
    print("OnSubFailed1911508")
end

function Quest19115:OnSubStart1911509(arg1)
    print("OnSubStart1911509")
    self:CreateQuestNpc(arg1, npcs.Npc12257Data.id, 1)
end

function Quest19115:OnSubFinish1911509(arg1)
    print("OnSubFinish1911509")
    self:SafeDestroyQuestNpc(npcs.Npc12257Data.alias, 3)
end

function Quest19115:OnSubFailed1911509(arg1)
    print("OnSubFailed1911509")
end

function Quest19115:OnSubStart1911510(arg1)
    print("OnSubStart1911510")
    self:CreateQuestNpc(arg1, npcs.Npc12258Data.id, 1)
end

function Quest19115:OnSubFinish1911510(arg1)
    print("OnSubFinish1911510")
    self:SafeDestroyQuestNpc(npcs.Npc12258Data.alias, 3)
end

function Quest19115:OnSubFailed1911510(arg1)
    print("OnSubFailed1911510")
end

function Quest19115:OnSubStart1911502(arg1)
    print("OnSubStart1911502")
    self:CheckDistance()
    self:CallDelay(1, function(arg1)
        arg1:NotifyTo("Npc3101", 1, true)
    end)

    self:CreateQuestNpc(arg1, npcs.Npc3103Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3099Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3102Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12237Data.id, 5)
    self:CallDelay(4, function(arg1)
        arg1:CreateSpeechBubbleTask(npcs.Npc3103Data.id, 191150115, 10, true, 7, 10, true)
    end)

    self:CallDelay(8, function(arg1)
        arg1:CreateSpeechBubbleTask(npcs.Npc3099Data.id, 191150116, 10, true, 7, 10, true)
    end)

    self:CallDelay(15, function(arg1)
        arg1:CreateSpeechBubbleTask(npcs.Npc3102Data.id, 191150117, 10, true, 7, 10, true)
    end)

    self:CreateSpeechBubbleTask(npcs.Npc12237Data.id, 191150119, 10, true, 7, 10, true)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "Coop_Message_Q1911113")
    actorMgr:CreateActorWithPos(datas.Q19115Trigger_.alias, datas.Q19115Trigger_.script, datas.Q19115Trigger_.id, 0, datas.Q19115Trigger_.point.pos, datas.Q19115Trigger_.point.rot, true, false, 3)
end

function Quest19115:OnSubFinish1911502(arg1)
    print("OnSubFinish1911502")
    self:SafeDestroyQuestNpc(npcs.Npc3103Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3099Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3102Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12237Data.alias, 3)
    local actor = actorMgr:GetActor(datas.Q19115Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    self:ClearTask()
end

function Quest19115:OnSubFailed1911502(arg1)
    print("OnSubFailed1911502")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "Coop_Message_Q1911114")
    self:SafeDestroyQuestNpc(npcs.Npc3103Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3099Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3102Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12237Data.alias, 3)
    self:ClearTask()
end

function Quest19115:OnSubStart1911505(arg1)
    print("OnSubStart1911505")
    self:NotifyTo("Npc3101", 1, true)
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911503)
    self:RequestInteraction(npcs.Coop_TohmaData.alias)
end

function Quest19115:OnSubFinish1911505(arg1)
    print("OnSubFinish1911505")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12235Data.alias, 3)
end

function Quest19115:OnSubFailed1911505(arg1)
    print("OnSubFailed1911505")
end

function Quest19115:OnSubStart1911504(arg1)
    print("OnSubStart1911504")
    self:NotifyTo("Npc3101", 1, true)
end

function Quest19115:OnSubFinish1911504(arg1)
    print("OnSubFinish1911504")
end

function Quest19115:OnSubFailed1911504(arg1)
    print("OnSubFailed1911504")
end

function Quest19115:OnSubStart1911503(arg1)
    print("OnSubStart1911503")
    self:NotifyTo("Npc3101", 1, true)
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911502)
end

function Quest19115:OnSubFinish1911503(arg1)
    print("OnSubFinish1911503")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
    self:LightNotifyTo("Npc3101", 0, true)
end

function Quest19115:OnSubFailed1911503(arg1)
    print("OnSubFailed1911503")
end

return Quest19115
