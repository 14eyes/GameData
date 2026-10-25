require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest464 = class("Quest464", QuestActorProxy)
Quest464.defaultAlias = "Quest464"
local clientData
local subIDs
local dilucData
local hoffmanData
local qQ1Data
local qQ2Data
local qQ3Data
local paimonData
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest464:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    dilucData = clientData.DilucData
    hoffmanData = clientData.HoffmanData
    qQ1Data = clientData.QQ1Data
    qQ2Data = clientData.QQ2Data
    qQ3Data = clientData.QQ3Data
    paimonData = clientData.PaimonData
end

function Quest464:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["46401"] = self.OnSubStart46401
    self.subStartHandlers["46402"] = self.OnSubStart46402
    self.subStartHandlers["46403"] = self.OnSubStart46403
    self.subStartHandlers["46404"] = self.OnSubStart46404
    self.subStartHandlers["46405"] = self.OnSubStart46405
    self.subStartHandlers["46406"] = self.OnSubStart46406
    self.subStartHandlers["46407"] = self.OnSubStart46407
    self.subStartHandlers["46408"] = self.OnSubStart46408
    self.subStartHandlers["46409"] = self.OnSubStart46409
end

function Quest464:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["46401"] = self.OnSubFinish46401
    self.subFinishHandlers["46402"] = self.OnSubFinish46402
    self.subFinishHandlers["46403"] = self.OnSubFinish46403
    self.subFinishHandlers["46404"] = self.OnSubFinish46404
    self.subFinishHandlers["46405"] = self.OnSubFinish46405
    self.subFinishHandlers["46406"] = self.OnSubFinish46406
    self.subFinishHandlers["46407"] = self.OnSubFinish46407
    self.subFinishHandlers["46408"] = self.OnSubFinish46408
    self.subFinishHandlers["46409"] = self.OnSubFinish46409
end

function Quest464:OnSubFinish46401(arg1)
    print("46401 Finish:NPC Alltime")
    self:NotifyTo("Npc1431", DailyNPCManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1439", DailyNPCManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1427", DailyNPCManager.NpcEventType.BANDAILY, true)
    self:ActionSafeCall(self.Finish46401Do)
end

function Quest464:Finish46401Do(arg1)
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest464:OnSubFinish46402(arg1)
    print("46402 Finish:  Paimon Des")
    self:ActionSafeCall(self.Finish46402Do)
end

function Quest464:Finish46402Do(arg1)
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest464:OnSubStart46402(arg1)
    print("46402 Start:NPC Alltime")
    self:NotifyTo("Npc1431", DailyNPCManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1439", DailyNPCManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1427", DailyNPCManager.NpcEventType.BANDAILY, true)
end

function Quest464:OnSubStart46403(arg1)
    print("46403 Start:NPC Alltime")
    self:NotifyTo("Npc1431", DailyNPCManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1439", DailyNPCManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1427", DailyNPCManager.NpcEventType.BANDAILY, true)
end

function Quest464:OnSubFinish46403(arg1)
    print("46403 Finish:  Paimon Des")
    self:ActionSafeCall(self.Finish46403Do)
end

function Quest464:Finish46403Do(arg1)
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest464:OnSubStart46404(arg1)
    print("46404 Start:NPC Alltime")
    self:NotifyTo("Npc1431", DailyNPCManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1439", DailyNPCManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1427", DailyNPCManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1447", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1441", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest464:OnSubFinish46404(arg1)
    print("46404 Finish:  Paimon Des")
    self:ActionSafeCall(self.Finish46404Do)
end

function Quest464:Finish46404Do(arg1)
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest464:OnSubStart46405(arg1)
    print("46405 Start:NPC Hide")
    self:LightNotifyTo("Npc1663", 0, true)
end

function Quest464:OnSubFinish46405(arg1)
    print("46405 Finish:Story1")
    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story1)
    self:NotifyTo("Npc1447", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1441", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest464:OnSubFinish46406(arg1)
    print("46406 Finish:Cutscene & Creat NPC")
    self:NotifyTo("Npc1431", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1439", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1427", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:PlayCutsceneIndex(46401, self.AfterCSDo)
end

function Quest464:AfterCSDo(arg1)
    local dilucData = self.clientData.DilucData
    self:CreateQuestNpcById(46406, dilucData.DilucID, 1)
    self:RequestInteraction(self.clientData.DilucData.Diluc)
end

function Quest464:OnSubStart46406(arg1)
    print("46406 Start:NPC Hide")
    self:NotifyTo("Npc1663", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest464:OnSubStart46407(arg1)
    print("46407 Start:NPC Hide")
    self:NotifyTo("Npc1663", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1447", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1441", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1569", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest464:OnSubFinish46407(arg1)
    print("46407 Finish:Cutscene & Creat NPC& Trigger1")
    self:ActionSafeCall(self.Finish46407Do)
end

function Quest464:Finish46407Do(arg1)
    local dilucData = self.clientData.DilucData
    local questNpcActor = self:GetQuestNpcActor(self.clientData.DilucData.Diluc)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local v = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if v ~= nil then
        v:DestroyWithDisappear(false)
    end

    actorMgr:CreateActorWithPos("Q464Trigger1", "Actor/Gadget/Q464Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q464Hoffman1").pos, sceneData:GetDummyPoint(3, "Q464Hoffman1").rot, true, false)
end

function Quest464:OnSubStart46408(arg1)
    print("46408 Start:NPC Hide")
    self:NotifyTo("Npc1447", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1441", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1433", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1569", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1663", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest464:OnSubFinish46408(arg1)
    print("46408 Finish: Creat NPC")
    self:CallDelay(2, self.Delay1)
end

function Quest464:Delay1(arg1)
    local hoffmanData = self.clientData.HoffmanData
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({hoffmanData.Hoffman})
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright2, nil, questNpcCreateTask)
end

function Quest464:OnBright2(arg1)
    local hoffmanData = self.clientData.HoffmanData
    self:CreateQuestNpcById(46408, hoffmanData.HoffmanID, 1)
    self:RequestInteraction(self.clientData.HoffmanData.Hoffman)
end

function Quest464:OnSubStart46409(arg1)
    print("46409 Start:NPC Hide")
    self:NotifyTo("Npc1447", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1441", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1433", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1569", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1663", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest464:OnSubFinish46409(arg1)
    print("46409 Finish: Hide NPC & Questarea Des")
    self:ActionSafeCall(self.Finish46409Do)
    local hoffmanData = self.clientData.HoffmanData
    local questNpcActor = self:GetQuestNpcActor(self.clientData.HoffmanData.Hoffman)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest464:Finish46409Do(arg1)
    self:NotifyTo("Npc1447", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1441", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1433", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1569", DailyNPCManager.NpcEventType.STARTDAILY, true)
    local hoffmanData = self.clientData.HoffmanData
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({hoffmanData.Hoffman})
    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story2)
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    globalActor:UnSpawn("Q464Trigger1")
    local actor = actorMgr:GetActor("Q464Trigger1")
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest464:InvokeOnInteraction(arg1)
    print("464 Invoke : ")
    if arg1 == 1 then
        print("Invoke 1")
    elseif arg1 == 2 then
        print("Invoke 2")
    elseif arg1 == 3 then
        print("Invoke 3")
    elseif arg1 == 4 then
        print("Invoke 4")
    elseif arg1 == 5 then
        print("Invoke 5")
        self:CreateQuestNpcById(46407, qQ1Data.QQ1, 2)
        local questNpcActor = self:GetQuestNpcActor(self.clientData.QQ1Data.QQ1)
        if questNpcActor ~= nil then
            questNpcActor:ClearFollowTask()
            questNpcActor:RunToTask(qQ1Data.QQ1Pos2)
        end

        self:CreateQuestNpcById(46407, qQ2Data.QQ2, 3)
        local v = self:GetQuestNpcActor(self.clientData.QQ2Data.QQ2)
        if v ~= nil then
            v:ClearFollowTask()
            v:RunToTask(qQ2Data.QQ2Pos2)
        end

        self:CreateQuestNpcById(46407, qQ3Data.QQ3, 4)
        local questNpcActor2 = self:GetQuestNpcActor(self.clientData.QQ3Data.QQ3)
        if questNpcActor2 ~= nil then
            questNpcActor2:ClearFollowTask()
            questNpcActor2:RunToTask(qQ3Data.QQ3Pos2)
        end
    elseif arg1 == 6 then
        print("Invoke 6")
        local Q464ClientConfig = require("Quest/Client/Q464ClientConfig")
        local actor = actorMgr:GetActor(Q464ClientConfig.ActorAlias)
        local v = self.clientData.QQ1Data
        local questNpcActor = actor:GetQuestNpcActor(self.clientData.QQ1Data.QQ1)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local qQ2Data2 = self.clientData.QQ2Data
        local questNpcActor2 = actor:GetQuestNpcActor(self.clientData.QQ2Data.QQ2)
        if questNpcActor2 ~= nil then
            questNpcActor2:Destroy(false)
        end

        local qQ1Data2 = self.clientData.QQ1Data
        local questNpcActor3 = actor:GetQuestNpcActor(self.clientData.QQ3Data.QQ3)
        if questNpcActor3 ~= nil then
            questNpcActor3:Destroy(false)
        end
    end
end

function Quest464:DilucVanish()
    local Q464ClientConfig = require("Quest/Client/Q464ClientConfig")
    local questNpcActor = actorMgr:GetActor(Q464ClientConfig.ActorAlias):GetQuestNpcActor(self.clientData.DilucData.Diluc)
    if questNpcActor ~= nil then
        questNpcActor:SetVisible(false)
    end
end

function Quest464:CreatPaimon() end
function Quest464:Start() end
function Quest464:OnDestroy() end
return Quest464
