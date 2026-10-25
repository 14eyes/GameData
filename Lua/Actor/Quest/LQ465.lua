require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest465 = class("Quest465", QuestActorProxy)
Quest465.defaultAlias = "Quest465"
local clientData
local subIDs
local dilucData
local hoffmanData
local kaeyaData
local paimonData
local abyssWaterData
local n = 100
local v = 0
local n2 = 0
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest465:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    dilucData = clientData.DilucData
    hoffmanData = clientData.HoffmanData
    kaeyaData = clientData.KaeyaData
    paimonData = clientData.PaimonData
    abyssWaterData = clientData.AbyssWaterData
end

function Quest465:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["46501"] = self.OnSubStart46501
    self.subStartHandlers["46502"] = self.OnSubStart46502
    self.subStartHandlers["46503"] = self.OnSubStart46503
    self.subStartHandlers["46504"] = self.OnSubStart46504
    self.subStartHandlers["46505"] = self.OnSubStart46505
    self.subStartHandlers["46506"] = self.OnSubStart46506
    self.subStartHandlers["46507"] = self.OnSubStart46507
    self.subStartHandlers["46508"] = self.OnSubStart46508
    self.subStartHandlers["46509"] = self.OnSubStart46509
    self.subStartHandlers["46510"] = self.OnSubStart46510
    self.subStartHandlers["46511"] = self.OnSubStart46511
    self.subStartHandlers["46512"] = self.OnSubStart46512
    self.subStartHandlers["46513"] = self.OnSubStart46513
    self.subStartHandlers["46514"] = self.OnSubStart46514
    self.subStartHandlers["46515"] = self.OnSubStart46515
    self.subStartHandlers["46516"] = self.OnSubStart46516
    self.subStartHandlers["46517"] = self.OnSubStart46517
    self.subStartHandlers["46518"] = self.OnSubStart46518
    self.subStartHandlers["46519"] = self.OnSubStart46519
    self.subStartHandlers["46520"] = self.OnSubStart46520
    self.subStartHandlers["46521"] = self.OnSubStart46521
    self.subStartHandlers["46522"] = self.OnSubStart46522
    self.subStartHandlers["46523"] = self.OnSubStart46523
    self.subStartHandlers["46524"] = self.OnSubStart46524
    self.subStartHandlers["46525"] = self.OnSubStart46525
end

function Quest465:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["46501"] = self.OnSubFinish46501
    self.subFinishHandlers["46502"] = self.OnSubFinish46502
    self.subFinishHandlers["46503"] = self.OnSubFinish46503
    self.subFinishHandlers["46504"] = self.OnSubFinish46504
    self.subFinishHandlers["46505"] = self.OnSubFinish46505
    self.subFinishHandlers["46506"] = self.OnSubFinish46506
    self.subFinishHandlers["46507"] = self.OnSubFinish46507
    self.subFinishHandlers["46508"] = self.OnSubFinish46508
    self.subFinishHandlers["46509"] = self.OnSubFinish46509
    self.subFinishHandlers["46510"] = self.OnSubFinish46510
    self.subFinishHandlers["46511"] = self.OnSubFinish46511
    self.subFinishHandlers["46512"] = self.OnSubFinish46512
    self.subFinishHandlers["46513"] = self.OnSubFinish46513
    self.subFinishHandlers["46514"] = self.OnSubFinish46514
    self.subFinishHandlers["46515"] = self.OnSubFinish46515
    self.subFinishHandlers["46516"] = self.OnSubFinish46516
    self.subFinishHandlers["46517"] = self.OnSubFinish46517
    self.subFinishHandlers["46518"] = self.OnSubFinish46518
    self.subFinishHandlers["46519"] = self.OnSubFinish46519
    self.subFinishHandlers["46520"] = self.OnSubFinish46520
    self.subFinishHandlers["46521"] = self.OnSubFinish46521
    self.subFinishHandlers["46522"] = self.OnSubFinish46522
    self.subFinishHandlers["46523"] = self.OnSubFinish46523
    self.subFinishHandlers["46524"] = self.OnSubFinish46524
    self.subFinishHandlers["46525"] = self.OnSubFinish46525
end

function Quest465:OnSubStart46503(arg1)
    print("46503 Finish: Creat NPC")
    self:ActionSafeCall(self.CreatHoffman)
    self:NotifyTo("Npc1433", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest465:CreatHoffman(arg1)
    local hoffmanData = self.clientData.HoffmanData
    self:CreateQuestNpcById(46503, hoffmanData.HoffmanID, 1)
end

function Quest465:OnSubFinish46503(arg1)
    print("46503 Finish: Creat NPC")
    self:ActionSafeCall(self.OnBright1)
    self:NotifyTo("Npc1663", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1433", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story2)
end

function Quest465:PaimonVanish()
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright1)
end

function Quest465:OnBright1()
    local hoffmanData = self.clientData.HoffmanData
    self:CreateQuestNpcById(46503, hoffmanData.HoffmanID, 2)
    local questNpcActor = self:GetQuestNpcActor(self.clientData.HoffmanData.Hoffman)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local dilucData = self.clientData.DilucData
    self:CreateQuestNpcById(46503, dilucData.DilucID, 3)
    local v = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if v ~= nil then
        v:DestroyWithDisappear(false)
    end
end

function Quest465:OnSubStart46504(arg1)
    print("46504 Start: Creat NPC")
end

function Quest465:OnSubFinish46504(arg1)
    print("46504 Finish: Creat NPC")
    local dilucData = self.clientData.DilucData
    self:CreateQuestNpcById(46504, dilucData.DilucID, 1)
end

function Quest465:OnSubFinish46505(arg1)
    print("46505 Finish: Move NPC")
    self:ActionSafeCall(self.Finish46505Do)
end

function Quest465:Finish46505Do(arg1)
    local dilucData = self.clientData.DilucData
    self:CreateQuestNpcById(46505, dilucData.DilucID, 1)
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest465:OnSubFinish46507(arg1)
    print("46507 Finish: TempDungeon")
    local questNpcActor = self.GetQuestNpcActor(self, self.clientData.DilucData.Diluc)
    questNpcActor:AddPriorityInter(InterTimingType.BTN, self.clientData.InterData.NoReplyInter)
    questNpcActor:RunToTask(self.clientData.DilucData.Pos4, function(arg1, arg2)
        arg1:ClearFollowTask()
        arg1:ClearPriorityInter(InterTimingType.BTN)
        arg1:Standby()
        arg1:TurnTo(M.Euler2DirXZ(self.clientData.DilucData.Dir4))
    end)
end

function Quest465:OnSubFinish46508(arg1)
    print("46508 Finish: Monster")
end

function Quest465:OnSubFinish46509(arg1)
    print("46509 Finish: NPC")
end

function Quest465:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("SAN-20/25,ESCAPE+10")
        self:SANMinusi()
    elseif arg1 == 2 then
        print("SAN-30/60,ESCAPE+10")
        self:SANMinusj()
    elseif arg1 == 3 then
        print("SAN-0,ESCAPE+10")
        self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater):PlayEmojiBubble("EmojiBubble_Emoji_Shock")
        self:SANMinusk()
    elseif arg1 == 4 then
        print("Invoke 4")
        self:ShowReadingDialog(100214)
    elseif arg1 == 5 then
        print("Invoke 5")
        local v = self.clientData.KaeyaData
        self:CreateQuestNpcById(46513, v.Kaeya, 2)
        local actor = self:GetActor(self.clientData.KaeyaData.Kaeya)
        if actor ~= nil then
            actor:ClearFollowTask()
            actor:WalkToTask(v.Pos4)
        end
    elseif arg1 == 6 then
        print("Invoke 6")
    elseif arg1 == 7 then
        print("Invoke 7")
        self:ActionSafeCall(self.OnBright4)
    elseif arg1 == 8 then
        print("Invoke 8")
        local actor = self:GetActor(self.clientData.KaeyaData.Kaeya)
        if actor ~= nil then
            actor:ClearFollowTask()
            actor:WalkToTask(kaeyaData.Pos3)
        end

        local questNpcActor = self:GetQuestNpcActor(self.clientData.HoffmanData.Hoffman)
        if questNpcActor ~= nil then
            questNpcActor:ClearFollowTask()
            questNpcActor:WalkToTask(kaeyaData.Pos3)
        end

        self:CallDelay(4, self.NPCVanish)
    elseif arg1 == 9 then
        print("Invoke 9")
    elseif arg1 == 10 then
        print("Invoke 10")
        self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater):DoFreeStyle(2)
    elseif arg1 == 11 then
        print("Invoke 11")
        self:PlayEffect("Eff_Diluc_FireCross_Aoe2", sceneData:GetDummyPoint(20019, "Q465AbyssEmo1").pos)
        self:ActionSafeCall(self.OnBright4)
    elseif arg1 == 12 then
        print("Invoke 12")
        self:ActionSafeCall(self.Start46520Do)
    elseif arg1 == 13 then
        print("Invoke 13")
        self:PlayEffect("Eff_Diluc_FireCross_Aoe2", sceneData:GetDummyPoint(20019, "Q465AbyssEmo1").pos)
    end
end

function Quest465:NPCVanish()
    local actor = self:GetActor(self.clientData.KaeyaData.Kaeya)
    if actor ~= nil then
        actor:SetVisible(false)
    end

    local questNpcActor = self:GetQuestNpcActor(self.clientData.HoffmanData.Hoffman)
    if questNpcActor ~= nil then
        questNpcActor:SetVisible(false)
    end
end

function Quest465:SANMinusi()
    local n3 = math.random(20, 25)
    n = n - n3
    v = v + 10
    n2 = 100 - n
    self:PlayEffect("Eff_Diluc_FireCross_Aoe2", sceneData:GetDummyPoint(20019, "Q465AbyssEmo1").pos)
    self:showstate()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        if n <= 0 then
            actor:FinishQuestID(false, 46517)
            actorMgr:GetActor("AbyssWater"):DoFreeStyle(2)
            self:ShowTextMapWithParam("QUEST_TIP_Q469_DIZZY")
        end
    elseif actor ~= nil then
        if 0 < n then
            self:ESC()
        end
    end
end

function Quest465:SANMinusj()
    local n3 = math.random(30, 60)
    n = n - n3
    v = v + 10
    n2 = 100 - n
    self:PlayEffect("Eff_Diluc_FireCross_Aoe2", sceneData:GetDummyPoint(20019, "Q465AbyssEmo1").pos)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        if n <= 0 then
            actor:FinishQuestID(false, 46517)
            self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater):DoFreeStyle(2)
            self:ShowTextMapWithParam("QUEST_TIP_Q469_DIZZY")
        end
    elseif actor ~= nil then
        if 0 < n then
            self:ESC()
        end
    end
end

function Quest465:SANMinusk()
    n = n
    v = v + 10
    n2 = 100 - n
    self:showstate()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        if n <= 0 then
            actor:FinishQuestID(false, 46517)
            self:ShowTextMapWithParam("QUEST_TIP_Q469_DIZZY")
        end
    elseif actor ~= nil then
        if 0 < n then
            self:SUC()
        end
    end
end

function Quest465:ESC()
    n = n
    local n2 = math.random(1, 100)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        if n2 < v then
            if 80 < v then
                self:showESC()
                self:ShowTextMapWithParam("QUEST_TIP_Q469_ESCAPE" .. n2 .. v)
                actor:FinishQuestID(false, 46516)
            end
        end
    else
        self:showESC()
        self:ShowTextMapWithParam("QUEST_TIP_Q469_ESCAPE_FAILED")
    end
end

function Quest465:SUC()
    local v = math.random(1, 100)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        if v > n then
            if n < 60 then
                self:ShowTextMapWithParam("QUEST_TIP_Q469_SUCCESSED" .. v)
                actor:FinishQuestID(false, 46515)
                local questNpcActor = self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater)
            end
        end
    else
        self:ESC()
    end
end

function Quest465:showstate(arg1)
    n = n
    if n < 30 then
        self:CallDelay(1.5, self.Worry)
        self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater):DoFreeStyle(5)
    else
        if n < 60 then
            self:CallDelay(1.5, self.Sweat)
            self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater):DoFreeStyle(3)
        else
            if n < 80 then
                self:CallDelay(1.5, self.Shock)
                self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater):DoFreeStyle(3)
            end
        end
    end
end

function Quest465:Worry()
    self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater):PlayEmojiBubble("EmojiBubble_Emoji_Worry")
end

function Quest465:Sweat()
    self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater):PlayEmojiBubble("EmojiBubble_Emoji_Surprise")
end

function Quest465:Shock()
    self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater):PlayEmojiBubble("EmojiBubble_Emoji_Shock")
end

function Quest465:showESC(arg1)
    v = v
    if v < 30 then
        self:ShowTextMapWithParam("QUEST_TIP_Q469_ESCSTATE1")
    else
        if v < 60 then
            self:ShowTextMapWithParam("QUEST_TIP_Q469_ESCSTATE2")
        else
            if v < 80 then
                self:ShowTextMapWithParam("QUEST_TIP_Q469_ESCSTATE3")
            end
        end
    end
end

function Quest465:OnSubStart46510(arg1)
    print("46510 Start: Clear data")
    self:CallDelay(3, self.AutoTalk)
end

function Quest465:AutoTalk(arg1)
    print("46510 Start: Clear data")
    local abyssWaterData = self.clientData.AbyssWaterData
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({abyssWaterData.AbyssWater})
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright6, nil, questNpcCreateTask)
end

function Quest465:OnBright6(arg1)
    self:CreateQuestNpcById(46510, dilucData.DilucID, 1)
    self:CreateQuestNpcById(46510, abyssWaterData.AbyssWater, 2)
    self:CreateQuestNpcById(46510, paimonData.Paimon, 3)
    local questNpcActor = self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater)
    if questNpcActor ~= nil then
        questNpcActor:SetVisible(true)
    end

    n = 100
    v = 0
    n2 = 0
    self:RequestInteraction(self.clientData.AbyssWaterData.AbyssWater)
end

function Quest465:OnSubStart46514(arg1)
    print("46514 Start: Show UI")
    globalActor:ChangeToHero()
end

function Quest465:Invoke7Do(arg1)
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright4)
end

function Quest465:OnBright4(arg1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 46523)
    end

    local questNpcActor = self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater)
    if questNpcActor ~= nil then
        questNpcActor:SetVisible(false)
    end
end

function Quest465:OnSubFinish46510(arg1)
    print("46510 Finish: Hide NPC")
    self:ActionSafeCall(self.Finish46510Do)
end

function Quest465:Finish46510Do(arg1)
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright2)
end

function Quest465:OnBright2(arg1)
    self:CreateQuestNpcById(46510, dilucData.DilucID, 4)
    self:CreateQuestNpcById(46510, abyssWaterData.AbyssWater, 5)
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest465:OnSubStart46520(arg1)
    print("46520 Start: Hide NPC")
end

function Quest465:Start46520Do(arg1)
    self:ShowBlackScreen(0.1, 1.0, 0.5, self.OnBright7)
end

function Quest465:OnBright7(arg1)
    local questNpcActor = self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    local v = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if v ~= nil then
        v:DestroyWithDisappear(false)
    end

    local questNpcActor2 = self:GetQuestNpcActor(self.clientData.DilucData.Diluc)
    if questNpcActor2 ~= nil then
        questNpcActor2:SetVisible(false)
    end
end

function Quest465:OnSubFinish46511(arg1)
    print("46511 Finish: Creat NPC")
    self:CreateQuestNpcWithTrigger("Q46511TriggerIn", 46511, dilucData.DilucID, 0, 30, 2)
end

function Quest465:OnSubFinish46524(arg1)
    print("46524 Finish: Hide NPC")
    self:ActionSafeCall(self.OnBright9)
end

function Quest465:Finish46524Do(arg1)
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright9)
end

function Quest465:OnBright9(arg1)
    self:CreateQuestNpcById(46524, dilucData.DilucID, 1)
    local actor = actorMgr:GetActor(dilucData.Diluc)
    if actor ~= nil then
        actor:Destroy(false)
    end

    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest465:OnSubStart46513(arg1)
    print("46513 Start: Creat NPC")
    self:CreateQuestNpcById(46513, hoffmanData.HoffmanID, 1)
    self:NotifyTo("Npc1433", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest465:OnSubFinish46513(arg1)
    print("46513 Finish: Hide NPC")
    self:ActionSafeCall(self.OnBright5)
    self:NotifyTo("Npc1433", DailyNPCManager.NpcEventType.STARTDAILY, true)
end

function Quest465:Finish46513Do(arg1)
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright5)
end

function Quest465:OnBright5(arg1)
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story3)
    local v = self:GetQuestNpcActor(self.clientData.KaeyaData.Kaeya)
    if v ~= nil then
        v:Destroy(false)
    end

    local questNpcActor2 = self:GetQuestNpcActor(self.clientData.HoffmanData.Hoffman)
    if questNpcActor2 ~= nil then
        questNpcActor2:Destroy(false)
    end
end

function Quest465:Start() end
function Quest465:OnDestroy() end
return Quest465
