require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22007 = class("Quest22007", QuestActorProxy)
Quest22007.defaultAlias = "Quest22007"
local clientData
local mainID
local actorAlias
local subIDs
local actors
local datas

function Quest22007:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    actors = clientData.Actors
    datas = clientData.Datas
end

function Quest22007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2200701"] = self.OnSubStart2200701,
        ["2200702"] = self.OnSubStart2200702,
        ["2200703"] = self.OnSubStart2200703,
        ["2200704"] = self.OnSubStart2200704,
        ["2200705"] = self.OnSubStart2200705
    }
end

function Quest22007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2200701"] = self.OnSubFinish2200701,
        ["2200702"] = self.OnSubFinish2200702,
        ["2200703"] = self.OnSubFinish2200703,
        ["2200704"] = self.OnSubFinish2200704,
        ["2200705"] = self.OnSubFinish2200705
    }
end

function Quest22007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2200701"] = self.OnSubFailed2200701,
        ["2200702"] = self.OnSubFailed2200702,
        ["2200703"] = self.OnSubFailed2200703,
        ["2200704"] = self.OnSubFailed2200704,
        ["2200705"] = self.OnSubFailed2200705
    }
end

function Quest22007:OnMainFinished(arg1)
    print("OnMainFinished")
    self:CallDelay(0.5, self.Blackscreen)
end

function Quest22007:OnMainFailed(arg1)
    print("OnMainFailed")
    self:CallDelay(0.5, self.Cleardata)
end

function Quest22007:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:Cleardata()
end

function Quest22007:Blackscreen()
    print("Blackscreen")
    self:EnablePlayerInput(false)
    self:ShowBlackScreen(0.5, 1, 0.5, self.Cleardata)
    self:EnablePlayerInput(true)
end

function Quest22007:Cleardata()
    print("Cleardata")
    local questNpcActor = actorMgr:GetActor("22007"):GetQuestNpcActor(actors.BaoEr.alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest22007:Start()
    print("Start")
end

function Quest22007:OnDestroy()
    print("OnDestroy")
end

function Quest22007:OnSubStart2200701(arg1)
    print("OnSubStart2200701")
    self:CreateQuestNpc(arg1, actors.BaoEr.id, 1)
    self:GetQuestNpcActor(actors.BaoEr.alias):DoFreeStyle(1280)
end

function Quest22007:OnSubFinish2200701(arg1)
    print("OnSubFinish2200701")
end

function Quest22007:OnSubFailed2200701(arg1)
    print("OnSubFailed2200701")
end

function Quest22007:OnSubStart2200702(arg1)
    print("OnSubStart2200702")
end

function Quest22007:OnSubFinish2200702(arg1)
    print("OnSubFinish2200702")
end

function Quest22007:OnSubFailed2200702(arg1)
    print("OnSubFailed2200702")
end

function Quest22007:OnSubStart2200703(arg1)
    print("OnSubStart2200703")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self.CreateQuestNpcByIdWithPos(self, arg1.QuestConfigId, actors.Paimon.id, 2, avatarPos, M.Dir2Euler(v))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(actors.Paimon.alias)
        print("interaction called")
    end)
end

function Quest22007:OnSubFinish2200703(arg1)
    print("OnSubFinish2200703")
end

function Quest22007:OnSubFailed2200703(arg1)
    print("OnSubFailed2200703")
end

function Quest22007:OnSubStart2200704(arg1)
    print("OnSubStart2200704")
    self.EnterSceneLookCamera(self, sceneData:GetDummyPoint(3, "Q22007MonsterPos").pos, 0, 2, true, true)
    self.NarratorOnlyTask(self, datas.PaimonReminder01)
    self.CallDelay(self, 3, function()
        local questNpcActor = self:GetQuestNpcActor(actors.Paimon.alias)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest22007:OnSubFinish2200704(arg1)
    print("OnSubFinish2200704")
    self:NarratorOnlyTask(datas.PaimonReminder02)
end

function Quest22007:OnSubFailed2200704(arg1)
    print("OnSubFailed2200704")
end

function Quest22007:OnSubStart2200705(arg1)
    print("OnSubStart2200705")
end

function Quest22007:OnSubFinish2200705(arg1)
    print("OnSubFinish2200705")
end

function Quest22007:OnSubFailed2200705(arg1)
    print("OnSubFailed2200705")
end

return Quest22007
