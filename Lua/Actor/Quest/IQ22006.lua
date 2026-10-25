require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22006 = class("Quest22006", QuestActorProxy)
Quest22006.defaultAlias = "Quest22006"
local clientData
local mainID
local actorAlias
local subIDs
local actors
local datas

function Quest22006:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    actors = clientData.Actors
    datas = clientData.Datas
end

function Quest22006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2200601"] = self.OnSubStart2200601,
        ["2200602"] = self.OnSubStart2200602,
        ["2200603"] = self.OnSubStart2200603,
        ["2200604"] = self.OnSubStart2200604,
        ["2200605"] = self.OnSubStart2200605,
        ["2200606"] = self.OnSubStart2200606
    }
end

function Quest22006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2200601"] = self.OnSubFinish2200601,
        ["2200602"] = self.OnSubFinish2200602,
        ["2200603"] = self.OnSubFinish2200603,
        ["2200604"] = self.OnSubFinish2200604,
        ["2200605"] = self.OnSubFinish2200605,
        ["2200606"] = self.OnSubFinish2200606
    }
end

function Quest22006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2200601"] = self.OnSubFailed2200601,
        ["2200602"] = self.OnSubFailed2200602,
        ["2200603"] = self.OnSubFailed2200603,
        ["2200604"] = self.OnSubFailed2200604,
        ["2200605"] = self.OnSubFailed2200605,
        ["2200606"] = self.OnSubFailed2200606
    }
end

function Quest22006:OnMainFinished(arg1)
    print("OnMainFinished")
    self:CallDelay(0.5, self.Blackscreen)
end

function Quest22006:OnMainFailed(arg1)
    print("OnMainFailed")
    self:CallDelay(0.5, self.Cleardata)
end

function Quest22006:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:Cleardata()
end

function Quest22006:Blackscreen()
    print("Blackscreen")
    self:EnablePlayerInput(false)
    self:ShowBlackScreen(0.5, 1, 0.5, self.Cleardata)
    self:EnablePlayerInput(true)
end

function Quest22006:Cleardata()
    print("Cleardata")
    local actor = actorMgr:GetActor("22006")
    local questNpcActor = actor:GetQuestNpcActor(actors.BaoEr.alias)
    local v = actor:GetQuestNpcActor(actors.SoRaYa.alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    if v ~= nil then
        v:Destroy(false)
    end
end

function Quest22006:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self.SetQuestVar(self, clientData.SubIDs.q2200604, 1, 1)
        local questVar = self.GetQuestVar(self, clientData.SubIDs.q2200604, 1)
        print(questVar)
    end

    if arg1 == 2 then
        self.EnablePlayerInput(self, false)
        self.ShowBlackScreen(self, 0.5, 3, 0.5, nil, function()
            self:EnablePlayerInput(true)
        end, nil, "QUEST_MESSAGE_Q22006")
    end
end

function Quest22006:Start()
    print("Start")
end

function Quest22006:OnDestroy()
    print("OnDestroy")
end

function Quest22006:OnSubStart2200601(arg1)
    print("OnSubStart2200601")
    self:CreateQuestNpc(arg1, actors.BaoEr.id, 1)
    self:GetQuestNpcActor(actors.BaoEr.alias):DoFreeStyle(1280)
end

function Quest22006:OnSubFinish2200601(arg1)
    print("OnSubFinish2200601")
end

function Quest22006:OnSubFailed2200601(arg1)
    print("OnSubFailed2200601")
end

function Quest22006:OnSubStart2200602(arg1)
    print("OnSubStart2200602")
    self:CreateQuestNpc(arg1, actors.SoRaYa.id, 2)
    local questNpcActor = self:GetQuestNpcActor(actors.SoRaYa.alias)
    self:CreateSpeechBubbleTask(actors.SoRaYa.id, datas.Reminders.Reminder1.dialogID, 1, 1, 1, 1)
    questNpcActor:DoFreeStyle(1070)
end

function Quest22006:OnSubFinish2200602(arg1)
    print("OnSubFinish2200602")
end

function Quest22006:OnSubFailed2200602(arg1)
    print("OnSubFailed2200602")
end

function Quest22006:OnSubStart2200603(arg1)
    print("OnSubStart2200603")
end

function Quest22006:OnSubFinish2200603(arg1)
    print("OnSubFinish2200603")
    self:ClearSpeechBubbleTask()
    self:GetQuestNpcActor(actors.SoRaYa.alias):DoFreeStyle(1260)
end

function Quest22006:OnSubFailed2200603(arg1)
    print("OnSubFailed2200603")
end

function Quest22006:OnSubStart2200604(arg1)
    print("OnSubStart2200604")
end

function Quest22006:OnSubFinish2200604(arg1)
    print("OnSubFinish2200604")
end

function Quest22006:OnSubFailed2200604(arg1)
    print("OnSubFailed2200604")
end

function Quest22006:OnSubStart2200605(arg1)
    print("OnSubStart2200605")
end

function Quest22006:OnSubFinish2200605(arg1)
    print("OnSubFinish2200605")
end

function Quest22006:OnSubFailed2200605(arg1)
    print("OnSubFailed2200605")
end

function Quest22006:OnSubStart2200606(arg1)
    print("OnSubStart2200606")
end

function Quest22006:OnSubFinish2200606(arg1)
    print("OnSubFinish2200606")
end

function Quest22006:OnSubFailed2200606(arg1)
    print("OnSubFailed2200606")
end

return Quest22006
