require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest375 = class("Quest375", QuestActorProxy)
Quest375.defaultAlias = "Quest375"
local clientData
local subIDs
local DailyNPCManager = require("Actor/DailyNPCManager")

local wendyData
local guardData
local tbl
local n = 0

function Quest375:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    wendyData = clientData.WendyData
    guardData = clientData.GuardData
    tbl = {
        clientData.SneakAI1Data,
        clientData.SneakAI2Data,
        clientData.SneakAI3Data,
        clientData.SneakAI4Data,
        clientData.SneakAI5Data,
        clientData.SneakAI6Data,
        clientData.SneakAI7Data,
        clientData.SneakAI8Data,
        clientData.SneakAI9Data,
        clientData.SneakAI10Data,
        clientData.SneakAI11Data,
        clientData.SneakAI12Data,
        clientData.SneakAI13Data,
        clientData.SneakAI14Data
    }
end

function Quest375:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["37501"] = self.OnSubStart37501
    self.subStartHandlers["37502"] = self.OnSubStart37502
    self.subStartHandlers["37503"] = self.OnSubStart37503
    self.subStartHandlers["37504"] = self.OnSubStart37504
    self.subStartHandlers["37505"] = self.OnSubStart37505
    self.subStartHandlers["37506"] = self.OnSubStart37506
    self.subStartHandlers["37507"] = self.OnSubStart37507
end

function Quest375:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["37501"] = self.OnSubFinish37501
    self.subFinishHandlers["37502"] = self.OnSubFinish37502
    self.subFinishHandlers["37503"] = self.OnSubFinish37503
    self.subFinishHandlers["37504"] = self.OnSubFinish37504
    self.subFinishHandlers["37505"] = self.OnSubFinish37505
    self.subFinishHandlers["37506"] = self.OnSubFinish37506
    self.subFinishHandlers["37507"] = self.OnSubFinish37507
end

function Quest375:FailMovePlayer()
    print("fail move player ")
    self:TransmitPlayerByQuestId(37504, 1, self.FinishSneak)
    self:ExitSneakMode()
    self:TriggerLevelAbility("Level_Remove_Switch_SneakBtn")
end

function Quest375:SuccessMovePlayer()
    print("success move player ")
    self:PlayFirstCutscene()
    self:ExitSneakMode()
    self:TriggerLevelAbility("Level_Remove_Switch_SneakBtn")
end

function Quest375:PlayFirstCutscene(arg1)
    self:PlayCutsceneIndex(37501, self.FinishSneak)
    print("PlayFirstCutscene")
end

function Quest375:SuccTrans(arg1)
    self:TransmitPlayerByQuestId(37506, 1)
    print("SuccTrans")
end

function Quest375:FinishSneak()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest375:PlaySecondCutscene(arg1)
    self:PlayCutsceneIndex(37502, self.FinishSneak)
    print("PlaySecondCutscene")
end

function Quest375:SneakAIPrepare()
    print("FailNum is", n)
    if n < 2 then
        tbl = {
            clientData.SneakAI2Data,
            clientData.SneakAI3Data,
            clientData.SneakAI4Data,
            clientData.SneakAI5Data,
            clientData.SneakAI6Data,
            clientData.SneakAI7Data,
            clientData.SneakAI8Data,
            clientData.SneakAI9Data,
            clientData.SneakAI10Data,
            clientData.SneakAI11Data,
            clientData.SneakAI12Data,
            clientData.SneakAI13Data,
            clientData.SneakAI14Data
        }

        clientData.SneakAINum = 13
        print("SneakAINum is", clientData.SneakAINum)
    else
        tbl = {
            clientData.SneakAI2Data,
            clientData.SneakAI3Data,
            clientData.SneakAI4Data,
            clientData.SneakAI6Data,
            clientData.SneakAI8Data,
            clientData.SneakAI9Data,
            clientData.SneakAI10Data,
            clientData.SneakAI12Data,
            clientData.SneakAI14Data
        }

        clientData.SneakAINum = 9
        print("SneakAINum is", clientData.SneakAINum)
    end

    for i = 1, clientData.SneakAINum do
        local questNpcById = self:CreateQuestNpcById(37503, tbl[i].configID)
        questNpcById.PatrolPosNum = tbl[i].PatrolPosNum
        questNpcById.PatrolPos = tbl[i].PatrolPos
        questNpcById.PatrolDir = tbl[i].PatrolDir
        questNpcById.PatrolNext = 1
        questNpcById:Start()
    end
end

function Quest375:SneakAIDestroy()
    for i = 1, clientData.SneakAINum do
        local questNpcActor = self:GetQuestNpcActor(tbl[i].alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end

    for i = 1, #clientData.TreasurePos do
        self:UnSpawn("Treasure" .. tostring(i))
    end
end

function Quest375:OnSubStart37501(arg1)
    print("37501 start xxx ")
    self:NotifyTo("Npc1430", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1443", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, wendyData.WendyID)
end

function Quest375:OnSubStart37502(arg1)
    print("37502 start:...")
    globalActor:EnablePlayerInput(true)
    self:NotifyTo("Npc1430", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1443", DailyNPCManager.NpcEventType.HIDESELF, true)
    local maidData = require("Quest/Client/Q374ClientConfig").MaidData
    local actor = actorMgr:GetActor(maidData.Maid .. tostring(374))
    if actor ~= nil then
        print("maid start:...")
        actor:Destroy(false)
    end
end

function Quest375:OnSubStart37503(arg1)
    print("37503 start:...")
    self:SneakAIDestroy()
    self:UnSpawn("Harp")
    self:UnSpawn("Goal")
    clientData.gotKey = false
    self:SneakAIPrepare()
    self:SpawnGadget(arg1, 70300040)
    self:CallDelay(2.5, self.SneakStart)
    self:EnterSneakMode(11)
    self:TriggerLevelAbility("Level_Apply_Switch_SneakBtn")
end

function Quest375:OnSubStart37504(arg1)
    print("37504 start:...")
    n = n + 1
    globalActor:EnablePlayerInput(false)
    self:CallDelay(2.4, function(arg1)
        globalActor:EnablePlayerInput(true)
    end)

    self:CallDelay(2.5, self.FailMovePlayer)
    self:CallDelay(2.5, self.SneakAIDestroy)
    self:UnSpawn("Harp")
    self:UnSpawn("Goal")
end

function Quest375:OnSubStart37505(arg1)
    print("37505 start:...")
    self:CallDelay(0.5, self.SuccessMovePlayer)
    self:CallDelay(0.5, self.SneakAIDestroy)
    self:NotifyTo("Npc1430", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1443", DailyNPCManager.NpcEventType.STARTDAILY, true)
end

function Quest375:OnSubStart37506(arg1)
    print("37506 start:...")
    self:SuccTrans()
end

function Quest375:OnSubStart37507(arg1)
    print("37507 start:...")
    self:PlaySecondCutscene()
end

function Quest375:SneakStart()
    self:EnterSceneLookCamera(clientData.KeyPos, 1.5, 2, true)
end

function Quest375:ShowTutorial(arg1)
    self:ShowTutorialDialog(160, function()
        globalActor:StartGuide("ChangeTimeGuidePC")
    end)
end

function Quest375:OnSubFinish37501(arg1)
    print("OnFinished 37501")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)

    self:ActionSafeCall(self.ShowTutorial)
end

function Quest375:OnSubFinish37502(arg1)
    print("OnFinished 37502")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(wendyData.Wendy)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)

    self:ActionSafeCall(function(arg1)
        local actor = actorMgr:GetActor("Maid" .. tostring(374))
        if actor ~= nil then
            actor:Destroy(false)
        end
    end)
end

function Quest375:OnSubFinish37503(arg1)
    print("OnFinished 37503")
end

function Quest375:OnSubFinish37504(arg1)
    print("OnFinished 37504")
end

function Quest375:OnSubFinish37505(arg1)
    print("OnFinished 37505")
end

function Quest375:OnSubFinish37506(arg1)
    print("OnFinished 37506")
end

function Quest375:OnSubFinish37507(arg1)
    print("OnFinished 37507")
end

function Quest375:Start() end
function Quest375:OnDestroy() end
return Quest375
