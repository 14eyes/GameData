require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest490 = class("Quest490", QuestActorProxy)
Quest490.defaultAlias = "Quest490"
local Q490ClientConfig = require("Quest/Client/Q490ClientConfig")

local paimonData = Q490ClientConfig.PaimonData
local qinData = Q490ClientConfig.QinData
local barbaraData = Q490ClientConfig.BarbaraData
local kaeyaData = Q490ClientConfig.KaeyaData
local questData = Q490ClientConfig.QuestData
local monsterData = Q490ClientConfig.MonsterData
local ballData = Q490ClientConfig.BallData
local barbaraPublic = Q490ClientConfig.BarbaraPublic
local amborPublic = Q490ClientConfig.AmborPublic
local kaeyaPublic = Q490ClientConfig.KaeyaPublic
local lisaPublic = Q490ClientConfig.LisaPublic
local dilukePublic = Q490ClientConfig.DilukePublic
local windyPublic1 = Q490ClientConfig.WindyPublic1
local v = Q490ClientConfig.WindyPublic1
local paimonPublic = Q490ClientConfig.PaimonPublic

function Quest490:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["49001"] = self.OnSubStart49001
    self.subStartHandlers["49002"] = self.OnSubStart49002
    self.subStartHandlers["49003"] = self.OnSubStart49003
    self.subStartHandlers["49004"] = self.OnSubStart49004
    self.subStartHandlers["49005"] = self.OnSubStart49005
    self.subStartHandlers["49006"] = self.OnSubStart49006
    self.subStartHandlers["49007"] = self.OnSubStart49007
    self.subStartHandlers["49008"] = self.OnSubStart49008
    self.subStartHandlers["49009"] = self.OnSubStart49009
    self.subStartHandlers["49010"] = self.OnSubStart49010
    self.subStartHandlers["49011"] = self.OnSubStart49011
    self.subStartHandlers["49012"] = self.OnSubStart49012
    self.subStartHandlers["49013"] = self.OnSubStart49013
    self.subStartHandlers["49014"] = self.OnSubStart49014
    self.subStartHandlers["49015"] = self.OnSubStart49015
end

function Quest490:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["49001"] = self.OnSubFinish49001
    self.subFinishHandlers["49002"] = self.OnSubFinish49002
    self.subFinishHandlers["49003"] = self.OnSubFinish49003
    self.subFinishHandlers["49004"] = self.OnSubFinish49004
    self.subFinishHandlers["49005"] = self.OnSubFinish49005
    self.subFinishHandlers["49006"] = self.OnSubFinish49006
    self.subFinishHandlers["49007"] = self.OnSubFinish49007
    self.subFinishHandlers["49008"] = self.OnSubFinish49008
    self.subFinishHandlers["49009"] = self.OnSubFinish49009
    self.subFinishHandlers["49010"] = self.OnSubFinish49010
    self.subFinishHandlers["49011"] = self.OnSubFinish49011
    self.subFinishHandlers["49012"] = self.OnSubFinish49012
    self.subFinishHandlers["49013"] = self.OnSubFinish49013
    self.subFinishHandlers["49014"] = self.OnSubFinish49014
    self.subFinishHandlers["49015"] = self.OnSubFinish49015
end

function Quest490:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest490:InvokeOnInteraction(arg1)
    if arg1 == 0 then
        print("490InvokeOnInteraction")
        self:PaimonVanish()
    elseif arg1 == 1 then
    end
end

function Quest490:OnSubStart49001(arg1)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
    self:CreateQuestNpc(arg1, barbaraData.ID)
    if self:GetQuestVar(49001, 1) == 0 then
        self:NarratorOnlyTaskLegacy(Q490ClientConfig.NarratorData.Story1, function(arg1)
            arg1:SetQuestVarByMainId(1, 1)
        end, "StoryCut")
    end
end

function Quest490:OnSubFinish49001(arg1)
    print("49001 Finish : Story")
    self:PaimonVanish()
end

function Quest490:OnSubStart49002(arg1)
    self:CreateQuestNpc(arg1, qinData.ID)
    self:DeployStoryByQuest(120049002)
end

function Quest490:OnSubFinish49002(arg1)
    print("49002 Finish : Creat Paimon")
    self:DestroyQuestNpcActor(barbaraData.Alias, 1008)
    self:CancelStoryByQuest(120049002)
end

function Quest490:OnSubStart49003(arg1)
    self:PlayCutsceneIndex(49001, self.On49003CutsceneFinish)
end

function Quest490:On49003CutsceneFinish()
    self:RequestInteraction(qinData.Alias)
end

function Quest490:OnSubFinish49003(arg1)
    print("49003 Finish : Paimon Vanish")
    self:PaimonVanish()
    self:CreateQuestNpc(arg1, monsterData.ID)
    local questNpcActor = self:GetQuestNpcActor(monsterData.Alias)
    if questNpcActor ~= nil then
        self:NpcWalkToTask(questNpcActor, monsterData.Pos2, function(arg1, arg2)
            arg1:ClearFollowTask()
            arg1:PerformDither(false, 1, arg1.HideSelf)
        end, nil, nil, function(arg1)
            arg1:SyncPos(2)
        end)
    end

    local v = self:GetQuestNpcActor(qinData.Alias)
    v:EnableInteraction(false)
    self:NpcRunToRouteTask(v, qinData.QinRoutePoints, function(arg1, arg2)
        arg1:ClearFollowTask()
        arg1:EnableInteraction(true)
        arg1:PerformDither(false, 1, arg1.HideSelf)
    end, nil, nil, function(arg1)
        arg1:SyncPos(2)
    end)
end

function Quest490:OnSubStart49004(arg1)
    self:DeployStoryByQuest(120049004)
end

function Quest490:OnSubFinish49004(arg1)
    self:CancelStoryByQuest(120049004)
end

function Quest490:OnSubStart49006(arg1)
    self:CallDelay(4, function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, arg1.StartTalk49006)
    end)
end

function Quest490:StartTalk49006()
    self:CreateQuestNpcById(49006, qinData.ID)
    self:CallDelay(0.2, function(arg1)
        arg1:RequestInteraction(qinData.Alias)
    end)
end

function Quest490:OnSubFinish49006(arg1)
    self.PaimonVanish(self)
    local questNpcActor = self.GetQuestNpcActor(self, qinData.Alias)
    questNpcActor:EnableInteraction(false)
    questNpcActor:RunToTask(qinData.QinPos8, function(arg1, arg2)
        arg1:ClearFollowTask()
        arg1:EnableInteraction(true)
        arg1:PerformDither(false, 1, self.MoveQin)
    end)
end

function Quest490:MoveQin()
    local actor = actorMgr:GetActor(Q490ClientConfig.ActorAlias)
    actor:GetQuestNpcActor(qinData.Alias):Destroy(false)
    actor:CreateQuestNpcById(49006, qinData.ID, 2)
end

function Quest490:MoveQin2()
    actorMgr:GetActor(Q490ClientConfig.ActorAlias):GetQuestNpcActor(qinData.Alias):Destroy(false)
end

function Quest490:OnSubStart49007(arg1) end

function Quest490:OnSubFinish49007(arg1)
    self.PaimonVanish(self)
    local questNpcActor = self.GetQuestNpcActor(self, qinData.Alias)
    questNpcActor:EnableInteraction(false)
    questNpcActor:RunToTask(qinData.QinPos9, function(arg1, arg2)
        arg1:ClearFollowTask()
        arg1:EnableInteraction(true)
        arg1:PerformDither(false, 1, self.MoveQin2)
    end)
end

function Quest490:OnSubStart49008(arg1)
    local mengdeNpcListPublic = NpcUtil.GetMengdeNpcListPublic()
    for i = 1, #mengdeNpcListPublic do
        self:NotifyTo(mengdeNpcListPublic[i], NpcUtil.NpcEventType.HIDESELF, true)
    end
end

function Quest490:StartTalk49009()
    print("46302 Start : ")
    self:CreateQuestNpcById(49009, qinData.ID)
    self:CallDelay(0.2, function(arg1)
        arg1:RequestInteraction(qinData.Alias)
    end)
end

function Quest490:OnSubStart49009(arg1)
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk49009)
    local mengdeNpcListPublic = NpcUtil.GetMengdeNpcListPublic()
    for i = 1, #mengdeNpcListPublic do
        self:NotifyTo(mengdeNpcListPublic[i], NpcUtil.NpcEventType.HIDESELF, true)
    end
end

function Quest490:OnSubFinish49009(arg1) end

function Quest490:CreateNpc(arg1)
    self:CreateQuestNpcById(49010, qinData.ID)
    self:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(barbaraPublic.Alias)
    questNpcActor:SetPosAndTurnTo(barbaraPublic.Pos, M.Euler2DirXZ(barbaraPublic.Dir), true)
    questNpcActor:DoFreeStyle(1170)
    local v = self:GetQuestNpcActor(amborPublic.Alias)
    v:SetPosAndTurnTo(amborPublic.Pos, M.Euler2DirXZ(amborPublic.Dir), true)
    v:DoFreeStyle(1130)
    local questNpcActor2 = self:GetQuestNpcActor(kaeyaPublic.Alias)
    questNpcActor2:SetPosAndTurnTo(kaeyaPublic.Pos, M.Euler2DirXZ(kaeyaPublic.Dir), true)
    questNpcActor2:SitOnChair(8010)
    local questNpcActor3 = self:GetQuestNpcActor(lisaPublic.Alias)
    questNpcActor3:SetPosAndTurnTo(lisaPublic.Pos, M.Euler2DirXZ(lisaPublic.Dir), true)
    questNpcActor3:DoFreeStyle(1130)
    local questNpcActor4 = self:GetQuestNpcActor(dilukePublic.Alias)
    questNpcActor4:SetPosAndTurnTo(dilukePublic.Pos, M.Euler2DirXZ(dilukePublic.Dir), true)
    questNpcActor4:DoFreeStyle(1120)
    local questNpcActor5 = self:GetQuestNpcActor(windyPublic1.Alias)
    questNpcActor5:SetPosAndTurnTo(windyPublic1.Pos, M.Euler2DirXZ(windyPublic1.Dir), true)
    questNpcActor5:SitOnChair(8020)
    local mengdeNpcListPublic = NpcUtil.GetMengdeNpcListPublic()
    for i = 1, #mengdeNpcListPublic do
        self:NotifyTo(mengdeNpcListPublic[i], NpcUtil.NpcEventType.HIDESELF, true)
    end
end

function Quest490:FinishCallback(arg1)
    self:NarratorOnlyTaskLegacy(Q490ClientConfig.NarratorData.Story2, nil, "StoryCut")
    self:GetQuestNpcActor(barbaraPublic.Alias):DoFreeStyle(1170)
    self:GetQuestNpcActor(amborPublic.Alias):DoFreeStyle(1130)
    local questNpcActor = self:GetQuestNpcActor(kaeyaPublic.Alias)
    self:GetQuestNpcActor(lisaPublic.Alias):DoFreeStyle(1130)
    self:GetQuestNpcActor(dilukePublic.Alias):DoFreeStyle(1120)
    local v = self:GetQuestNpcActor(windyPublic1.Alias)
end

function Quest490:OnSubStart49010(arg1)
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({qinData.Alias})
    self:ShowBlackScreen(0.5, 1, 0.5, self.CreateNpc, self.FinishCallback, questNpcCreateTask, "QUEST_Message_Q49010")
end

function Quest490:OnSubFinish49010(arg1)
    self:PaimonVanish()
    self:DestroyQuestNpcActor(barbaraPublic.Alias, 1009)
    self:DestroyQuestNpcActor(amborPublic.Alias, 1009)
    self:DestroyQuestNpcActor(kaeyaPublic.Alias, 1009)
    self:DestroyQuestNpcActor(lisaPublic.Alias, 1009)
    self:DestroyQuestNpcActor(dilukePublic.Alias, 1009)
    self:DestroyQuestNpcActor(windyPublic1.Alias, 1009)
    self:DestroyQuestNpcActor(qinData.Alias, 3)
    local mengdeNpcListPublic = NpcUtil.GetMengdeNpcListPublic()
    for i = 1, #mengdeNpcListPublic do
        self:NotifyTo(mengdeNpcListPublic[i], NpcUtil.NpcEventType.STARTDAILY, true)
    end
end

function Quest490:OnSubStart49012(arg1)
    self:CallDelay(4, function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, arg1.StartTalk49012)
    end)
end

function Quest490:OnSubStart49015(arg1)
    self:CallDelay(0.2, function(arg1)
        arg1:RequestInteraction(qinData.Alias)
    end)
end

function Quest490:StartTalk49012()
    self:CreateQuestNpcById(49012, qinData.ID)
    self:CallDelay(0.2, function(arg1)
        arg1:RequestInteraction(qinData.Alias)
    end)
end

function Quest490:OnSubFinish49012(arg1)
    self:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(qinData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy()
    end
end

function Quest490:SpawnEn()
    self:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(qinData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    self:SpawnItem(ballData.BallID, ballData.BallPos, nil, "Q490Ball", 20022)
    self:SpawnItem(ballData.BallID, ballData.BallPos, nil, "Q490Ball", 20022)
    self:SpawnItem(ballData.BallID, ballData.BallPos, nil, "Q490Ball", 20022)
end

function Quest490:SpawnEn1()
    self:SpawnItem(ballData.BallID, ballData.BallPos, nil, "Ball", 20022)
    self:SpawnItem(ballData.BallID, ballData.BallPos, nil, "Ball", 20022)
    self:SpawnItem(ballData.BallID, ballData.BallPos, nil, "Ball", 20022)
end

function Quest490:OnSubFinish49014(arg1)
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.Finish49014)
end

function Quest490:Finish49012()
    self:CallDelay(0.2, function(arg1)
        arg1:RequestInteraction(qinData.Alias)
    end)
end

function Quest490:Finish49014()
    self:DestroyQuestNpcActor(barbaraPublic.Alias, 1009)
    self:DestroyQuestNpcActor(amborPublic.Alias, 1009)
    self:DestroyQuestNpcActor(kaeyaPublic.Alias, 1009)
    self:DestroyQuestNpcActor(lisaPublic.Alias, 1009)
    self:DestroyQuestNpcActor(dilukePublic.Alias, 1009)
    self:DestroyQuestNpcActor(windyPublic1.Alias, 1009)
end

function Quest490:StartTalkQin()
    print("request interaction")
    self:RequestInteraction(qinData.Alias)
end

function Quest490:Start() end
function Quest490:OnDestroy() end
return Quest490
