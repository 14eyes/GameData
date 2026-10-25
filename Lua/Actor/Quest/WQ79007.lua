require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79007 = class("Quest79007", QuestActorProxy)
Quest79007.defaultAlias = "Quest79007"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest79007:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest79007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7900701"] = self.OnSubStart7900701,
        ["7900702"] = self.OnSubStart7900702,
        ["7900703"] = self.OnSubStart7900703,
        ["7900704"] = self.OnSubStart7900704,
        ["7900705"] = self.OnSubStart7900705,
        ["7900706"] = self.OnSubStart7900706
    }
end

function Quest79007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7900701"] = self.OnSubFinish7900701,
        ["7900702"] = self.OnSubFinish7900702,
        ["7900703"] = self.OnSubFinish7900703,
        ["7900704"] = self.OnSubFinish7900704,
        ["7900705"] = self.OnSubFinish7900705,
        ["7900706"] = self.OnSubFinish7900706
    }
end

function Quest79007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7900701"] = self.OnSubFailed7900701,
        ["7900702"] = self.OnSubFailed7900702,
        ["7900703"] = self.OnSubFailed7900703,
        ["7900704"] = self.OnSubFailed7900704,
        ["7900705"] = self.OnSubFailed7900705,
        ["7900706"] = self.OnSubFailed7900706
    }
end

function Quest79007:Start()
    print("Start")
end

function Quest79007:OnDestroy()
    print("OnDestroy")
end

function Quest79007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79007:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    actorMgr:GetActor("Q79007Trigger1"):DestroySelf()
end

function Quest79007:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 7900705)
        end

        print("Talk 7900701 Finishi Quest 7900705")
    end
end

function Quest79007:OnSubStart7900701(arg1)
    print("OnSubStart7900701")
    actorMgr:CreateActorWithPos(datas.Q79007Trigger1_.alias, datas.Q79007Trigger1_.script, datas.Q79007Trigger1_.id, 0, datas.Q79007Trigger1_.point.pos, datas.Q79007Trigger1_.point.rot, true, false, 4)
end

function Quest79007:OnSubFinish7900701(arg1)
    print("OnSubFinish7900701")
    self:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 79007)
end

function Quest79007:OnSubFailed7900701(arg1)
    print("OnSubFailed7900701")
end

function Quest79007:OnSubStart7900702(arg1)
    print("OnSubStart7900702")
end

function Quest79007:OnSubFinish7900702(arg1)
    print("OnSubFinish7900702")
end

function Quest79007:OnSubFailed7900702(arg1)
    print("OnSubFailed7900702")
end

function Quest79007:OnSubStart7900703(arg1)
    print("OnSubStart7900703")
end

function Quest79007:OnSubFinish7900703(arg1)
    print("OnSubFinish7900703")
end

function Quest79007:OnSubFailed7900703(arg1)
    print("OnSubFailed7900703")
end

function Quest79007:OnSubStart7900704(arg1)
    print("OnSubStart7900704")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.PaimonData.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
        self:RequestInteraction(npcs.PaimonData.alias)
    end, nil, questNpcCreateTask)
end

function Quest79007:OnSubFinish7900704(arg1)
    print("OnSubFinish7900704")
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    self:ActionSafeCall(function()
        questNpcActor:DestroyWithDisappear(false)
    end)
end

function Quest79007:OnSubFailed7900704(arg1)
    print("OnSubFailed7900704")
end

function Quest79007:OnSubStart7900705(arg1)
    print("OnSubStart7900705")
end

function Quest79007:OnSubFinish7900705(arg1)
    print("OnSubFinish7900705")
end

function Quest79007:OnSubFailed7900705(arg1)
    print("OnSubFailed7900705")
end

function Quest79007:OnSubStart7900706(arg1)
    print("OnSubStart7900706")
    self.ActionSafeCall(self, function()
        self:ShowTutorialDialog(819, function()
            self:FinishQuestID(false, 7900706)
        end)
    end)
end

function Quest79007:OnSubFinish7900706(arg1)
    print("OnSubFinish7900706")
end

function Quest79007:OnSubFailed7900706(arg1)
    print("OnSubFailed7900706")
end

return Quest79007
