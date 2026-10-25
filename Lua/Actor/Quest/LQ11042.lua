require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11042 = class("Quest11042", QuestActorProxy)
Quest11042.defaultAlias = "Quest11042"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest11042:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest11042:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1104201"] = self.OnSubStart1104201,
        ["1104202"] = self.OnSubStart1104202,
        ["1104203"] = self.OnSubStart1104203,
        ["1104204"] = self.OnSubStart1104204,
        ["1104208"] = self.OnSubStart1104208,
        ["1104209"] = self.OnSubStart1104209,
        ["1104212"] = self.OnSubStart1104212,
        ["1104213"] = self.OnSubStart1104213,
        ["1104214"] = self.OnSubStart1104214,
        ["1104215"] = self.OnSubStart1104215,
        ["1104210"] = self.OnSubStart1104210,
        ["1104211"] = self.OnSubStart1104211,
        ["1104205"] = self.OnSubStart1104205,
        ["1104206"] = self.OnSubStart1104206,
        ["1104216"] = self.OnSubStart1104216,
        ["1104217"] = self.OnSubStart1104217,
        ["1104207"] = self.OnSubStart1104207
    }
end

function Quest11042:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1104201"] = self.OnSubFinish1104201,
        ["1104202"] = self.OnSubFinish1104202,
        ["1104203"] = self.OnSubFinish1104203,
        ["1104204"] = self.OnSubFinish1104204,
        ["1104208"] = self.OnSubFinish1104208,
        ["1104209"] = self.OnSubFinish1104209,
        ["1104212"] = self.OnSubFinish1104212,
        ["1104213"] = self.OnSubFinish1104213,
        ["1104214"] = self.OnSubFinish1104214,
        ["1104215"] = self.OnSubFinish1104215,
        ["1104210"] = self.OnSubFinish1104210,
        ["1104211"] = self.OnSubFinish1104211,
        ["1104205"] = self.OnSubFinish1104205,
        ["1104206"] = self.OnSubFinish1104206,
        ["1104216"] = self.OnSubFinish1104216,
        ["1104207"] = self.OnSubFinish1104207
    }
end

function Quest11042:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1104201"] = self.OnSubFailed1104201,
        ["1104202"] = self.OnSubFailed1104202,
        ["1104203"] = self.OnSubFailed1104203,
        ["1104204"] = self.OnSubFailed1104204,
        ["1104208"] = self.OnSubFailed1104208,
        ["1104209"] = self.OnSubFailed1104209,
        ["1104212"] = self.OnSubFailed1104212,
        ["1104213"] = self.OnSubFailed1104213,
        ["1104214"] = self.OnSubFailed1104214,
        ["1104215"] = self.OnSubFailed1104215,
        ["1104210"] = self.OnSubFailed1104210,
        ["1104211"] = self.OnSubFailed1104211,
        ["1104205"] = self.OnSubFailed1104205,
        ["1104206"] = self.OnSubFailed1104206,
        ["1104216"] = self.OnSubFailed1104216,
        ["1104207"] = self.OnSubFailed1104207
    }
end

function Quest11042:Start()
    print("Start")
end

function Quest11042:OnDestroy()
    print("OnDestroy")
end

function Quest11042:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11042:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11042:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11042:NarratorGet1()
    print("NarratorGet1")
    self:NarratorOnlyTaskByData(datas.NarratorCollect1, nil, 11042)
end

function Quest11042:NarratorGet2()
    print("NarratorGet2")
    self:NarratorOnlyTaskByData(datas.NarratorCollect2, nil, 11042)
end

function Quest11042:NarratorGet3()
    print("NarratorGet3")
    self:NarratorOnlyTaskByData(datas.NarratorCollect, nil, 11042)
end

function Quest11042:AfterTalk()
    print("AfterTalk")
    self:CreateQuestNpcById(1104203, npcs.Npc1018Data.id, 0)
    self:RequestInteraction(npcs.Npc1018Data.alias)
end

function Quest11042:AfterFight()
    print("AfterFight")
    self:ShowBlackScreen(0.5, 1, 0.5, self.AfterTalk, nil, nil, "")
end

function Quest11042:OnSubStart1104201(arg1)
    print("OnSubStart1104201")
    actorMgr:CreateActorWithPos(datas.Q1104201Trigger_.alias, datas.Q1104201Trigger_.script, datas.Q1104201Trigger_.id, 0, datas.Q1104201Trigger_.point.pos, datas.Q1104201Trigger_.point.rot, true, false, 3)
end

function Quest11042:OnSubFinish1104201(arg1)
    print("OnSubFinish1104201")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest11042:OnSubFailed1104201(arg1)
    print("OnSubFailed1104201")
end

function Quest11042:OnSubStart1104202(arg1)
    print("OnSubStart1104202")
end

function Quest11042:OnSubFinish1104202(arg1)
    print("OnSubFinish1104202")
end

function Quest11042:OnSubFailed1104202(arg1)
    print("OnSubFailed1104202")
end

function Quest11042:OnSubStart1104203(arg1)
    print("OnSubStart1104203")
    self:CallDelay(2, self.AfterFight)
end

function Quest11042:OnSubFinish1104203(arg1)
    print("OnSubFinish1104203")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest11042:OnSubFailed1104203(arg1)
    print("OnSubFailed1104203")
end

function Quest11042:OnSubStart1104204(arg1)
    print("OnSubStart1104204")
end

function Quest11042:OnSubFinish1104204(arg1)
    print("OnSubFinish1104204")
end

function Quest11042:OnSubFailed1104204(arg1)
    print("OnSubFailed1104204")
end

function Quest11042:OnSubStart1104208(arg1)
    print("OnSubStart1104208")
end

function Quest11042:OnSubFinish1104208(arg1)
    print("OnSubFinish1104208")
end

function Quest11042:OnSubFailed1104208(arg1)
    print("OnSubFailed1104208")
end

function Quest11042:OnSubStart1104209(arg1)
    print("OnSubStart1104209")
end

function Quest11042:OnSubFinish1104209(arg1)
    print("OnSubFinish1104209")
end

function Quest11042:OnSubFailed1104209(arg1)
    print("OnSubFailed1104209")
end

function Quest11042:OnSubStart1104212(arg1)
    print("OnSubStart1104212")
end

function Quest11042:OnSubFinish1104212(arg1)
    print("OnSubFinish1104212")
end

function Quest11042:OnSubFailed1104212(arg1)
    print("OnSubFailed1104212")
end

function Quest11042:OnSubStart1104213(arg1)
    print("OnSubStart1104213")
end

function Quest11042:OnSubFinish1104213(arg1)
    print("OnSubFinish1104213")
end

function Quest11042:OnSubFailed1104213(arg1)
    print("OnSubFailed1104213")
end

function Quest11042:OnSubStart1104214(arg1)
    print("OnSubStart1104214")
end

function Quest11042:OnSubFinish1104214(arg1)
    print("OnSubFinish1104214")
    self:NarratorGet1()
end

function Quest11042:OnSubFailed1104214(arg1)
    print("OnSubFailed1104214")
end

function Quest11042:OnSubStart1104215(arg1)
    print("OnSubStart1104215")
end

function Quest11042:OnSubFinish1104215(arg1)
    print("OnSubFinish1104215")
    self:NarratorGet2()
end

function Quest11042:OnSubFailed1104215(arg1)
    print("OnSubFailed1104215")
end

function Quest11042:OnSubStart1104210(arg1)
    print("OnSubStart1104210")
end

function Quest11042:OnSubFinish1104210(arg1)
    print("OnSubFinish1104210")
    self:NarratorGet3()
end

function Quest11042:OnSubFailed1104210(arg1)
    print("OnSubFailed1104210")
end

function Quest11042:OnSubStart1104211(arg1)
    print("OnSubStart1104211")
end

function Quest11042:OnSubFinish1104211(arg1)
    print("OnSubFinish1104211")
end

function Quest11042:OnSubFailed1104211(arg1)
    print("OnSubFailed1104211")
end

function Quest11042:OnSubStart1104205(arg1)
    print("OnSubStart1104205")
    self:CreateQuestNpc(arg1, npcs.Npc158701Data.id, 2)
    actorMgr:CreateActorWithPos(datas.Q1104205Trigger_.alias, datas.Q1104205Trigger_.script, datas.Q1104205Trigger_.id, 0, datas.Q1104205Trigger_.point.pos, datas.Q1104205Trigger_.point.rot, true, false, 3)
end

function Quest11042:OnSubFinish1104205(arg1)
    print("OnSubFinish1104205")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)

    self:NarratorOnlyTaskByData(datas.NarratorDrink, nil, 11042)
end

function Quest11042:OnSubFailed1104205(arg1)
    print("OnSubFailed1104205")
end

function Quest11042:OnSubStart1104206(arg1)
    print("OnSubStart1104206")
    self:UnSpawn(gadgets.DrugData.alias)
    self:DelaySpawnGadget(arg1, gadgets.DrugData.id, 1, 0)
end

function Quest11042:OnSubFinish1104206(arg1)
    print("OnSubFinish1104206")
    self:UnSpawn(gadgets.DrugData.alias)
end

function Quest11042:OnSubFailed1104206(arg1)
    print("OnSubFailed1104206")
end

function Quest11042:OnSubStart1104216(arg1)
    print("OnSubStart1104216")
end

function Quest11042:OnSubFinish1104216(arg1)
    print("OnSubFinish1104216")
end

function Quest11042:OnSubFailed1104216(arg1)
    print("OnSubFailed1104216")
end

function Quest11042:OnSubStart1104217(arg1)
    print("OnSubStart1104217")
    self:CallDelay(7, function(arg1)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1104217)
        end
    end)
end

function Quest11042:OnSubStart1104207(arg1)
    print("OnSubStart1104207")
end

function Quest11042:OnSubFinish1104207(arg1)
    print("OnSubFinish1104207")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest11042:OnSubFailed1104207(arg1)
    print("OnSubFailed1104207")
end

return Quest11042
