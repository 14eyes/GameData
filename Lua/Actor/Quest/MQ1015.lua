require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1015 = class("Quest1015", QuestActorProxy)
Quest1015.defaultAlias = "Quest1015"
local clientData
local subIDs
local qiqiData
local monster1Data
local monster2Data
local monster3Data
local paimonData
local stackData
local zhongliData
local baiShuData
local gongZiData
local ykData
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest1015:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    qiqiData = clientData.QiqiData
    monster1Data = clientData.Monster1Data
    monster2Data = clientData.Monster2Data
    monster3Data = clientData.Monster3Data
    paimonData = clientData.PaimonData
    stackData = clientData.StackData
    zhongliData = clientData.ZhongliData
    baiShuData = clientData.BaiShuData
    gongZiData = clientData.GongZiData
    ykData = clientData.YKData
    AERData = clientData.AERData
end

function Quest1015:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["101501"] = self.OnSubStart101501
    self.subStartHandlers["101502"] = self.OnSubStart101502
    self.subStartHandlers["101503"] = self.OnSubStart101503
    self.subStartHandlers["101504"] = self.OnSubStart101504
    self.subStartHandlers["101505"] = self.OnSubStart101505
    self.subStartHandlers["101506"] = self.OnSubStart101506
    self.subStartHandlers["101507"] = self.OnSubStart101507
    self.subStartHandlers["101508"] = self.OnSubStart101508
    self.subStartHandlers["101509"] = self.OnSubStart101509
    self.subStartHandlers["101510"] = self.OnSubStart101510
    self.subStartHandlers["101511"] = self.OnSubStart101511
    self.subStartHandlers["101512"] = self.OnSubStart101512
    self.subStartHandlers["101513"] = self.OnSubStart101513
    self.subStartHandlers["101514"] = self.OnSubStart101514
end

function Quest1015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["101501"] = self.OnSubFinish101501
    self.subFinishHandlers["101502"] = self.OnSubFinish101502
    self.subFinishHandlers["101503"] = self.OnSubFinish101503
    self.subFinishHandlers["101504"] = self.OnSubFinish101504
    self.subFinishHandlers["101505"] = self.OnSubFinish101505
    self.subFinishHandlers["101506"] = self.OnSubFinish101506
    self.subFinishHandlers["101507"] = self.OnSubFinish101507
    self.subFinishHandlers["101508"] = self.OnSubFinish101508
    self.subFinishHandlers["101509"] = self.OnSubFinish101509
    self.subFinishHandlers["101510"] = self.OnSubFinish101510
    self.subFinishHandlers["101511"] = self.OnSubFinish101511
    self.subFinishHandlers["101512"] = self.OnSubFinish101512
    self.subFinishHandlers["101513"] = self.OnSubFinish101513
    self.subFinishHandlers["101514"] = self.OnSubFinish101514
end

function Quest1015:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest1015:Monster1Destroy()
    local questNpcActor = self:GetQuestNpcActor(monster1Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1015:Monster2Destroy()
    local questNpcActor = self:GetQuestNpcActor(monster2Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1015:Monster3Destroy()
    local questNpcActor = self:GetQuestNpcActor(monster3Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1015:ZhongliDestroy()
    local questNpcActor = self:GetQuestNpcActor(zhongliData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1015:BaiShuDestroy()
    local questNpcActor = self:GetQuestNpcActor(baiShuData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1015:GongZiDestroy()
    local questNpcActor = self:GetQuestNpcActor(gongZiData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1015:YKDestroy()
    local questNpcActor = self:GetQuestNpcActor(ykData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1015:QiqiDestroy()
    local questNpcActor = self:GetQuestNpcActor(qiqiData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1015:InvokeOnInteraction(arg1)
    print("1014 Invoke : ")
    if arg1 == 1 then
        print("Invoke 1")
        self:CallDelay(0.5, function(arg1)
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 101511)
            end
        end)
    end

    if arg1 == 2 then
        print("Invoke 2")
        self:CallDelay(0.2, function(arg1)
            arg1:ShowBlackScreen(0, 0, 0, function(arg1)
                local actor = actorMgr:GetActor(clientData.ActorAlias)
                if actor ~= nil then
                    actor:FinishQuestID(false, 101506)
                end
            end, nil, task, "QUEST_Black_Q1110003")
        end)
    end

    if arg1 == 10 then
        self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "QUEST_Message_Q101507")
    end
end

function Quest1015:OnSubStart101501(arg1)
    print("101501 start:...")
    self:CreateQuestNpc(arg1, qiqiData.ID)
    self:NotifyTo("Npc2103", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2068", NpcUtil.NpcEventType.HIDESELF, true)
    actorMgr:CreateActorWithPos("Q101501Trigger", "Actor/Gadget/Q101501Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q101513trigger").pos, sceneData:GetDummyPoint(3, "Q101513trigger").rot, true, false)
end

function Quest1015:OnSubStart101513(arg1)
    print("101513 start*************")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({paimonData.Alias})
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    self:CallDelay(0.5, function(arg1_2)
        actor:TransmitPlayerByQuestId(101513, 1, nil, function(arg1_2)
            arg1_2:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, paimonData.ID)
                arg1_2:RequestInteraction("Paimon")
                print("SHOW BLACK SCREEN 12000")
            end, nil, entityCreateTask, "QUEST_Black_Q1110003")
        end)
    end)
end

function Quest1015:OnSubStart101509(arg1)
    print("101509 start:...")
    self:NotifyTo("Npc2103", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2068", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest1015:OnSubStart101502(arg1)
    print("101502 start:...")
    actorMgr:CreateActorWithPos("Q101503Trigger", "Actor/Gadget/Q101503Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q101503Trigger").pos, sceneData:GetDummyPoint(3, "Q101503Trigger").rot, true, false)
end

function Quest1015:OnSubStart101508(arg1)
    print("101508 start:...")
    self:SpawnGadget(arg1, 71700100, 1)
end

function Quest1015:OnSubStart101503(arg1)
    print("101503 start:...")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({paimonData.Alias})
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    self:CallDelay(2, function(arg1_2)
        actor:TransmitPlayerByQuestId(101503, 1, nil, function(arg1_2)
            arg1_2:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, paimonData.ID)
                arg1_2:CreateQuestNpc(arg1, zhongliData.ID)
                arg1_2:RequestInteraction("Paimon")
                print("SHOW BLACK SCREEN 12000")
            end, nil, entityCreateTask, "QUEST_Black_Q1110003")
        end)
    end)
end

function Quest1015:OnSubStart101504(arg1)
    print("101504 start:...")
    self:SpawnGadget(arg1, 70300118, 1)
    actorMgr:CreateActorWithPos("Q101504Trigger", "Actor/Gadget/Q101504Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q101504trigger").pos, sceneData:GetDummyPoint(3, "Q101504trigger").rot, true, false)
end

function Quest1015:OnSubStart101505(arg1)
    print("101505 start:...")
    self:SpawnGadget(arg1, 71700107, 1)
end

function Quest1015:OnSubStart101506(arg1)
    print("101506 start:...")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({paimonData.Alias})
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    self:CallDelay(2, function(arg1_2)
        actor:TransmitPlayerByQuestId(101506, 1, nil, function(arg1_2)
            arg1_2:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, paimonData.ID)
                arg1_2:CreateQuestNpc(arg1, zhongliData.ID)
                arg1_2:RequestInteraction("Paimon")
                print("SHOW BLACK SCREEN 12000")
            end, nil, entityCreateTask, "QUEST_Black_Q1110003")
        end)
    end)
end

function Quest1015:OnSubStart101510(arg1)
    print("101510 start:...")
    actorMgr:CreateActorWithPos("Q101510FailTrigger", "Actor/Gadget/Q101510FailTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q101504Guild").pos, sceneData:GetDummyPoint(3, "Q101504Guild").rot, true, false)
end

function Quest1015:OnSubStart101514(arg1)
    print("101514 start:...")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({paimonData.Alias})
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    self:CallDelay(2, function(arg1_2)
        actor:TransmitPlayerByQuestId(101514, 1, nil, function(arg1_2)
            arg1_2:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, paimonData.ID)
                arg1_2:CreateQuestNpc(arg1, zhongliData.ID)
                arg1_2:RequestInteraction("Paimon")
                print("SHOW BLACK SCREEN 12000")
            end, nil, entityCreateTask, "QUEST_Black_Q1110003")
        end)
    end)
end

function Quest1015:OnSubStart101507(arg1)
    print("101507 start:...")
    self:CreateQuestNpc(arg1, qiqiData.ID)
    self:NotifyTo("Npc2103", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2068", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest1015:OnSubStart101511(arg1)
    print("101511 start:...")
    self:CreateQuestNpc(arg1, zhongliData.ID)
end

function Quest1015:OnSubStart101512(arg1)
    print("101512 start:...")
end

function Quest1015:OnSubFinish101501(arg1)
    print("OnFinished 101501")
end

function Quest1015:OnSubFinish101513(arg1)
    print("OnFinished 101503")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.ZhongliDestroy)
end

function Quest1015:OnSubFinish101509(arg1)
    print("OnFinished 101503")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.ZhongliDestroy)
end

function Quest1015:OnSubFinish101502(arg1)
    print("OnFinished 101502")
    self:ActionSafeCall(self.QiqiDestroy)
    self:NotifyTo("Npc2103", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2068", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NarratorOnlyTaskLegacy(clientData.NarratorData0, nil, "StoryCut")
end

function Quest1015:OnSubFinish101503(arg1)
    print("OnFinished 101503")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.ZhongliDestroy)
end

function Quest1015:OnSubFinish101504(arg1)
    print("OnFinished 101504")
    self:NarratorOnlyTaskLegacy(clientData.NarratorData1, nil, "StoryCut")
    globalActor:UnSpawn("Q101504Guild")
end

function Quest1015:OnSubFinish101505(arg1)
    print("OnFinished 101505")
end

function Quest1015:OnSubFinish101506(arg1)
    print("OnFinished 101506")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.ZhongliDestroy)
    self:ActionSafeCall(self.Monster1Destroy)
    self:ActionSafeCall(self.Monster2Destroy)
    self:ActionSafeCall(self.Monster3Destroy)
end

function Quest1015:OnSubFinish101514(arg1)
    print("OnFinished 101503")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.ZhongliDestroy)
end

function Quest1015:OnSubFinish101507(arg1)
    print("OnFinished 101507")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.GongZiDestroy)
    self:ActionSafeCall(self.YKDestroy)
end

function Quest1015:OnSubFinish101510(arg1)
    print("101507 start:...")
    self:NarratorOnlyTaskLegacy(clientData.NarratorData2, nil, "StoryCut")
end

function Quest1015:OnSubFinish101511(arg1)
    print("OnFinished 101503")
    self:NotifyTo("Npc2103", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2068", NpcUtil.NpcEventType.STARTDAILY, true)
    self:ActionSafeCall(self.BaiShuDestroy)
    self:ActionSafeCall(self.QiqiDestroy)
end

function Quest1015:OnSubFinish101512(arg1)
    print("101507 start:...")
    self:ActionSafeCall(self.ZhongliDestroy)
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.BaiShuDestroy)
    self:ActionSafeCall(self.QiqiDestroy)
    self:GetQuestNpcActor(AERData.Alias):DoFreeStyle(4260)
end

function Quest1015:Start() end
function Quest1015:OnDestroy() end
return Quest1015
