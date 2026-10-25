require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11103 = class("Quest11103", QuestActorProxy)
Quest11103.defaultAlias = "Quest11103"
local subIDs
local n
local paimonData
local xiaoData
local tongqueData
local statueData
local censerData
local mingxsiData
local ghostData
local xhData

function Quest11103:OnDataLoaded()
    q11103Cfg = self.clientData
    subIDs = q11103Cfg.SubIDs
    n = 11103
    paimonData = q11103Cfg.PaimonData
    xiaoData = q11103Cfg.XiaoData
    tongqueData = q11103Cfg.TongqueData
    censerData = q11103Cfg.CenserData
    mingxsiData = q11103Cfg.MingxsiData
    statueData = q11103Cfg.StatueData
    ghostData = q11103Cfg.GhostData
    xhData = q11103Cfg.XHData
end

function Quest11103:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1110301"] = self.OnSubStart1110301
    self.subStartHandlers["1110302"] = self.OnSubStart1110302
    self.subStartHandlers["1110303"] = self.OnSubStart1110303
    self.subStartHandlers["1110304"] = self.OnSubStart1110304
    self.subStartHandlers["1110305"] = self.OnSubStart1110305
    self.subStartHandlers["1110306"] = self.OnSubStart1110306
    self.subStartHandlers["1110307"] = self.OnSubStart1110307
    self.subStartHandlers["1110308"] = self.OnSubStart1110308
    self.subStartHandlers["1110309"] = self.OnSubStart1110309
    self.subStartHandlers["1110310"] = self.OnSubStart1110310
    self.subStartHandlers["1110311"] = self.OnSubStart1110311
    self.subStartHandlers["1110312"] = self.OnSubStart1110312
    self.subStartHandlers["1110313"] = self.OnSubStart1110313
    self.subStartHandlers["1110314"] = self.OnSubStart1110314
    self.subStartHandlers["1110315"] = self.OnSubStart1110315
    self.subStartHandlers["1110316"] = self.OnSubStart1110316
end

function Quest11103:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1110301"] = self.OnSubFinish1110301
    self.subFinishHandlers["1110302"] = self.OnSubFinish1110302
    self.subFinishHandlers["1110303"] = self.OnSubFinish1110303
    self.subFinishHandlers["1110304"] = self.OnSubFinish1110304
    self.subFinishHandlers["1110305"] = self.OnSubFinish1110305
    self.subFinishHandlers["1110306"] = self.OnSubFinish1110306
    self.subFinishHandlers["1110307"] = self.OnSubFinish1110307
    self.subFinishHandlers["1110308"] = self.OnSubFinish1110308
    self.subFinishHandlers["1110309"] = self.OnSubFinish1110309
    self.subFinishHandlers["1110310"] = self.OnSubFinish1110310
    self.subFinishHandlers["1110311"] = self.OnSubFinish1110311
    self.subFinishHandlers["1110312"] = self.OnSubFinish1110312
    self.subFinishHandlers["1110313"] = self.OnSubFinish1110313
    self.subFinishHandlers["1110314"] = self.OnSubFinish1110314
    self.subFinishHandlers["1110315"] = self.OnSubFinish1110315
    self.subFinishHandlers["1110316"] = self.OnSubFinish1110316
end

function Quest11103:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11103:XiaoVanish()
    local questNpcActor = self:GetQuestNpcActor(xiaoData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11103:TQVanish()
    local questNpcActor = self:GetQuestNpcActor(tongqueData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11103:GhostVanish()
    local questNpcActor = self:GetQuestNpcActor(ghostData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11103:XHVanish()
    local questNpcActor = self:GetQuestNpcActor(xhData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11103:InvokeOnInteraction(arg1)
    print("11102 Invoke : ")
    if arg1 == 1 then
        print("Invoke 1")
        self:ShowReadingDialog(100452)
    end

    if arg1 == 2 then
        print("Invoke 2")
        local actor = actorMgr:GetActor(q11103Cfg.ActorAlias)
        if actor ~= nil then
            print("***************get quest success")
            actor:FinishQuest(false, nil)
        end
    end

    if arg1 == 3 then
        print("Invoke 1")
        self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "QUEST_Message_Q1110301")
        local actor = actorMgr:GetActor(q11103Cfg.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end

    if arg1 == 4 then
        print("Invoke 4")
        self:GetQuestNpcActor(ghostData.Alias):DestroyWithDither(false, 1)
    end
end

function Quest11103:OnSubStart1110313(arg1)
    print("********1110301 start")
    self:CreateQuestNpc(arg1, tongqueData.ID)
    self:SpawnGadget(arg1, 70710063, 1)
    actorMgr:CreateActorWithPos("Q1110206Trigger", "Actor/Gadget/Q1110206Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1110206Aside").pos, sceneData:GetDummyPoint(3, "Q1110206Aside").rot, true, false)
    actorMgr:CreateActorWithPos("Q1110313Trigger", "Actor/Gadget/Q1110313Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1110313TQ").pos, sceneData:GetDummyPoint(3, "Q1110313TQ").rot, true, false)
end

function Quest11103:OnSubFinish1110313(arg1)
    print("********RequestInteraction start")
    self:ClearNarratorTask()
end

function Quest11103:OnSubStart1110314(arg1)
    print("********1110301 start")
    self:CreateQuestNpc(arg1, tongqueData.ID)
    self:RequestInteraction("Npc10201")
end

function Quest11103:OnSubFinish1110314(arg1)
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest11103:OnSubStart1110301(arg1)
    print("********1110301 start")
    self:CreateQuestNpc(arg1, censerData.ID)
end

function Quest11103:OnSubFinish1110301(arg1)
    globalActor:UnSpawn("Censer01")
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest11103:OnSubStart1110302(arg1)
    print("********1110302 start")
end

function Quest11103:OnSubFinish1110302(arg1)
    self:NarratorOnlyTaskByData(q11103Cfg.NarratorData1, nil, "StoryCut")
end

function Quest11103:OnSubStart1110303(arg1)
    print("********1110303 start")
    self:ActionSafeCall(self.TQVanish)
    self:CreateQuestNpc(arg1, statueData.ID)
    actorMgr:CreateActorWithPos("Q1110303Trigger", "Actor/Gadget/Q1110303Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1110303Statue").pos, sceneData:GetDummyPoint(3, "Q1110303Statue").rot, true, false)
end

function Quest11103:OnSubFinish1110303(arg1)
    print("********1110303 Finish")
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest11103:OnSubStart1110304(arg1)
    print("********1110303 start")
end

function Quest11103:OnSubFinish1110304(arg1)
    print("********1110303 Finish")
end

function Quest11103:OnSubStart1110312(arg1)
    print("********1110303 start")
    self:NotifyTo("Npc2426", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest11103:OnSubFinish1110312(arg1)
    print("********1110303 Finish")
    self:CreateQuestNpc(arg1, xiaoData.ID)
end

function Quest11103:OnSubStart1110305(arg1)
    print("********1110303 start")
end

function Quest11103:OnSubFinish1110305(arg1)
    print("********1110303 Finish")
end

function Quest11103:OnSubStart1110306(arg1)
    print("********1110303 start")
    self:CreateQuestNpc(arg1, mingxsiData.ID)
end

function Quest11103:OnSubFinish1110306(arg1)
    print("********1110303 Finish")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.XiaoVanish)
    self:NarratorOnlyTaskByData(q11103Cfg.NarratorData2, nil, "StoryCut")
end

function Quest11103:OnSubStart1110315(arg1)
    print("********1110303 start")
end

function Quest11103:OnSubFinish1110315(arg1)
    print("********1110303 Finish")
end

function Quest11103:OnSubStart1110307(arg1)
    print("********1110303 start")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({xiaoData.Alias})
    local actor = actorMgr:GetActor(q11103Cfg.ActorAlias)
    self:CallDelay(2, function(arg1_2)
        actor:TransmitPlayerByQuestId(1110307, 1, nil, function(arg1_2)
            arg1_2:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, xiaoData.ID)
                arg1_2:RequestInteraction("Npc10204")
                print("SHOW BLACK SCREEN 12000")
            end, nil, entityCreateTask, "QUEST_Black_Q1110003")
        end)
    end)
end

function Quest11103:OnSubFinish1110307(arg1)
    print("********1110303 Finish")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.XiaoVanish)
    self:ActionSafeCall(self.GhostVanish)
end

function Quest11103:OnSubStart1110308(arg1)
    print("********1110303 start")
end

function Quest11103:OnSubFinish1110308(arg1)
    print("********1110303 Finish")
end

function Quest11103:OnSubStart1110309(arg1)
    print("********1110303 start")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({xiaoData.Alias})
    local actor = actorMgr:GetActor(q11103Cfg.ActorAlias)
    self:CallDelay(2, function(arg1_2)
        actor:TransmitPlayerByQuestId(1110308, 1, nil, function(arg1_2)
            arg1_2:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, xiaoData.ID)
                arg1_2:RequestInteraction("Npc10204")
                print("SHOW BLACK SCREEN 12000")
            end, nil, entityCreateTask, "QUEST_Black_Q1110003")
        end)
    end)
end

function Quest11103:OnSubFinish1110309(arg1)
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.XiaoVanish)
    self:ActionSafeCall(self.GhostVanish)
end

function Quest11103:OnSubStart1110310(arg1)
    print("********1110303 start")
    self:NotifyTo("Npc2202", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2426", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest11103:OnSubFinish1110310(arg1)
    print("********1110303 Finish")
    self:ActionSafeCall(self.PaimonVanish)
    self:NotifyTo("Npc2202", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest11103:OnSubStart1110311(arg1)
    print("********1110303 start")
    self:CreateQuestNpc(arg1, xiaoData.ID)
    self:GetQuestNpcActor(xiaoData.Alias):SitOnChair(8010)
end

function Quest11103:OnSubFinish1110311(arg1)
    print("********1110303 Finish")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.XHVanish)
    local questNpcActor = self:GetQuestNpcActor(xiaoData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11103:OnSubFinish1110316(arg1)
    print("********1110303 Finish")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.XiaoVanish)
end

function Quest11103:Start() end
function Quest11103:OnDestroy() end
return Quest11103
