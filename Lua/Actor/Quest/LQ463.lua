require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest463 = class("Quest463", QuestActorProxy)
Quest463.defaultAlias = "Quest463"
local Q463ClientConfig = require("Quest/Client/Q463ClientConfig")

local kaeyaData = Q463ClientConfig.KaeyaData
local paimonData = Q463ClientConfig.PaimonData
local kaeyaNPCBossData = Q463ClientConfig.KaeyaNPCBossData
local dungeonData = Q463ClientConfig.DungeonData
local invisible = Q463ClientConfig.Invisible
local soldierData = Q463ClientConfig.SoldierData

function Quest463:PaimonVanish()
    print("463 PaimonVanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest463:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["46300"] = self.OnSubStart46300
    self.subStartHandlers["46301"] = self.OnSubStart46301
    self.subStartHandlers["46302"] = self.OnSubStart46302
    self.subStartHandlers["46303"] = self.OnSubStart46303
    self.subStartHandlers["46304"] = self.OnSubStart46304
    self.subStartHandlers["46305"] = self.OnSubStart46305
    self.subStartHandlers["46306"] = self.OnSubStart46306
    self.subStartHandlers["46307"] = self.OnSubStart46307
    self.subStartHandlers["46308"] = self.OnSubStart46308
end

function Quest463:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["46300"] = self.OnSubFinish46300
    self.subFinishHandlers["46301"] = self.OnSubFinish46301
    self.subFinishHandlers["46302"] = self.OnSubFinish46302
    self.subFinishHandlers["46303"] = self.OnSubFinish46303
    self.subFinishHandlers["46304"] = self.OnSubFinish46304
    self.subFinishHandlers["46305"] = self.OnSubFinish46305
    self.subFinishHandlers["46306"] = self.OnSubFinish46306
    self.subFinishHandlers["46307"] = self.OnSubFinish46307
    self.subFinishHandlers["46308"] = self.OnSubFinish46308
end

function Quest463:PaimonEnter()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    questNpcActor:SetVisible(true)
    print("463 PaimonEnter")
    questNpcActor:WalkToTask(paimonData.Pos3, function(arg1, arg2)
        arg1:Standby()
        print("463 PaimonEnter TurnTo")
        arg1:TurnTo(M.Euler2DirXZ(paimonData.Dir3))
    end)
end

function Quest463:KaeyaLeave()
    local questNpcActor = self:GetQuestNpcActor(kaeyaData.Kaeya)
    questNpcActor:SetVisible(true)
    questNpcActor:EnableInteraction(false)
    print("463 KaeyaLeave")
    questNpcActor:WalkToTask(paimonData.BornPos, function(arg1, arg2)
        arg1:EnableInteraction(true)
        arg1:Standby()
        arg1:SetVisible(false)
    end)
end

function Quest463:Soldier1Enter()
    local questNpcActor = self:GetQuestNpcActor(soldierData.Alias1)
    questNpcActor:SetVisible(true)
    questNpcActor:WalkToTask(soldierData.Pos1, function(arg1, arg2)
        arg1:Standby()
        arg1:TurnTo(M.Euler2DirXZ(soldierData.Dir1))
    end)
end

function Quest463:Soldier2Enter()
    local questNpcActor = self:GetQuestNpcActor(soldierData.Alias2)
    questNpcActor:SetVisible(true)
    questNpcActor:WalkToTask(soldierData.Pos2, function(arg1, arg2)
        arg1:TurnTo(M.Euler2DirXZ(soldierData.Dir2))
    end)
end

function Quest463:KaeyaEnter()
    local questNpcActor = self:GetQuestNpcActor(kaeyaData.Kaeya)
    questNpcActor:SetVisible(true)
    print("463 KaeyaEnter")
    questNpcActor:WalkToTask(kaeyaData.InPos, function(arg1, arg2)
        arg1:Standby()
        arg1:TurnTo(M.Euler2DirXZ(kaeyaData.InDir))
    end)

    self:CallDelay(0.1, self.Soldier1Enter)
    self:CallDelay(0.2, self.Soldier2Enter)
end

function Quest463:NPCEnter()
    local questNpcActor = self:GetQuestNpcActor(kaeyaNPCBossData.NpcBoss)
    questNpcActor:SetVisible(true)
    print("463 NPCEnter")
    questNpcActor:WalkToTask(kaeyaNPCBossData.NpcBossPos, function(arg1, arg2)
        arg1:Standby()
        print("463 NPCEnter TurnTo")
        arg1:TurnTo(M.Euler2DirXZ(kaeyaNPCBossData.NpcBossDir))
    end)
end

function Quest463:NPCRun()
    local questNpcActor = self:GetQuestNpcActor(kaeyaNPCBossData.NpcBoss)
    print("463 NPCRun")
    questNpcActor:RunToTask(kaeyaNPCBossData.TrapPos, function(arg1, arg2)
        arg1:Standby()
        arg1:TurnTo(M.Euler2DirXZ(kaeyaNPCBossData.TrapDir))
        print("Invoke 0 finish quest")
        local actor = actorMgr:GetActor(Q463ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end)
end

function Quest463:NPCRun2()
    local questNpcActor = self:GetQuestNpcActor(kaeyaNPCBossData.NpcBoss)
    print("463 NPCRun")
    questNpcActor:RunToTask(kaeyaNPCBossData.LastPos, function(arg1, arg2)
        arg1:Standby()
        arg1:PerformDither(false, 2)
    end)
end

function Quest463:NPCTrans()
    local questNpcActor = self:GetQuestNpcActor(kaeyaNPCBossData.NpcBoss)
    print("463 NPCTrans")
    questNpcActor:ClearAllTask()
    questNpcActor:SetPosAndTurnTo(kaeyaNPCBossData.NpcBossPos, M.Euler2DirXZ(kaeyaNPCBossData.NpcBossDir), true)
end

function Quest463:PaiMonTrans()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    print("463 PaiMonTrans")
    questNpcActor:ClearAllTask()
    questNpcActor:SetPosAndTurnTo(paimonData.Pos3, M.Euler2DirXZ(paimonData.Dir3), true)
end

function Quest463:KaeyaTrans()
    local questNpcActor = self:GetQuestNpcActor(kaeyaData.Kaeya)
    local v = self:GetQuestNpcActor(soldierData.Alias1)
    local questNpcActor2 = self:GetQuestNpcActor(soldierData.Alias2)
    print("463 KaeyaTrans")
    questNpcActor:ClearAllTask()
    v:ClearAllTask()
    questNpcActor2:ClearAllTask()
    questNpcActor:SetPosAndTurnTo(kaeyaData.InPos, M.Euler2DirXZ(kaeyaData.InDir), true)
    v:SetPosAndTurnTo(soldierData.Pos1, M.Euler2DirXZ(soldierData.Dir1), true)
    questNpcActor2:SetPosAndTurnTo(soldierData.Pos2, M.Euler2DirXZ(soldierData.Dir2), true)
end

function Quest463:InvokeOnInteraction(arg1)
    print("463 Invoke : ")
    if arg1 == 0 then
        print("Invoke 0 finish quest")
        local actor = actorMgr:GetActor(Q463ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    elseif arg1 == 1 then
        print("Invoke 1 paimon born")
        self:PaimonEnter()
    elseif arg1 == 2 then
        self:NPCEnter()
    elseif arg1 == 3 then
        self:KaeyaEnter()
    elseif arg1 == 4 then
        local actor = actorMgr:GetActor(Q463ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    elseif arg1 == 5 then
        print("Invoke 5 kaeya leave")
        self:KaeyaLeave()
    elseif arg1 == 6 then
        print("Invoke 6 npc trans")
        self:NPCTrans()
    elseif arg1 == 7 then
        print("Invoke 7 PaiMonTrans")
        self:PaiMonTrans()
    elseif arg1 == 8 then
        print("Invoke 8 KaeyaTrans")
        self:KaeyaTrans()
    elseif arg1 == 10 then
        print("Invoke 10 treasure")
        self:ShowQuestPictureDialog(182)
    elseif arg1 == 11 then
        print("Invoke 11 treasure")
        self:NPCDisappear()
    elseif arg1 == 12 then
        print("Invoke 12 treasure")
        self:CallDelay(3, self.NPCRun2)
    end
end

function Quest463:NPCDisappear()
    local questNpcActor = self:GetQuestNpcActor(kaeyaNPCBossData.NpcBoss)
    local v = self:GetQuestNpcActor(soldierData.Alias1)
    local questNpcActor2 = self:GetQuestNpcActor(soldierData.Alias2)
    questNpcActor:SetVisible(false)
    v:SetVisible(false)
    questNpcActor2:SetVisible(false)
end

function Quest463:OnSubFinish46306(arg1)
    print("46306 Finish : Creat Kaeya")
end

function Quest463:StartTalk46300()
    print("46302 Start : ")
    self:CreateQuestNpcById(46300, paimonData.ID)
    self:CallDelay(0.2, function(arg1)
        arg1:RequestInteraction(paimonData.Alias)
    end)
end

function Quest463:StartTalk46301()
    print("46302 Start : ")
    self:CreateQuestNpcById(46301, paimonData.ID)
    self:CallDelay(0.2, function(arg1)
        print("46307 RequestInteraction : ")
        arg1:RequestInteraction(paimonData.Alias)
    end)
end

function Quest463:OnSubStart46300(arg1)
    print("46300 Start : Creat paimon")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk46300)
end

function Quest463:OnSubFinish46300(arg1)
    print("46300 Finish : ")
    self:ActionSafeCall(function(arg1)
        arg1:PaimonVanish()
    end)
end

function Quest463:OnSubStart46301(arg1)
    print("46301 Start : Creat door")
end

function Quest463:OnSubFinish46301(arg1)
    print("46301 Start : Creat Kaeya")
end

function Quest463:OnSubStart46302(arg1)
    print("46302 Start : ")
end

function Quest463:StartTalk()
    print("46302 Start : ")
    self:CreateQuestNpcById(46303, paimonData.ID)
    self:CallDelay(0.2, function(arg1)
        arg1:RequestInteraction(paimonData.Alias)
    end)
end

function Quest463:OnSubStart46303(arg1)
    print("46303 Start : ")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk)
end

function Quest463:OnSubStart46304(arg1)
    print("46304 Start : ")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(kaeyaNPCBossData.NpcBoss)
        local v = arg1:GetQuestNpcActor(kaeyaData.Kaeya)
        local questNpcActor2 = arg1:GetQuestNpcActor(soldierData.Alias1)
        local questNpcActor3 = arg1:GetQuestNpcActor(soldierData.Alias2)
        local questNpcActor4 = arg1:GetQuestNpcActor(paimonData.Alias)
        questNpcActor:Destroy(false)
        v:Destroy(false)
        questNpcActor2:Destroy(false)
        questNpcActor3:Destroy(false)
        questNpcActor4:Destroy(false)
        arg1:NarratorOnlyTaskLegacy(Q463ClientConfig.NarratorData.Story1, nil, "Story")
    end)
end

function Quest463:OnSubStart46307(arg1)
    print("46307 Start : ")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk46301)
end

function Quest463:OnSubFinish46307(arg1)
    print("46307 Finish : ")
    self:PaimonVanish()
end

function Quest463:OnSubStart46305(arg1)
    print("46305 Start : ")
    self:CallDelay(6, function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, arg1.StartTalk)
    end)
end

function Quest463:OnSubFinish46305(arg1)
    print("46305 Finish : ")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(kaeyaNPCBossData.NpcBoss)
        local v = arg1:GetQuestNpcActor(kaeyaData.Kaeya)
        local questNpcActor2 = arg1:GetQuestNpcActor(soldierData.Alias1)
        local questNpcActor3 = arg1:GetQuestNpcActor(soldierData.Alias2)
        local questNpcActor4 = arg1:GetQuestNpcActor(paimonData.Alias)
        questNpcActor:Destroy(false)
        v:Destroy(false)
        questNpcActor2:Destroy(false)
        questNpcActor3:Destroy(false)
    end)

    self:PaimonVanish()
end

function Quest463:Start() end
function Quest463:OnDestroy() end
return Quest463
