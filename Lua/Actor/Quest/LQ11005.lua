require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11005 = class("Quest11005", QuestActorProxy)
Quest11005.defaultAlias = "Quest11005"
local DailyNPCManager = require("Actor/DailyNPCManager")

local clientData
local subIDs
local n = 11005
local paimonData
local xianglingData
local draffData
local brookData
local olafData
local qgData
local xlMoveData
local brMoveData
local washData
local fireData1
local fireData2
local fireData3
local hamData
local v = 0
local n2 = 0

function Quest11005:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    n = 11005
    paimonData = clientData.PaimonData
    xianglingData = clientData.XianglingData
    draffData = clientData.DraffData
    brookData = clientData.BrookData
    olafData = clientData.OlafData
    qgData = clientData.QGData
    washData = clientData.WashData
    fireData1 = clientData.FireData1
    fireData2 = clientData.FireData2
    fireData3 = clientData.FireData3
    hamData = clientData.HamData
    xlMoveData = clientData.XLMoveData
    brMoveData = clientData.BRMoveData
end

function Quest11005:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1100501"] = self.OnSubStart1100501
    self.subStartHandlers["1100502"] = self.OnSubStart1100502
    self.subStartHandlers["1100503"] = self.OnSubStart1100503
    self.subStartHandlers["1100504"] = self.OnSubStart1100504
    self.subStartHandlers["1100505"] = self.OnSubStart1100505
    self.subStartHandlers["1100506"] = self.OnSubStart1100506
    self.subStartHandlers["1100507"] = self.OnSubStart1100507
    self.subStartHandlers["1100508"] = self.OnSubStart1100508
    self.subStartHandlers["1100509"] = self.OnSubStart1100509
    self.subStartHandlers["1100510"] = self.OnSubStart1100510
    self.subStartHandlers["1100511"] = self.OnSubStart1100511
    self.subStartHandlers["1100512"] = self.OnSubStart1100512
    self.subStartHandlers["1100513"] = self.OnSubStart1100513
    self.subStartHandlers["1100514"] = self.OnSubStart1100514
    self.subStartHandlers["1100515"] = self.OnSubStart1100515
    self.subStartHandlers["1100599"] = self.OnSubStart1100599
    self.subStartHandlers["1100516"] = self.OnSubStart1100516
    self.subStartHandlers["1100517"] = self.OnSubStart1100517
    self.subStartHandlers["1100518"] = self.OnSubStart1100518
    self.subStartHandlers["1100519"] = self.OnSubStart1100519
end

function Quest11005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1100501"] = self.OnSubFinish1100501
    self.subFinishHandlers["1100502"] = self.OnSubFinish1100502
    self.subFinishHandlers["1100503"] = self.OnSubFinish1100503
    self.subFinishHandlers["1100504"] = self.OnSubFinish1100504
    self.subFinishHandlers["1100505"] = self.OnSubFinish1100505
    self.subFinishHandlers["1100506"] = self.OnSubFinish1100506
    self.subFinishHandlers["1100507"] = self.OnSubFinish1100507
    self.subFinishHandlers["1100508"] = self.OnSubFinish1100508
    self.subFinishHandlers["1100509"] = self.OnSubFinish1100509
    self.subFinishHandlers["1100510"] = self.OnSubFinish1100510
    self.subFinishHandlers["1100511"] = self.OnSubFinish1100511
    self.subFinishHandlers["1100512"] = self.OnSubFinish1100512
    self.subFinishHandlers["1100513"] = self.OnSubFinish1100513
    self.subFinishHandlers["1100514"] = self.OnSubFinish1100514
    self.subFinishHandlers["1100515"] = self.OnSubFinish1100515
    self.subFinishHandlers["1100599"] = self.OnSubFinish1100599
    self.subFinishHandlers["1100516"] = self.OnSubFinish1100516
    self.subFinishHandlers["1100517"] = self.OnSubFinish1100517
    self.subFinishHandlers["1100518"] = self.OnSubFinish1100518
    self.subFinishHandlers["1100519"] = self.OnSubFinish1100519
end

function Quest11005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["1100504"] = self.OnSubFailed1100504
    self.subFailedHandlers["1100506"] = self.OnSubFailed1100506
    self.subFailedHandlers["1100509"] = self.OnSubFailed1100509
end

function Quest11005:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        self:ActionSafeCall(function(arg1)
            questNpcActor:DestroyWithDisappear(false)
        end)
    end
end

function Quest11005:questJudge04()
    if v == 0 then
        print("teammateScore == 0")
        v = v + 5
        n2 = n2 + 5
        self:BattleUIStart(100, 1012, v, 154101, n2)
    else
        if 100 <= v then
            if v > n2 then
                local actor = actorMgr:GetActor(clientData.ActorAlias)
                if actor ~= nil then
                    print("Battle  ------------------- succeed" .. "\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(v) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(n2))
                    actor:FinishQuestID(false, 1100504)
                end

                self:CallDelay(3, function(arg1)
                    arg1:CountDownUITerminate()
                    arg1:BattleUITerminate()
                end)
            end
        else
            if 100 <= n2 then
                if n2 >= v then
                    local actor = actorMgr:GetActor(clientData.ActorAlias)
                    if actor ~= nil then
                        print("Battle  ------------------- failed" .. "\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(v) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(n2))
                        actor:FinishQuestID(true, 1100504)
                    end

                    self:CallDelay(3, function(arg1)
                        arg1:CountDownUITerminate()
                        arg1:BattleUITerminate()
                    end)
                end
            end
        end
    end

    self:CallDelay(2, function(arg1)
        local subQuestState = arg1:GetSubQuestState(1100503)
        local v = arg1:GetSubQuestState(1100504)
        print("q1100504state" .. v)
        if subQuestState == 3 and v ~= 3 then
            print("\231\187\167\231\187\173\229\136\164\230\150\173")
            arg1:questJudge04()
        end
    end)
end

function Quest11005:AddScore()
    local n = math.random(10, 15)
    local n3 = math.random(5, 10)
    local subQuestState = self:GetSubQuestState(1100503)
    local subQuestState2 = self:GetSubQuestState(1100504)
    local isTalkDialogActive = self:IsTalkDialogActive()
    print("q1100503state" .. subQuestState)
    print("q1100504state" .. subQuestState2)
    if isTalkDialogActive == false and subQuestState == 3 and subQuestState2 ~= 3 then
        local n4 = math.random(2, 3)
        v = v + n4
        self:BattleUIChange(v, n4, n2, 0)
        self:CallDelay(n3, function(arg1)
            local n = math.random(2, 4)
            if 100 <= n2 + n then
                local n3 = 100 - n2
                n2 = 100
                arg1:BattleUIChange(v, 0, n2, n3)
            else
                n2 = n2 + n
                arg1:BattleUIChange(v, 0, n2, n)
            end
        end)
    end

    self:CallDelay(n, function(arg1)
        local subQuestState = arg1:GetSubQuestState(1100503)
        local v = arg1:GetSubQuestState(1100504)
        print("q1100503state" .. subQuestState)
        print("q1100504state" .. v)
        if subQuestState == 3 and v ~= 3 then
            print("\229\134\141\230\172\161\229\138\160\229\136\134")
            arg1:AddScore()
        end
    end)
end

function Quest11005:XLMove()
    local n = math.random(1, 6)
    local questNpcActor = self:GetQuestNpcActor(xianglingData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:RunToTask(sceneData:GetDummyPoint(3, xlMoveData.XLMove[n]).pos, function(arg1, arg2)
            arg1:SteerToTask(M.Euler2DirXZ(sceneData:GetDummyPoint(3, xlMoveData.XLMove[n]).rot), 1, true, true)
            if n <= 3 then
                arg1:DoFreeStyle(1220)
            else
                if 3 < n then
                    arg1:DoFreeStyle(1190)
                end
            end
        end, function(arg1, arg2)
            arg1:Standby()
        end)
    end

    self:CallDelay(10, function(arg1)
        local subQuestState = arg1:GetSubQuestState(1100503)
        local v = arg1:GetSubQuestState(1100504)
        local subQuestState2 = arg1:GetSubQuestState(1100513)
        print("q1100504state" .. v)
        if subQuestState == 3 and v ~= 3 and subQuestState2 ~= 3 then
            print("\233\166\153\232\143\177move")
            arg1:XLMove()
        end
    end)
end

function Quest11005:BRMove()
    local n = math.random(1, 3)
    local questNpcActor = self:GetQuestNpcActor(brookData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:WalkToTask(sceneData:GetDummyPoint(3, brMoveData.BRMove[n]).pos, function(arg1, arg2)
            arg1:SteerToTask(M.Euler2DirXZ(sceneData:GetDummyPoint(3, brMoveData.BRMove[n]).rot), 1, true, true)
            if n == 3 then
                arg1:DoFreeStyle(1230)
            else
                arg1:DoFreeStyle(1120)
            end
        end, function(arg1, arg2)
            arg1:Standby()
        end)
    end

    self:CallDelay(10, function(arg1)
        local subQuestState = arg1:GetSubQuestState(1100503)
        local v = arg1:GetSubQuestState(1100504)
        print("q1100504state" .. v)
        if subQuestState == 3 and v ~= 3 then
            print("\229\184\131\230\180\155\229\133\139move")
            arg1:BRMove()
        end
    end)
end

function Quest11005:OnSubStart1100501(arg1)
    print("1100501 start:...")
    self:CreateQuestNpc(arg1, olafData.ID)
    self:GetQuestNpcActor(olafData.Alias):DoFreeStyle(1240)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo("Npc1537", DailyNPCManager.NpcEventType.HIDESELF, true)
        arg1_2:NotifyTo("Npc1541", DailyNPCManager.NpcEventType.HIDESELF, true)
        arg1_2:NotifyTo("Npc1631", DailyNPCManager.NpcEventType.HIDESELF, true)
        arg1_2:CreateQuestNpc(arg1, xianglingData.ID)
        arg1_2:GetQuestNpcActor(xianglingData.Alias):DoFreeStyle(1220)
        arg1_2:CreateQuestNpc(arg1, draffData.ID)
        arg1_2:GetQuestNpcActor(draffData.Alias):DoFreeStyle(1220)
    end)
end

function Quest11005:OnSubStart1100502(arg1)
    print("1100502 start:...")
    self:NotifyTo("Npc1537", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1541", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1631", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:ActionSafeCall(function(arg1_2)
        if arg1_2:GetQuestNpcActor(xianglingData.Alias) ~= nil then
            arg1_2:ActionSafeCall(function(arg1)
                arg1:DestroyQuestNpcActorByAlias(xianglingData.Alias, false)
            end)
        end

        if arg1_2:GetQuestNpcActor(olafData.Alias) ~= nil then
            arg1_2:ActionSafeCall(function(arg1)
                arg1:DestroyQuestNpcActorByAlias(olafData.Alias, false)
            end)
        end

        if arg1_2:GetQuestNpcActor(draffData.Alias) ~= nil then
            arg1_2:ActionSafeCall(function(arg1)
                arg1:DestroyQuestNpcActorByAlias(draffData.Alias, false)
            end)
        end

        arg1_2:CallDelay(0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, brookData.ID)
            arg1_2:GetQuestNpcActor(brookData.Alias):DoFreeStyle(1120)
            arg1_2:CreateQuestNpc(arg1, xianglingData.ID)
            arg1_2:GetQuestNpcActor(xianglingData.Alias):DoFreeStyle(1220)
            arg1_2:CreateQuestNpc(arg1, draffData.ID)
            arg1_2:GetQuestNpcActor(draffData.Alias):DoFreeStyle(1180)
            arg1_2:CreateQuestNpc(arg1, qgData.ID)
            arg1_2:CreateQuestNpc(arg1, olafData.ID)
        end)
    end)
end

function Quest11005:OnSubStart1100503(arg1)
    print("1100503 start:...")
    v = 0
    n2 = 0
    self:NotifyTo("Npc1537", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1541", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1631", DailyNPCManager.NpcEventType.HIDESELF, true)
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({xianglingData.Alias, draffData.Alias, olafData.Alias, qgData.Alias, brookData.Alias})
    self:ActionSafeCall(function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1_2)
            arg1_2:PaimonDis()
            arg1_2:CreateQuestNpc(arg1, xianglingData.ID)
            arg1_2:CreateQuestNpc(arg1, draffData.ID)
            arg1_2:GetQuestNpcActor(draffData.Alias):DoFreeStyle(1120)
            arg1_2:CreateQuestNpc(arg1, brookData.ID)
            arg1_2:CreateQuestNpc(arg1, olafData.ID)
            arg1_2:GetQuestNpcActor(olafData.Alias):DoFreeStyle(1190)
            arg1_2:CreateQuestNpc(arg1, qgData.ID)
            arg1_2:GetQuestNpcActor(qgData.Alias):DoFreeStyle(1190)
        end, nil, entityCreateTask)
    end)
end

function Quest11005:OnSubStart1100504(arg1)
    print("1100504 start:...")
    print("\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(v) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(n2))
    self:NotifyTo("Npc1537", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1541", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1631", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:XLMove()
    self:BRMove()
    self:questJudge04()
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
end

function Quest11005:OnSubStart1100505(arg1)
    print("1100505 start:...")
    print("\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(v) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(n2))
    self:AddScore()
end

function Quest11005:OnSubStart1100506(arg1)
    print("1100506 start:...")
    print("\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(v) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(n2))
    self:SpawnGadget(arg1, washData.ID)
end

function Quest11005:OnSubStart1100507(arg1)
    print("1100507 start:...")
    print("\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(v) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(n2))
    self:NarratorOnlyTaskLegacy(clientData.NarratorFlow3)
    self:CallDelay(180, function(arg1)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            print("1100507\232\182\133\230\151\182\229\164\177\232\180\165")
            actor:FinishQuestID(true, 1100507)
        end
    end)
end

function Quest11005:OnSubStart1100508(arg1)
    print("1100508 start:...")
    print("\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(v) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(n2))
end

function Quest11005:OnSubStart1100509(arg1)
    print("1100509 start:...")
    print("\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(v) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(n2))
    self:SpawnGadget(arg1, fireData1.ID)
    self:SpawnGadget(arg1, fireData2.ID)
    self:SpawnGadget(arg1, fireData3.ID)
    self:CallDelay(15, function(arg1)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            print("1100509\232\182\133\230\151\182\229\164\177\232\180\165")
            actor:FinishQuestID(true, 1100509)
        end
    end)
end

function Quest11005:OnSubStart1100510(arg1)
    print("1100510 start:...")
    print("\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(v) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(n2))
end

function Quest11005:OnSubStart1100511(arg1)
    print("1100511 start:...")
    print("\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(v) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(n2))
end

function Quest11005:OnSubStart1100512(arg1)
    print("1100512 start:...")
    print("\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(v) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(n2))
end

function Quest11005:OnSubStart1100513(arg1)
    print("1100513 start:...")
    print("\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(v) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(n2))
    self:ClearNpcSpeechBubble(1012)
end

function Quest11005:OnSubStart1100514(arg1)
    print("1100514 start:...")
    print("\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(v) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(n2))
    self:RequestInteraction(xianglingData.Alias)
end

function Quest11005:OnSubStart1100515(arg1)
    print("1100515 start:...")
    print("\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(v) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(n2))
    self:NotifyTo("Npc1537", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1541", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:ActionSafeCall(function(arg1_2)
        if actorMgr:GetActorInternal("Xiangling11005") == nil then
            print(" xiangling   nil--------- Create ")
            arg1_2:CreateQuestNpc(arg1, xianglingData.ID)
        end

        if actorMgr:GetActorInternal("Npc15410111005") == nil then
            print(" brook   nil--------- Create ")
            arg1_2:CreateQuestNpc(arg1, brookData.ID)
        end

        if actorMgr:GetActorInternal("Npc16310111005") == nil then
            print(" QG   nil--------- Create ")
            arg1_2:CreateQuestNpc(arg1, qgData.ID)
        end
    end)
end

function Quest11005:OnSubStart1100599(arg1)
    print("1100599 start:...")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        print("1100599\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\229\174\140\230\136\144")
        actor:FinishQuestID(false, 1100599)
    end
end

function Quest11005:OnSubStart1100516(arg1)
    print("1100516 start:...")
    self:NotifyTo("Npc1537", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1541", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1631", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:ActionSafeCall(function(arg1_2)
        if actorMgr:GetActorInternal("Xiangling11005") == nil then
            print(" xiangling   nil--------- Create ")
            arg1_2:CreateQuestNpc(arg1, xianglingData.ID)
        end

        if actorMgr:GetActorInternal("Npc15410111005") == nil then
            print(" brook   nil--------- Create ")
            arg1_2:CreateQuestNpc(arg1, brookData.ID)
        end

        if actorMgr:GetActorInternal("Npc16310111005") == nil then
            print(" QG   nil--------- Create ")
            arg1_2:CreateQuestNpc(arg1, qgData.ID)
        end
    end)
end

function Quest11005:OnSubStart1100517(arg1)
    print("1100517 start:...")
    self:NotifyTo("Npc1537", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1541", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1631", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:ActionSafeCall(function(arg1_2)
        if actorMgr:GetActorInternal("Xiangling11005") == nil then
            print(" xiangling   nil--------- Create ")
            arg1_2:CreateQuestNpc(arg1, xianglingData.ID)
        end

        if actorMgr:GetActorInternal("Npc15410111005") == nil then
            print(" brook   nil--------- Create ")
            arg1_2:CreateQuestNpc(arg1, brookData.ID)
        end

        if actorMgr:GetActorInternal("Npc16310111005") == nil then
            print(" QG   nil--------- Create ")
            arg1_2:CreateQuestNpc(arg1, qgData.ID)
        end
    end)
end

function Quest11005:OnSubStart1100518(arg1)
    print("1100518 start:...")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, xianglingData.ID)
        arg1_2:GetQuestNpcActor(xianglingData.Alias):DoFreeStyle(1220)
        arg1_2:CreateQuestNpc(arg1, olafData.ID)
        arg1_2:CreateQuestNpc(arg1, qgData.ID)
        arg1_2:CreateQuestNpc(arg1, brookData.ID)
        arg1_2:GetQuestNpcActor(brookData.Alias):DoFreeStyle(1220)
        arg1_2:CreateQuestNpc(arg1, draffData.ID)
        arg1_2:GetQuestNpcActor(draffData.Alias):DoFreeStyle(1180)
    end)

    self:NotifyTo("Npc1537", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1541", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1631", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest11005:OnSubStart1100519(arg1)
    print("1100519 start:...")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({xianglingData.Alias})
    self:ActionSafeCall(function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, xianglingData.ID)
            arg1_2:GetQuestNpcActor(xianglingData.Alias):DoFreeStyle(1220)
            if arg1_2:GetQuestNpcActor(olafData.Alias) ~= nil then
                arg1_2:ActionSafeCall(function(arg1)
                    arg1:DestroyQuestNpcActorByAlias(olafData.Alias, false)
                end)
            end

            if arg1_2:GetQuestNpcActor(draffData.Alias) ~= nil then
                arg1_2:ActionSafeCall(function(arg1)
                    arg1:DestroyQuestNpcActorByAlias(draffData.Alias, false)
                end)
            end

            if arg1_2:GetQuestNpcActor(brookData.Alias) ~= nil then
                arg1_2:ActionSafeCall(function(arg1)
                    arg1:DestroyQuestNpcActorByAlias(brookData.Alias, false)
                end)
            end

            if arg1_2:GetQuestNpcActor(qgData.Alias) ~= nil then
                arg1_2:ActionSafeCall(function(arg1)
                    arg1:DestroyQuestNpcActorByAlias(qgData.Alias, false)
                end)
            end
        end, nil, entityCreateTask)
    end)
end

function Quest11005:OnSubFinish1100501(arg1)
    self:PaimonDis()
end

function Quest11005:OnSubFinish1100502(arg1)
    self:PaimonDis()
end

function Quest11005:OnSubFinish1100503(arg1) end

function Quest11005:OnSubFinish1100504(arg1)
    self:CountDownUITerminate()
    self:BattleUITerminate()
    self:NarratorOnlyTaskLegacy(clientData.NarratorFlow4)
    globalActor:LeaveAllWeather()
    self:LightNotifyTo("Npc1537", 0, true)
    self:LightNotifyTo("Npc1541", 0, true)
    self:LightNotifyTo("Npc1631", 0, true)
end

function Quest11005:OnSubFinish1100505(arg1)
    self:NarratorOnlyTaskLegacy(clientData.NarratorFlow2)
end

function Quest11005:OnSubFinish1100506(arg1)
    print("1100506 finish:...")
    globalActor:UnSpawn("Wash")
end

function Quest11005:OnSubFinish1100507(arg1)
    v = v + 10
    self:BattleUIChange(v, 10, n2, 0)
    self:CallDelay(5, function(arg1)
        local n = math.random(5, 10)
        n2 = n2 + n
        arg1:BattleUIChange(v, 0, n2, n)
    end)
end

function Quest11005:OnSubFinish1100508(arg1)
    v = v + 15
    self:BattleUIChange(v, 15, n2, 0)
    self:CallDelay(6, function(arg1)
        local n = math.random(10, 15)
        n2 = n2 + n
        arg1:BattleUIChange(v, 0, n2, n)
    end)

    self:PaimonDis()
end

function Quest11005:OnSubFinish1100509(arg1)
    print("1100509 finish:...")
    globalActor:UnSpawn("Fire1")
    globalActor:UnSpawn("Fire2")
    globalActor:UnSpawn("Fire3")
    v = v + 10
    self:BattleUIChange(v, 10, n2, 0)
    self:CallDelay(7, function(arg1)
        local n = math.random(7, 10)
        n2 = n2 + n
        arg1:BattleUIChange(v, 0, n2, n)
    end)
end

function Quest11005:OnSubFinish1100510(arg1)
    self:PaimonDis()
end

function Quest11005:OnSubFinish1100511(arg1) end

function Quest11005:OnSubFinish1100512(arg1)
    print("1100512 finish:...")
    v = v + 15
    self:BattleUIChange(v, 15, n2, 0)
    self:PaimonDis()
    self:CallDelay(5, function(arg1)
        local n = math.random(10, 15)
        n2 = n2 + n
        arg1:BattleUIChange(v, 0, n2, n)
    end)
end

function Quest11005:OnSubFinish1100513(arg1)
    self:ClearNpcSpeechBubble(1012)
end

function Quest11005:OnSubFinish1100514(arg1)
    print("1100514 finish:...")
    if v < 100 then
        local n = 100 - v
        v = v + n
        self:BattleUIChange(v, n, n2, 0)
    end

    self:PaimonDis()
end

function Quest11005:OnSubFinish1100515(arg1)
    print("1100515 finish:...")
    self:PaimonDis()
end

function Quest11005:OnSubFinish1100599(arg1)
    print("1100599 finish:...")
end

function Quest11005:OnSubFinish1100516(arg1)
    self:UnCallFunc(self.XLMove)
    self:UnCallFunc(self.BRMove)
end

function Quest11005:OnSubFinish1100517(arg1)
    self:ShowBlackScreen(0.5, 1, 0.5)
    self:PaimonDis()
end

function Quest11005:OnSubFinish1100518(arg1)
    self:NotifyTo("Npc1537", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1541", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1631", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NarratorOnlyTaskLegacy(clientData.NarratorFlow1)
    self:PaimonDis()
end

function Quest11005:OnSubFinish1100519(arg1)
    print("1100507 finish:...")
    if self:GetQuestNpcActor(xianglingData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(xianglingData.Alias, false)
        end)
    end

    self:PaimonDis()
end

function Quest11005:OnSubFailed1100504(arg1)
    print("1100504 failed:...")
    self:CountDownUITerminate()
    self:BattleUITerminate()
    globalActor:UnSpawn("Wash")
    globalActor:LeaveAllWeather()
end

function Quest11005:OnSubFailed1100506(arg1)
    print("1100506 failed:...")
    globalActor:UnSpawn("Wash")
end

function Quest11005:OnSubFailed1100509(arg1)
    print("1100509 failed:...")
    globalActor:UnSpawn("Fire1")
    globalActor:UnSpawn("Fire2")
    globalActor:UnSpawn("Fire3")
end

function Quest11005:Start() end
function Quest11005:OnDestroy() end
return Quest11005
