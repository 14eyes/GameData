require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22005 = class("Quest22005", QuestActorProxy)
Quest22005.defaultAlias = "Quest22005"
local clientData
local mainID
local actorAlias
local subIDs
local actors
local datas

function Quest22005:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    actors = clientData.Actors
    datas = clientData.Datas
end

function Quest22005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2200501"] = self.OnSubStart2200501,
        ["2200502"] = self.OnSubStart2200502,
        ["2200503"] = self.OnSubStart2200503
    }
end

function Quest22005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2200501"] = self.OnSubFinish2200501,
        ["2200502"] = self.OnSubFinish2200502,
        ["2200503"] = self.OnSubFinish2200503
    }
end

function Quest22005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2200501"] = self.OnSubFailed2200501,
        ["2200502"] = self.OnSubFailed2200502,
        ["2200503"] = self.OnSubFailed2200503
    }
end

function Quest22005:OnMainFinished(arg1)
    print("OnMainFinished")
    self:CallDelay(0.5, self.Blackscreen)
end

function Quest22005:OnMainFailed(arg1)
    print("OnMainFailed")
    self:CallDelay(0.5, self.Cleardata)
end

function Quest22005:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:Cleardata()
end

function Quest22005:Blackscreen()
    print("Blackscreen")
    self:EnablePlayerInput(false)
    self:ShowBlackScreen(0.5, 1, 0.5, self.Cleardata)
    self:EnablePlayerInput(true)
end

function Quest22005:Cleardata()
    print("Cleardata")
    local questNpcActor = actorMgr:GetActor("22005"):GetQuestNpcActor(actors.BaoEr.alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest22005:Start()
    print("Start")
end

function Quest22005:OnDestroy()
    print("OnDestroy")
end

function Quest22005:OnSubStart2200501(arg1)
    print("OnSubStart2200501")
    self:CreateQuestNpc(arg1, actors.BaoEr.id, 1)
    self:GetQuestNpcActor(actors.BaoEr.alias):DoFreeStyle(1280)
end

function Quest22005:OnSubFinish2200501(arg1)
    print("OnSubFinish2200501")
end

function Quest22005:OnSubFailed2200501(arg1)
    print("OnSubFailed2200501")
end

function Quest22005:OnSubStart2200502(arg1)
    print("OnSubStart2200502")
end

function Quest22005:OnSubFinish2200502(arg1)
    print("OnSubFinish2200502")
    self:NarratorOnlyTask(datas.PaimonReminder01)
end

function Quest22005:OnSubFailed2200502(arg1)
    print("OnSubFailed2200502")
end

function Quest22005:OnSubStart2200503(arg1)
    print("OnSubStart2200503")
end

function Quest22005:OnSubFinish2200503(arg1)
    print("OnSubFinish2200503")
end

function Quest22005:OnSubFailed2200503(arg1)
    print("OnSubFailed2200503")
end

return Quest22005
