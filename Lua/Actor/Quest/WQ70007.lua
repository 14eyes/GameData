require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70007 = class("Quest70007", QuestActorProxy)
Quest70007.defaultAlias = "Quest70007"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70007:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7000701"] = self.OnSubStart7000701,
        ["7000702"] = self.OnSubStart7000702,
        ["7000703"] = self.OnSubStart7000703,
        ["7000704"] = self.OnSubStart7000704,
        ["7000705"] = self.OnSubStart7000705,
        ["7000706"] = self.OnSubStart7000706,
        ["7000707"] = self.OnSubStart7000707,
        ["7000708"] = self.OnSubStart7000708,
        ["7000709"] = self.OnSubStart7000709,
        ["7000710"] = self.OnSubStart7000710,
        ["7000711"] = self.OnSubStart7000711,
        ["7000712"] = self.OnSubStart7000712
    }
end

function Quest70007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7000701"] = self.OnSubFinish7000701,
        ["7000702"] = self.OnSubFinish7000702,
        ["7000703"] = self.OnSubFinish7000703,
        ["7000704"] = self.OnSubFinish7000704,
        ["7000705"] = self.OnSubFinish7000705,
        ["7000706"] = self.OnSubFinish7000706,
        ["7000707"] = self.OnSubFinish7000707,
        ["7000708"] = self.OnSubFinish7000708,
        ["7000709"] = self.OnSubFinish7000709,
        ["7000710"] = self.OnSubFinish7000710,
        ["7000711"] = self.OnSubFinish7000711,
        ["7000712"] = self.OnSubFinish7000712
    }
end

function Quest70007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7000701"] = self.OnSubFailed7000701,
        ["7000702"] = self.OnSubFailed7000702,
        ["7000703"] = self.OnSubFailed7000703,
        ["7000704"] = self.OnSubFailed7000704,
        ["7000705"] = self.OnSubFailed7000705,
        ["7000706"] = self.OnSubFailed7000706,
        ["7000707"] = self.OnSubFailed7000707,
        ["7000708"] = self.OnSubFailed7000708,
        ["7000709"] = self.OnSubFailed7000709,
        ["7000710"] = self.OnSubFailed7000710,
        ["7000711"] = self.OnSubFailed7000711,
        ["7000712"] = self.OnSubFailed7000712
    }
end

function Quest70007:Start()
    print("Start")
end

function Quest70007:OnDestroy()
    print("OnDestroy")
end

function Quest70007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70007:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.Npc10023Data.alias, 1004)
        self:DestroyQuestNpcActor(npcs.Npc10024Data.alias, 1004)
        self:DestroyQuestNpcActor(npcs.Npc10025Data.alias, 1004)
        self:DestroyQuestNpcActor(npcs.Npc10026Data.alias, 1004)
        self:DestroyQuestNpcActor(npcs.Npc10027Data.alias, 1004)
        self:DestroyQuestNpcActor(npcs.Npc10028Data.alias, 1004)
        self:DestroyQuestNpcActor(npcs.Npc1648Data.alias, 1004)
        self:NotifyTo("Npc1565", 0, true)
    end)
end

function Quest70007:LoverBehavior(arg1)
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc10023Data.alias)
    questNpcActor:DoFreeStyle(1170, false, nil, true, true)
    questNpcActor:LookAt({x = -23.957, y = -3.427, z = -15.483})
    local v = self.GetQuestNpcActor(self, npcs.Npc10024Data.alias)
    v:DoFreeStyle(1130, false, nil, true, true)
    v:LookAt({x = -23.957, y = -3.427, z = -15.483})
    self.CreateSpeechBubbleTask(self, npcs.Npc10023Data.id, 700075205, 2, true, 3, 3)
    self.CallDelay(self, 1, function()
        self:CreateSpeechBubbleTask(npcs.Npc10024Data.id, 700075206, 2, true, 3, 3)
    end)

    local questNpcActor2 = self.GetQuestNpcActor(self, npcs.Npc10025Data.alias)
    questNpcActor2:DoFreeStyle(1030, false, nil, true, true)
    questNpcActor2:LookAt({x = -13.281, y = -4.556, z = 5.631})
    local questNpcActor3 = self.GetQuestNpcActor(self, npcs.Npc10026Data.alias)
    questNpcActor3:DoFreeStyle(1090, false, nil, true, true)
    questNpcActor3:LookAt({x = -13.281, y = -4.556, z = 5.631})
    self.CallDelay(self, 0.3, function()
        self:CreateSpeechBubbleTask(npcs.Npc10025Data.id, 700075305, 2, true, 3, 3)
    end)

    self.CallDelay(self, 1.3, function()
        self:CreateSpeechBubbleTask(npcs.Npc10026Data.id, 700075306, 2, true, 3, 3)
    end)

    local questNpcActor4 = self.GetQuestNpcActor(self, npcs.Npc10027Data.alias)
    questNpcActor4:DoFreeStyle(1190, false, nil, true, true)
    questNpcActor4:EnableHeadCtrl(false)
    local questNpcActor5 = self.GetQuestNpcActor(self, npcs.Npc10028Data.alias)
    questNpcActor5:DoFreeStyle(1190, false, nil, true, true)
    questNpcActor5:EnableHeadCtrl(false)
    self.CallDelay(self, 0.7, function()
        self:CreateSpeechBubbleTask(npcs.Npc10027Data.id, 700075405, 2, true, 3, 3)
    end)

    self.CallDelay(self, 1.7, function()
        self:CreateSpeechBubbleTask(npcs.Npc10028Data.id, 700075406, 2, true, 3, 3)
    end)
end

function Quest70007:OnSubStart7000712(arg1)
    print("OnSubStart7000712")
    self.CreateQuestNpc(self, arg1, npcs.Npc10023Data.id, 1)
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc10023Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true)
    questNpcActor:LookAt({x = -23.957, y = -3.427, z = -15.483})
    self.CreateQuestNpc(self, arg1, npcs.Npc10024Data.id, 2)
    local v = self.GetQuestNpcActor(self, npcs.Npc10024Data.alias)
    v:DoFreeStyle(1130, true, nil, true, true)
    v:LookAt({x = -23.957, y = -3.427, z = -15.483})
    self.CreateQuestNpc(self, arg1, npcs.Npc10025Data.id, 3)
    local questNpcActor2 = self.GetQuestNpcActor(self, npcs.Npc10025Data.alias)
    questNpcActor2:DoFreeStyle(1030, true, nil, true, true)
    questNpcActor2:LookAt({x = -13.281, y = -4.556, z = 5.631})
    self.CreateQuestNpc(self, arg1, npcs.Npc10026Data.id, 4)
    local questNpcActor3 = self.GetQuestNpcActor(self, npcs.Npc10026Data.alias)
    questNpcActor3:DoFreeStyle(1090, true, nil, true, true)
    questNpcActor3:LookAt({x = -13.281, y = -4.556, z = 5.631})
    self.CreateQuestNpc(self, arg1, npcs.Npc10027Data.id, 5)
    local questNpcActor4 = self.GetQuestNpcActor(self, npcs.Npc10027Data.alias)
    questNpcActor4:DoFreeStyle(1190, true, nil, true, true)
    questNpcActor4:EnableHeadCtrl(false)
    self.CreateQuestNpc(self, arg1, npcs.Npc10028Data.id, 6)
    local questNpcActor5 = self.GetQuestNpcActor(self, npcs.Npc10028Data.alias)
    questNpcActor5:DoFreeStyle(1190, true, nil, true, true)
    questNpcActor5:EnableHeadCtrl(false)
    self.CreateSpeechBubbleTask(self, npcs.Npc10023Data.id, 700075203, 2, true, 3, 3)
    self.CallDelay(self, 1, function()
        self:CreateSpeechBubbleTask(npcs.Npc10024Data.id, 700075204, 2, true, 3, 3)
    end)

    self.CallDelay(self, 0.3, function()
        self:CreateSpeechBubbleTask(npcs.Npc10025Data.id, 700075303, 2, true, 3, 3)
    end)

    self.CallDelay(self, 1.3, function()
        self:CreateSpeechBubbleTask(npcs.Npc10026Data.id, 700075304, 2, true, 3, 3)
    end)

    self.CallDelay(self, 0.7, function()
        self:CreateSpeechBubbleTask(npcs.Npc10027Data.id, 700075403, 2, true, 3, 3)
    end)

    self.CallDelay(self, 1.7, function()
        self:CreateSpeechBubbleTask(npcs.Npc10028Data.id, 700075404, 2, true, 3, 3)
    end)
end

function Quest70007:OnSubFinish7000712(arg1)
    print("OnSubFinish7000701")
end

function Quest70007:OnSubFailed7000712(arg1)
    print("OnSubFailed7000701")
end

function Quest70007:OnSubStart7000702(arg1)
    print("OnSubStart7000702")
end

function Quest70007:OnSubFinish7000702(arg1)
    print("OnSubFinish7000702")
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc10023Data.alias)
        questNpcActor:DoFreeStyle(1170, false, nil, true, true)
        questNpcActor:LookAt({x = -23.957, y = -3.427, z = -15.483})
        local v = self:GetQuestNpcActor(npcs.Npc10024Data.alias)
        v:DoFreeStyle(1130, false, nil, true, true)
        v:LookAt({x = -23.957, y = -3.427, z = -15.483})
        self:CreateSpeechBubbleTask(npcs.Npc10023Data.id, 700075205, 2, true, 3, 3)
        self:CallDelay(1, function()
            self:CreateSpeechBubbleTask(npcs.Npc10024Data.id, 700075206, 2, true, 3, 3)
        end)
    end)
end

function Quest70007:OnSubFailed7000702(arg1)
    print("OnSubFailed7000702")
end

function Quest70007:OnSubStart7000703(arg1)
    print("OnSubStart7000703")
end

function Quest70007:OnSubFinish7000703(arg1)
    print("OnSubFinish7000703")
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc10023Data.alias)
        questNpcActor:DoFreeStyle(1170, false, nil, true, true)
        questNpcActor:LookAt({x = -13.281, y = -4.556, z = 5.631})
        local v = self:GetQuestNpcActor(npcs.Npc10024Data.alias)
        v:DoFreeStyle(1130, false, nil, true, true)
        v:LookAt({x = -13.281, y = -4.556, z = 5.631})
        self:CreateSpeechBubbleTask(npcs.Npc10025Data.id, 700075305, 2, true, 3, 3)
        self:CallDelay(1, function()
            self:CreateSpeechBubbleTask(npcs.Npc10026Data.id, 700075306, 2, true, 3, 3)
        end)
    end)
end

function Quest70007:OnSubFailed7000703(arg1)
    print("OnSubFailed7000703")
end

function Quest70007:OnSubStart7000704(arg1)
    print("OnSubStart7000704")
end

function Quest70007:OnSubFinish7000704(arg1)
    print("OnSubFinish7000704")
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc10023Data.alias)
        questNpcActor:DoFreeStyle(1190, false, nil, true, true)
        questNpcActor:LookAt({x = -13.281, y = -4.556, z = 5.631})
        questNpcActor:EnableHeadCtrl(false)
        local v = self:GetQuestNpcActor(npcs.Npc10024Data.alias)
        v:DoFreeStyle(1190, false, nil, true, true)
        v:LookAt({x = -13.281, y = -4.556, z = 5.631})
        v:EnableHeadCtrl(false)
        self:CreateSpeechBubbleTask(npcs.Npc10025Data.id, 700075305, 2, true, 3, 3)
        self:CallDelay(1, function()
            self:CreateSpeechBubbleTask(npcs.Npc10026Data.id, 700075306, 2, true, 3, 3)
        end)
    end)
end

function Quest70007:OnSubFailed7000704(arg1)
    print("OnSubFailed7000704")
end

function Quest70007:OnSubStart7000705(arg1)
    print("OnSubStart7000705")
end

function Quest70007:OnSubFinish7000705(arg1)
    print("OnSubFinish7000705")
end

function Quest70007:OnSubFailed7000705(arg1)
    print("OnSubFailed7000705")
end

function Quest70007:OnSubStart7000706(arg1)
    print("OnSubStart7000706")
    if self.GetQuestVar(self, arg1.QuestConfigId, 0) == 1 then
        if self.GetSubQuestState(self, 7000702) == 3 then
            local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc10023Data.alias)
            questNpcActor:DoFreeStyle(1170, false, nil, true, true)
            questNpcActor:LookAt({x = -23.957, y = -3.427, z = -15.483})
            local v = self.GetQuestNpcActor(self, npcs.Npc10024Data.alias)
            v:DoFreeStyle(1130, false, nil, true, true)
            v:LookAt({x = -23.957, y = -3.427, z = -15.483})
            self.CreateSpeechBubbleTask(self, npcs.Npc10023Data.id, 700075205, 2, true, 3, 3)
            self.CallDelay(self, 1, function()
                self:CreateSpeechBubbleTask(npcs.Npc10024Data.id, 700075206, 2, true, 3, 3)
            end)
        else
            local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc10023Data.alias)
            questNpcActor:DoFreeStyle(1170, true, nil, true, true)
            questNpcActor:LookAt({x = -23.957, y = -3.427, z = -15.483})
            local v = self.GetQuestNpcActor(self, npcs.Npc10024Data.alias)
            v:DoFreeStyle(1130, true, nil, true, true)
            v:LookAt({x = -23.957, y = -3.427, z = -15.483})
            self.CreateSpeechBubbleTask(self, npcs.Npc10023Data.id, 700075203, 2, true, 3, 3)
            self.CallDelay(self, 1, function()
                self:CreateSpeechBubbleTask(npcs.Npc10024Data.id, 700075204, 2, true, 3, 3)
            end)
        end

        if self.GetSubQuestState(self, 7000703) == 3 then
            local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc10025Data.alias)
            questNpcActor:DoFreeStyle(1030, true, nil, true, true)
            questNpcActor:LookAt({x = -13.281, y = -4.556, z = 5.631})
            local v = self.GetQuestNpcActor(self, npcs.Npc10026Data.alias)
            v:DoFreeStyle(1090, true, nil, true, true)
            v:LookAt({x = -13.281, y = -4.556, z = 5.631})
            self.CallDelay(self, 0.3, function()
                self:CreateSpeechBubbleTask(npcs.Npc10025Data.id, 700075305, 2, true, 3, 3)
            end)

            self.CallDelay(self, 1.3, function()
                self:CreateSpeechBubbleTask(npcs.Npc10026Data.id, 700075306, 2, true, 3, 3)
            end)
        else
            local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc10023Data.alias)
            questNpcActor:DoFreeStyle(1170, true, nil, true, true)
            questNpcActor:LookAt({x = -23.957, y = -3.427, z = -15.483})
            local v = self.GetQuestNpcActor(self, npcs.Npc10024Data.alias)
            v:DoFreeStyle(1130, true, nil, true, true)
            v:LookAt({x = -23.957, y = -3.427, z = -15.483})
            self.CallDelay(self, 0.3, function()
                self:CreateSpeechBubbleTask(npcs.Npc10025Data.id, 700075303, 2, true, 3, 3)
            end)

            self.CallDelay(self, 1.3, function()
                self:CreateSpeechBubbleTask(npcs.Npc10026Data.id, 700075304, 2, true, 3, 3)
            end)
        end

        if self.GetSubQuestState(self, 7000704) == 3 then
            local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc10027Data.alias)
            questNpcActor:DoFreeStyle(1190, true, nil, true, true)
            questNpcActor:EnableHeadCtrl(false)
            local v = self.GetQuestNpcActor(self, npcs.Npc10028Data.alias)
            v:DoFreeStyle(1190, true, nil, true, true)
            v:EnableHeadCtrl(false)
            self.CallDelay(self, 0.7, function()
                self:CreateSpeechBubbleTask(npcs.Npc10027Data.id, 700075405, 2, true, 3, 3)
            end)

            self.CallDelay(self, 1.7, function()
                self:CreateSpeechBubbleTask(npcs.Npc10028Data.id, 700075406, 2, true, 3, 3)
            end)
        else
            local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc10027Data.alias)
            questNpcActor:DoFreeStyle(1190, true, nil, true, true)
            questNpcActor:EnableHeadCtrl(false)
            local v = self.GetQuestNpcActor(self, npcs.Npc10028Data.alias)
            v:DoFreeStyle(1190, true, nil, true, true)
            v:EnableHeadCtrl(false)
            self.CallDelay(self, 0.7, function()
                self:CreateSpeechBubbleTask(npcs.Npc10027Data.id, 700075403, 2, true, 3, 3)
            end)

            self.CallDelay(self, 1.7, function()
                self:CreateSpeechBubbleTask(npcs.Npc10028Data.id, 700075404, 2, true, 3, 3)
            end)
        end
    end
end

function Quest70007:OnSubFinish7000706(arg1)
    print("OnSubFinish7000706")
end

function Quest70007:OnSubFailed7000706(arg1)
    print("OnSubFailed7000706")
end

function Quest70007:OnSubStart7000707(arg1)
    print("OnSubStart7000707")
    self.LoverBehavior(self)
    self.ActionSafeCall(self, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function()
            self:CreateQuestNpc(arg1, npcs.PaimonData.id)
            self:RequestInteraction(npcs.PaimonData.alias)
        end)
    end)
end

function Quest70007:OnSubFinish7000707(arg1)
    print("OnSubFinish7000707")
end

function Quest70007:OnSubFailed7000707(arg1)
    print("OnSubFailed7000707")
end

function Quest70007:OnSubStart7000708(arg1)
    print("OnSubStart7000708")
    self:LoverBehavior()
    self:CreateQuestNpc(arg1, npcs.Npc1648Data.id)
end

function Quest70007:OnSubFinish7000708(arg1)
    print("OnSubFinish7000708")
end

function Quest70007:OnSubFailed7000708(arg1)
    print("OnSubFailed7000708")
end

function Quest70007:OnSubStart7000709(arg1)
    print("OnSubStart7000709")
    self:LoverBehavior()
    actorMgr:CreateActorWithPos(datas.Q70007Trigger_.alias, datas.Q70007Trigger_.script, datas.Q70007Trigger_.id, 0, datas.Q70007Trigger_.point.pos, datas.Q70007Trigger_.point.rot, true, false, 1004, true, 100401)
end

function Quest70007:OnSubFinish7000709(arg1)
    print("OnSubFinish7000709")
    self:DestroyQuestNpcActor(npcs.Npc1648Data.alias, 1004)
end

function Quest70007:OnSubFailed7000709(arg1)
    print("OnSubFailed7000709")
end

function Quest70007:OnSubStart7000710(arg1)
    print("OnSubStart7000710")
    self:CreateQuestNpc(arg1, npcs.PaimonData.id)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest70007:OnSubFinish7000710(arg1)
    print("OnSubFinish7000710")
    self:NotifyTo("Npc1565", 0, true)
end

function Quest70007:OnSubFailed7000710(arg1)
    print("OnSubFailed7000710")
end

function Quest70007:OnSubStart7000711(arg1)
    print("OnSubStart7000711")
end

function Quest70007:OnSubFinish7000711(arg1)
    print("OnSubFinish7000711")
    self:DestroyQuestNpcActor(npcs.Npc10023Data.alias, 1004)
    self:DestroyQuestNpcActor(npcs.Npc10024Data.alias, 1004)
    self:DestroyQuestNpcActor(npcs.Npc10025Data.alias, 1004)
    self:DestroyQuestNpcActor(npcs.Npc10026Data.alias, 1004)
    self:DestroyQuestNpcActor(npcs.Npc10027Data.alias, 1004)
    self:DestroyQuestNpcActor(npcs.Npc10028Data.alias, 1004)
end

function Quest70007:OnSubFailed7000711(arg1)
    print("OnSubFailed7000711")
end

function Quest70007:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Talk 7000710 Invoke")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 7000711)
        end
    end
end

return Quest70007
