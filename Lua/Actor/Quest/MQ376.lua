require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest376 = class("Quest376", QuestActorProxy)
Quest376.defaultAlias = "Quest376"
local clientData
local subIDs
local wendyData
local dilucData
local soldier1Data
local soldier2Data
local n = 0
local v = 50
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest376:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    wendyData = clientData.WendyData
    dilucData = clientData.DilucData
    soldier1Data = clientData.Soldier1Data
    soldier2Data = clientData.Soldier2Data
end

function Quest376:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["37601"] = self.OnSubStart37601
    self.subStartHandlers["37602"] = self.OnSubStart37602
    self.subStartHandlers["37603"] = self.OnSubStart37603
    self.subStartHandlers["37604"] = self.OnSubStart37604
    self.subStartHandlers["37605"] = self.OnSubStart37605
    self.subStartHandlers["37606"] = self.OnSubStart37606
    self.subStartHandlers["37607"] = self.OnSubStart37607
    self.subStartHandlers["37608"] = self.OnSubStart37608
end

function Quest376:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["37601"] = self.OnSubFinish37601
    self.subFinishHandlers["37602"] = self.OnSubFinish37602
    self.subFinishHandlers["37603"] = self.OnSubFinish37603
    self.subFinishHandlers["37604"] = self.OnSubFinish37604
    self.subFinishHandlers["37605"] = self.OnSubFinish37605
    self.subFinishHandlers["37606"] = self.OnSubFinish37606
    self.subFinishHandlers["37607"] = self.OnSubFinish37607
    self.subFinishHandlers["37608"] = self.OnSubFinish37608
end

function Quest376:WendyDis()
    local questNpcActor = self:GetQuestNpcActor(wendyData.Wendy)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest376:WendyDelay()
    self:CallDelay(1, self.WendyDis)
end

function Quest376:EscapePrepare()
    for i = 1, #clientData.EscapeRoute1 - 1 do
        local tbl = {
            x = clientData.EscapeRoute1[i + 1].x - clientData.EscapeRoute1[i].x,
            y = clientData.EscapeRoute1[i + 1].y - clientData.EscapeRoute1[i].y,
            z = clientData.EscapeRoute1[i + 1].z - clientData.EscapeRoute1[i].z
        }

        self:SpawnGadgetByIdWithPos(37602, 70690001, 1, clientData.EscapeRoute1[i], M.Dir2Euler(tbl), "Acc1" .. tostring(i))
    end

    for i = 1, #clientData.EscapeRoute4 - 1 do
        local tbl = {
            x = clientData.EscapeRoute4[i + 1].x - clientData.EscapeRoute4[i].x,
            y = clientData.EscapeRoute4[i + 1].y - clientData.EscapeRoute4[i].y,
            z = clientData.EscapeRoute4[i + 1].z - clientData.EscapeRoute4[i].z
        }

        self:SpawnGadgetByIdWithPos(37602, 70690001, 1, clientData.EscapeRoute4[i], M.Dir2Euler(tbl), "Acc4" .. tostring(i))
    end

    for i = 1, #clientData.EscapeRoute5 - 1 do
        local tbl = {
            x = clientData.EscapeRoute5[i + 1].x - clientData.EscapeRoute5[i].x,
            y = clientData.EscapeRoute5[i + 1].y - clientData.EscapeRoute5[i].y,
            z = clientData.EscapeRoute5[i + 1].z - clientData.EscapeRoute5[i].z
        }

        self:SpawnGadgetByIdWithPos(37602, 70690001, 1, clientData.EscapeRoute5[i], M.Dir2Euler(tbl), "Acc5" .. tostring(i))
    end

    for i = 1, #clientData.EscapeRoute6 - 1 do
        local tbl = {
            x = clientData.EscapeRoute6[i + 1].x - clientData.EscapeRoute6[i].x,
            y = clientData.EscapeRoute6[i + 1].y - clientData.EscapeRoute6[i].y,
            z = clientData.EscapeRoute6[i + 1].z - clientData.EscapeRoute6[i].z
        }

        self:SpawnGadgetByIdWithPos(37602, 70690001, 1, clientData.EscapeRoute6[i], M.Dir2Euler(tbl), "Acc6" .. tostring(i))
    end
end

function Quest376:EscapeDestroy()
    print("OnFinished 37602")
    for i = 1, #clientData.EscapeRoute1 - 1 do
        self:UnSpawn("Acc1" .. tostring(i))
    end

    for i = 1, #clientData.EscapeRoute4 - 1 do
        self:UnSpawn("Acc4" .. tostring(i))
    end

    for i = 1, #clientData.EscapeRoute5 - 1 do
        self:UnSpawn("Acc5" .. tostring(i))
    end

    for i = 1, #clientData.EscapeRoute6 do
        self:UnSpawn("Acc6" .. tostring(i))
    end
end

function Quest376:StartCount()
    if n < 2 then
        v = 50
    else
        v = 60
    end

    self:CountDownUIStart(v, 10, 3)
    self:CallDelay(v + 4, self.CountDown)
end

function Quest376:CountDown()
    print("CountDown Finished")
    if clientData.EscapeFlag == false then
        n = n + 1
        print("escape fail time is ", n)
        if n < 3 then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                print("escape fail")
                actor:FinishQuest(true, nil)
            end
        else
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                print("escape fail omg")
                actor:FinishQuest(true, nil)
            end
        end
    end
end

function Quest376:AdvanceQuest()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest376:OnSubStart37601(arg1)
    print("37601 start ")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest376:OnSubStart37602(arg1)
    clientData.EscapeFlag = false
    self:EscapeDestroy()
    self:EscapePrepare()
    self:ActionSafeCall(self.StartCount)
    self:SpawnGadget(arg1, 70900201, 2)
end

function Quest376:OnSubStart37603(arg1)
    print("37603 start:...")
    self:EscapeDestroy()
    self:CountDownUITerminate()
    self:UnCallFunc(self.CountDown)
    self:UnSpawn("Goal1")
    self:AdvanceQuest()
end

function Quest376:OnSubStart37604(arg1)
    print("37604 start:...")
    self:UnSpawn("Goal1")
    clientData.EscapeFlag = true
    self:CountDownUITerminate()
    self:UnCallFunc(self.CountDown)
    self:NotifyTo("Npc1404", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1409", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1413", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1475", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1477", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1523", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1603", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:TransmitPlayerByQuestId(37604, 1)
end

function Quest376:OnSubStart37605(arg1)
    print("37605 start:...")
    self:NotifyTo("Npc1404", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1409", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1413", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1475", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1477", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1523", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1603", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, dilucData.DilucID)
    self:RequestInteraction(dilucData.Diluc)
end

function Quest376:OnSubStart37606(arg1)
    print("37606 start:...")
    self:NotifyTo("Npc1404", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1409", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1413", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1475", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1477", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1523", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1603", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest376:OnSubStart37607(arg1)
    print("37607 start:...")
    self:CreateQuestNpc(arg1, dilucData.DilucID)
    self:CreateQuestNpc(arg1, soldier1Data.SoldierID)
    self:CreateQuestNpc(arg1, soldier2Data.SoldierID)
    self:NotifyTo("Npc1404", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1409", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1413", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1475", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1477", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1523", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1603", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:RequestInteraction(dilucData.Diluc)
end

function Quest376:OnSubStart37608(arg1)
    print("37608 start:...")
    self:NotifyTo("Npc1404", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1409", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1413", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1475", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1477", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1523", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1465", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1603", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest376:OnSubFinish37601(arg1)
    print("OnFinished 37601")
end

function Quest376:OnSubFinish37602(arg1)
    print("OnFinished 37602")
    self:EscapeDestroy()
end

function Quest376:OnSubFinish37603(arg1)
    print("OnFinished 37603")
end

function Quest376:OnSubFinish37604(arg1)
    print("OnFinished 37604")
end

function Quest376:OnSubFinish37605(arg1)
    print("OnFinished 37605")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Wendy")
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)

    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest376:OnSubFinish37606(arg1)
    print("OnFinished 37606")
end

function Quest376:OnSubFinish37607(arg1)
    print("OnFinished 37607")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(soldier1Data.Soldier)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)

    self:ActionSafeCall(function(arg1)
        arg1:CreateQuestNpcById(37608, dilucData.DilucID)
        arg1:CreateQuestNpcById(37608, wendyData.WendyID)
        local questNpcActor = arg1:GetQuestNpcActor(soldier2Data.Soldier)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest376:OnSubFinish37608(arg1)
    print("OnFinished 37608")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest376:InvokeOnInteraction(arg1)
    if arg1 == 101 then
        print("Now Stop Talking")
    elseif arg1 == 102 then
        print("Now Start Talking")
    end
end

function Quest376:Start() end
function Quest376:OnDestroy() end
return Quest376
