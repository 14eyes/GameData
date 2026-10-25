require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11012 = class("Quest11012", QuestActorProxy)
Quest11012.defaultAlias = "Quest11012"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11012:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1101201"] = self.OnSubStart1101201,
        ["1101202"] = self.OnSubStart1101202,
        ["1101211"] = self.OnSubStart1101211,
        ["1101221"] = self.OnSubStart1101221,
        ["1101212"] = self.OnSubStart1101212,
        ["1101203"] = self.OnSubStart1101203,
        ["1101216"] = self.OnSubStart1101216,
        ["1101213"] = self.OnSubStart1101213,
        ["1101217"] = self.OnSubStart1101217,
        ["1101210"] = self.OnSubStart1101210,
        ["1101218"] = self.OnSubStart1101218,
        ["1101219"] = self.OnSubStart1101219,
        ["1101214"] = self.OnSubStart1101214,
        ["1101204"] = self.OnSubStart1101204,
        ["1101209"] = self.OnSubStart1101209,
        ["1101205"] = self.OnSubStart1101205,
        ["1101220"] = self.OnSubStart1101220,
        ["1101208"] = self.OnSubStart1101208,
        ["1101206"] = self.OnSubStart1101206,
        ["1101207"] = self.OnSubStart1101207,
        ["1101215"] = self.OnSubStart1101215
    }
end

function Quest11012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1101201"] = self.OnSubFinish1101201,
        ["1101202"] = self.OnSubFinish1101202,
        ["1101211"] = self.OnSubFinish1101211,
        ["1101221"] = self.OnSubFinish1101221,
        ["1101212"] = self.OnSubFinish1101212,
        ["1101203"] = self.OnSubFinish1101203,
        ["1101216"] = self.OnSubFinish1101216,
        ["1101213"] = self.OnSubFinish1101213,
        ["1101217"] = self.OnSubFinish1101217,
        ["1101210"] = self.OnSubFinish1101210,
        ["1101218"] = self.OnSubFinish1101218,
        ["1101219"] = self.OnSubFinish1101219,
        ["1101214"] = self.OnSubFinish1101214,
        ["1101204"] = self.OnSubFinish1101204,
        ["1101209"] = self.OnSubFinish1101209,
        ["1101205"] = self.OnSubFinish1101205,
        ["1101220"] = self.OnSubFinish1101220,
        ["1101208"] = self.OnSubFinish1101208,
        ["1101206"] = self.OnSubFinish1101206,
        ["1101207"] = self.OnSubFinish1101207,
        ["1101215"] = self.OnSubFinish1101215
    }
end

function Quest11012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1101201"] = self.OnSubFailed1101201,
        ["1101202"] = self.OnSubFailed1101202,
        ["1101211"] = self.OnSubFailed1101211,
        ["1101221"] = self.OnSubFailed1101221,
        ["1101212"] = self.OnSubFailed1101212,
        ["1101203"] = self.OnSubFailed1101203,
        ["1101216"] = self.OnSubFailed1101216,
        ["1101213"] = self.OnSubFailed1101213,
        ["1101217"] = self.OnSubFailed1101217,
        ["1101210"] = self.OnSubFailed1101210,
        ["1101218"] = self.OnSubFailed1101218,
        ["1101219"] = self.OnSubFailed1101219,
        ["1101214"] = self.OnSubFailed1101214,
        ["1101204"] = self.OnSubFailed1101204,
        ["1101209"] = self.OnSubFailed1101209,
        ["1101205"] = self.OnSubFailed1101205,
        ["1101220"] = self.OnSubFailed1101220,
        ["1101208"] = self.OnSubFailed1101208,
        ["1101206"] = self.OnSubFailed1101206,
        ["1101207"] = self.OnSubFailed1101207,
        ["1101215"] = self.OnSubFailed1101215
    }
end

function Quest11012:Start()
    print("Start")
end

function Quest11012:OnDestroy()
    print("OnDestroy")
end

function Quest11012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11012:BlackscreenGongziCreate1()
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.Npc10200Data.alias})
    self:ShowBlackScreen(0.5, 1.0, 0, function(arg1)
        arg1:CreateQuestNpcById(1101202, npcs.Npc10200Data.id)
        arg1:RequestInteraction(npcs.Npc10200Data.alias)
    end, nil, questNpcCreateTask)
end

function Quest11012:FinshQuest1101219()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1101219)
    end
end

function Quest11012:RunToTaskLoop()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc10265Data.alias)
    if actor:GetSubQuestState(1101220) == 2 then
        questNpcActor:RunToRouteTask(datas.DungeonRoutePointsData2, Quest11012.RunToTaskLoop)
    else
        if actor:GetSubQuestState(1101216) == 2 then
            questNpcActor:RunToRouteTask(datas.DungeonRoutePointsData3, Quest11012.RunToTaskLoop)
        else
            if actor:GetSubQuestState(1101220) == 3 then
                questNpcActor:Standby()
                actor:ClearSpeechBubbleTask()
            end
        end
    end
end

function Quest11012:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Invoke 1")
        self:FinishQuestID(false, 1101221)
    elseif arg1 == 2 then
    end
end

function Quest11012:PauseTask()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    actor:GetQuestNpcActor(npcs.Npc10265Data.alias):Standby()
    actor:ClearSpeechBubbleTask()
    if actor ~= nil then
        if actor:GetSubQuestState(1101219) == 2 then
            actor:FinishQuestID(false, 1101219)
        end
    end
end

function Quest11012:RunToRouteLight()
    actorMgr:GetActor(clientData.ActorAlias):GetQuestNpcActor(npcs.Npc10265Data.alias):RunTo(sceneData:GetDummyPoint(1055, "Q11012Route17").pos)
end

function Quest11012:OnSubStart1101201(arg1)
    print("OnSubStart1101201")
    actorMgr:CreateActorWithPos(datas.Q11012Trigger_.alias, datas.Q11012Trigger_.script, datas.Q11012Trigger_.id, 0, datas.Q11012Trigger_.point.pos, datas.Q11012Trigger_.point.rot, true, false, 3)
end

function Quest11012:OnSubFinish1101201(arg1)
    print("OnSubFinish1101201")
end

function Quest11012:OnSubFailed1101201(arg1)
    print("OnSubFailed1101201")
end

function Quest11012:OnSubStart1101202(arg1)
    print("OnSubStart1101202")
    self:CallDelay(0, self.BlackscreenGongziCreate1)
end

function Quest11012:OnSubFinish1101202(arg1)
    print("OnSubFinish1101202")
    self:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:DestroyQuestNpcActor(npcs.Npc10265Data.alias, 3)
end

function Quest11012:OnSubFailed1101202(arg1)
    print("OnSubFailed1101202")
end

function Quest11012:OnSubStart1101211(arg1)
    print("OnSubStart1101211")
end

function Quest11012:OnSubFinish1101211(arg1)
    print("OnSubFinish1101211")
end

function Quest11012:OnSubFailed1101211(arg1)
    print("OnSubFailed1101211")
end

function Quest11012:OnSubStart1101221(arg1)
    print("OnSubStart1101221")
end

function Quest11012:OnSubFinish1101221(arg1)
    print("OnSubFinish1101221")
end

function Quest11012:OnSubFailed1101221(arg1)
    print("OnSubFailed1101221")
end

function Quest11012:OnSubStart1101212(arg1)
    print("OnSubStart1101212")
    self:CreateQuestNpc(arg1, npcs.Npc10200Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc10265Data.alias):Standby()
    self:ShowBlackScreen(0, 1, 0.5)
end

function Quest11012:OnSubFinish1101212(arg1)
    self:ActionSafeCall(function(arg1)
        print("OnSubFinish1101212")
        arg1:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 1055)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest11012:OnSubFailed1101212(arg1)
    print("OnSubFailed1101212")
end

function Quest11012:OnSubStart1101203(arg1)
    print("OnSubStart1101203")
end

function Quest11012:OnSubFinish1101203(arg1)
    print("OnSubFinish1101203")
end

function Quest11012:OnSubFailed1101203(arg1)
    print("OnSubFailed1101203")
end

function Quest11012:OnSubStart1101216(arg1)
    print("OnSubStart1101216")
    self:GetQuestNpcActor(npcs.Npc10265Data.alias):RunToRouteTask(datas.DungeonRoutePointsData3, self.RunToTaskLoop)
end

function Quest11012:OnSubFinish1101216(arg1)
    print("OnSubFinish1101216")
end

function Quest11012:OnSubFailed1101216(arg1)
    print("OnSubFailed1101216")
end

function Quest11012:OnSubStart1101213(arg1)
    print("OnSubStart1101213")
    self.CallDelay(self, 2, function()
        local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.Npc10310Data.alias})
        self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc10310Data.id, 1)
            arg1_2:RequestInteraction(npcs.Npc10310Data.alias)
        end, nil, questNpcCreateTask)

        self:GetQuestNpcActor(npcs.Npc10265Data.alias):Standby()
    end)
end

function Quest11012:OnSubFinish1101213(arg1)
    print("OnSubFinish1101213")
    self:DestroyQuestNpcActor(npcs.Npc10310Data.alias, 1055)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 3)
end

function Quest11012:OnSubFailed1101213(arg1)
    print("OnSubFailed1101213")
end

function Quest11012:OnSubStart1101217(arg1)
    print("OnSubStart1101217")
    self:GetQuestNpcActor(npcs.Npc10265Data.alias):DoFreeStyle(0, true, nil, true, true)
    actorMgr:CreateActorWithPos(datas.Q11012TriggerDungeon_.alias, datas.Q11012TriggerDungeon_.script, datas.Q11012TriggerDungeon_.id, 0, datas.Q11012TriggerDungeon_.point.pos, datas.Q11012TriggerDungeon_.point.rot, true, false, 3)
end

function Quest11012:OnSubFinish1101217(arg1)
    print("OnSubFinish1101217")
end

function Quest11012:OnSubFailed1101217(arg1)
    print("OnSubFailed1101217")
end

function Quest11012:OnSubStart1101210(arg1)
    print("OnSubStart1101210")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.Npc10310Data.alias})
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10310Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc10310Data.alias)
    end, nil, questNpcCreateTask)
end

function Quest11012:OnSubFinish1101210(arg1)
    print("OnSubFinish1101210")
    self:DestroyQuestNpcActor(npcs.Npc10310Data.alias, 1055)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 3)
end

function Quest11012:OnSubFailed1101210(arg1)
    print("OnSubFailed1101210")
end

function Quest11012:OnSubStart1101218(arg1)
    print("OnSubStart1101218")
    self:GetQuestNpcActor(npcs.Npc10265Data.alias):DoFreeStyle(1320, true, nil, true, true, false)
    self:CallDelay(4, self.RunToRouteLight)
end

function Quest11012:OnSubFinish1101218(arg1)
    print("OnSubFinish1101218")
end

function Quest11012:OnSubFailed1101218(arg1)
    print("OnSubFailed1101218")
end

function Quest11012:OnSubStart1101219(arg1)
    print("OnSubStart1101219")
    self:CreateQuestNpc(arg1, npcs.Npc10265Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc10265Data.alias)
    questNpcActor:Standby()
    questNpcActor:RunToRouteTask(datas.RoutePointsData, self.FinshQuest1101219, self.PauseTask)
end

function Quest11012:OnSubFinish1101219(arg1)
    print("OnSubFinish1101219")
end

function Quest11012:OnSubFailed1101219(arg1)
    print("OnSubFailed1101219")
end

function Quest11012:OnSubStart1101214(arg1)
    print("OnSubStart1101214")
    self:RequestInteraction(npcs.Npc10265Data.alias)
end

function Quest11012:OnSubFinish1101214(arg1)
    print("OnSubFinish1101214")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 3)
end

function Quest11012:OnSubFailed1101214(arg1)
    print("OnSubFailed1101214")
end

function Quest11012:OnSubStart1101204(arg1)
    print("OnSubStart1101204")
end

function Quest11012:OnSubFinish1101204(arg1)
    print("OnSubFinish1101204")
    self:ShowBlackScreen(0.5, 0, 0)
end

function Quest11012:OnSubFailed1101204(arg1)
    print("OnSubFailed1101204")
end

function Quest11012:OnSubStart1101209(arg1)
    print("OnSubStart1101209")
    self:RequestInteraction(npcs.Npc10265Data.alias)
end

function Quest11012:OnSubFinish1101209(arg1)
    print("OnSubFinish1101209")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11012:OnSubFailed1101209(arg1)
    print("OnSubFailed1101209")
end

function Quest11012:OnSubStart1101205(arg1)
    print("OnSubStart1101205")
    self:CreateQuestNpc(arg1, npcs.Npc10200Data.id, 2)
end

function Quest11012:OnSubFinish1101205(arg1)
    print("OnSubFinish1101205")
    self:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 1055)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11012:OnSubFailed1101205(arg1)
    print("OnSubFailed1101205")
end

function Quest11012:OnSubStart1101220(arg1)
    print("OnSubStart1101220")
    self:GetQuestNpcActor(npcs.Npc10265Data.alias):RunToRouteTask(datas.DungeonRoutePointsData2, self.RunToTaskLoop, self.PauseTask)
    self:CreateSpeechBubbleTask(npcs.Npc10265Data.id, 110120501, 3, true, 0, 0)
    self:GetQuestNpcActor(npcs.Npc10200Data.alias):DoFreeStyle(4100, true)
end

function Quest11012:OnSubFinish1101220(arg1)
    print("OnSubFinish1101220")
end

function Quest11012:OnSubFailed1101220(arg1)
    print("OnSubFailed1101220")
end

function Quest11012:OnSubStart1101208(arg1)
    print("OnSubStart1101208")
end

function Quest11012:OnSubFinish1101208(arg1)
    print("OnSubFinish1101208")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:DestroyQuestNpcActor(npcs.Npc10265Data.alias, 1055)
end

function Quest11012:OnSubFailed1101208(arg1)
    print("OnSubFailed1101208")
end

function Quest11012:OnSubStart1101206(arg1)
    print("OnSubStart1101206")
    self:CreateQuestNpc(arg1, npcs.Npc2067Data.id, 1)
end

function Quest11012:OnSubFinish1101206(arg1)
    print("OnSubFinish1101206")
end

function Quest11012:OnSubFailed1101206(arg1)
    print("OnSubFailed1101206")
end

function Quest11012:OnSubStart1101207(arg1)
    print("OnSubStart1101207")
    self:RequestInteraction(npcs.Npc2067Data.alias)
    self:ShowBlackScreen(0, 1, 0.5)
end

function Quest11012:OnSubFinish1101207(arg1)
    print("OnSubFinish1101207")
    self:DestroyQuestNpcActor(npcs.Npc2067Data.alias, 1033)
    self:DestroyQuestNpcActor(npcs.Npc10265Data.alias, 1033)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11012:OnSubFailed1101207(arg1)
    print("OnSubFailed1101207")
end

function Quest11012:OnSubStart1101215(arg1)
    print("OnSubStart1101215")
    self:CreateQuestNpc(arg1, npcs.Npc10200Data.id, 1)
    self:RequestInteraction(npcs.Npc10200Data.alias)
end

function Quest11012:OnSubFinish1101215(arg1)
    print("OnSubFinish1101215")
    self:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 1033)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11012:OnSubFailed1101215(arg1)
    print("OnSubFailed1101215")
end

return Quest11012
