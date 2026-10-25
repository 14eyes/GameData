require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest487 = class("Quest487", QuestActorProxy)
Quest487.defaultAlias = "Quest487"
local Q487ClientConfig = require("Quest/Client/Q487ClientConfig")

local paimonData = Q487ClientConfig.PaimonData
local catData = Q487ClientConfig.CatData
local catNpcData = Q487ClientConfig.CatNpcData
local windyData = Q487ClientConfig.WindyData
Quest487.index = 0

function Quest487:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["48701"] = self.OnSubStart48701
    self.subStartHandlers["48702"] = self.OnSubStart48702
    self.subStartHandlers["48703"] = self.OnSubStart48703
    self.subStartHandlers["48704"] = self.OnSubStart48704
    self.subStartHandlers["48705"] = self.OnSubStart48705
    self.subStartHandlers["48706"] = self.OnSubStart48706
    self.subStartHandlers["48707"] = self.OnSubStart48707
    self.subStartHandlers["48708"] = self.OnSubStart48708
    self.subStartHandlers["48709"] = self.OnSubStart48709
    self.subStartHandlers["48710"] = self.OnSubStart48710
    self.subStartHandlers["48711"] = self.OnSubStart48711
    self.subStartHandlers["48712"] = self.OnSubStart48712
end

function Quest487:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["48701"] = self.OnSubFinish48701
    self.subFinishHandlers["48702"] = self.OnSubFinish48702
    self.subFinishHandlers["48703"] = self.OnSubFinish48703
    self.subFinishHandlers["48704"] = self.OnSubFinish48704
    self.subFinishHandlers["48705"] = self.OnSubFinish48705
    self.subFinishHandlers["48706"] = self.OnSubFinish48706
    self.subFinishHandlers["48707"] = self.OnSubFinish48707
    self.subFinishHandlers["48708"] = self.OnSubFinish48708
    self.subFinishHandlers["48709"] = self.OnSubFinish48709
    self.subFinishHandlers["48710"] = self.OnSubFinish48710
    self.subFinishHandlers["48711"] = self.OnSubFinish48711
    self.subFinishHandlers["48712"] = self.OnSubFinish48712
end

function Quest487:OnSubFailHandlerBuild()
    self.subFailHandlers = {}
    self.subFailHandlers["48702"] = self.OnSubFail48702
end

function Quest487:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest487:CatRun()
    self:CallDelay(2, self.FinishQuest)
end

function Quest487:FinishQuest()
    local actor = actorMgr:GetActor(Q487ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 48705)
        actor:FinishQuestID(false, 48707)
        actor:FinishQuestID(false, 48708)
        actor:FinishQuestID(false, 48709)
    end
end

function Quest487:ChangePlace()
    local n = math.random(1, #catData.RandomPos)
    while true do
        if n ~= self.nowPoint then
            break
        end

        local v = math.random(1, catData.RandomPos.Count)
    end

    self.nowPoint = n
    local randomPo = catData.RandomPos[n]
    local pos = randomPo.pos
    local dir = randomPo.dir
    actorMgr:CreateActorWithPos(catData.Alias, catData.Script, catData.ID, 0, pos, dir, true, true, 3)
    self:NarratorOnlyTaskLegacy(Q487ClientConfig.NarratorData.Story1, nil, "StoryCut")
end

function Quest487:GetCat(arg1)
    print("get cat")
    actorMgr:GetActor(catData.Alias):Destroy(false)
end

function Quest487:InvokeOnInteraction(arg1)
    print("461 Invoke : ")
    if arg1 == 0 then
        print("Invoke 0")
        self:GetCat()
    elseif arg1 == 1 then
        print("Invoke 1")
    elseif arg1 == 2 then
        print("Invoke 1")
    end
end

function Quest487:CloseCompass()
    print("delete compass")
    globalActor:UnSpawn("Q487Compass")
    Quest487:CallOnElemViewOpen(Quest487.OpenCompass)
end

function Quest487:OnSubStart48701(arg1)
    self:CreateQuestNpc(arg1, catNpcData.ID)
    self:CreateQuestNpc(arg1, windyData.ID)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest487:OnSubFinish48701(arg1)
    print("48701 Finish : Story")
    self:PaimonVanish()
    globalActor:StartGuide("RandomTaskElementViewGuideIOS")
    self:CallDelay(1, function()
        local actor = actorMgr:GetActor(Q487ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 48711)
        end
    end)
end

function Quest487:OnSubStart48711(arg1)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, catNpcData.ID)
    self:CreateQuestNpc(arg1, windyData.ID)
    self:ExitFindCatMode()
    self:TriggerLevelAbility("Level_Remove_Switch_FindCatBtn")
    local actor = actorMgr:GetActor("Q487Trigger")
    local v = actorMgr:GetActor("Q487Trigger1")
    if actor ~= nil then
        actor:DestroySelf()
    end

    if v ~= nil then
        v:DestroySelf()
    end
end

function Quest487:OnSubStart48702(arg1)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)
    self:EnterFindCatMode()
    self:TriggerLevelAbility("Level_Apply_Switch_FindCatBtn")
    actorMgr:CreateActorWithPos("Q487Trigger", "Actor/Gadget/Q487Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q487Trigger").pos, sceneData:GetDummyPoint(3, "Q487Trigger").rot, true, false)
end

function Quest487:OnSubFail48702(arg1)
    self:PaimonVanish()
end

function Quest487:OnSubStart48703(arg1)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, catNpcData.ID)
    self:CreateQuestNpc(arg1, windyData.ID)
    self:ExitFindCatMode()
    self:TriggerLevelAbility("Level_Remove_Switch_FindCatBtn")
    local actor = actorMgr:GetActor("Q487Trigger")
    local v = actorMgr:GetActor("Q487Trigger1")
    if actor ~= nil then
        actor:DestroySelf()
    end

    if v ~= nil then
        v:DestroySelf()
    end
end

function Quest487:OnSubStart48710(arg1)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, catNpcData.ID)
    self:CreateQuestNpc(arg1, windyData.ID)
    self:ExitFindCatMode()
    self:TriggerLevelAbility("Level_Remove_Switch_FindCatBtn")
    local actor = actorMgr:GetActor("Q487Trigger")
    local v = actorMgr:GetActor("Q487Trigger1")
    if actor ~= nil then
        actor:DestroySelf()
    end

    if v ~= nil then
        v:DestroySelf()
    end
end

function Quest487:OnSubFinish48710(arg1)
    self:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(catNpcData.Alias)
    if questNpcActor ~= nil then
        questNpcActor.PerformDither(questNpcActor, false, 1, function()
            questNpcActor:Destroy(false)
        end)
    end

    local v = self:GetQuestNpcActor(windyData.Alias)
    v:EnableInteraction(false)
    v:WalkToTask(windyData.bornPos1, function(arg1, arg2)
        arg1:ClearFollowTask()
        arg1:EnableInteraction(true)
        arg1:PerformDither(false, 1, arg1.HideSelf)
    end)
end

function Quest487:ExitCat(arg1)
    Quest487:ExitFindCatMode()
    Quest487:TriggerLevelAbility("Level_Remove_Switch_FindCatBtn")
    local actor = actorMgr:GetActor("Q487Trigger")
    local v = actorMgr:GetActor("Q487Trigger1")
    if actor ~= nil then
        actor:DestroySelf()
    end

    if v ~= nil then
        v:DestroySelf()
    end
end

function Quest487:OnSubFinish48702(arg1)
    print("48702 Finish : Creat Paimon")
    self:ExitFindCatMode()
    self:TriggerLevelAbility("Level_Remove_Switch_FindCatBtn")
    local actor = actorMgr:GetActor("Q487Trigger")
    local v = actorMgr:GetActor("Q487Trigger1")
    if actor ~= nil then
        actor:DestroySelf()
    end

    if v ~= nil then
        v:DestroySelf()
    end
end

function Quest487:OnSubFinish48703(arg1)
    print("48703 Finish : Paimon Vanish")
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
    self:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(catNpcData.Alias)
    if questNpcActor ~= nil then
        questNpcActor.PerformDither(questNpcActor, false, 1, function()
            questNpcActor:Destroy(false)
        end)
    end

    local v = self:GetQuestNpcActor(windyData.Alias)
    v:EnableInteraction(false)
    v:WalkToTask(windyData.bornPos1, function(arg1, arg2)
        arg1:ClearFollowTask()
        arg1:EnableInteraction(true)
        arg1:PerformDither(false, 1, arg1.HideSelf)
    end)
end

function Quest487:OnSubStart48704(arg1) end

function Quest487:OnSubFinish48704(arg1)
    self:SceneLookCamera()
    if self:GetSubQuestState(7066503) == 3 then
        self:NarratorOnlyTaskLegacy(Q487ClientConfig.NarratorData.Story4, nil, "StoryCut")
    else
        self:NarratorOnlyTaskLegacy(Q487ClientConfig.NarratorData.Story3, nil, "StoryCut")
    end

    self:CallDelay(4, self.PlayerInputOn)
end

function Quest487:PlayerInputOn()
    print("PaimonNarrator Start : ")
    self:EnablePlayerInput(true)
end

function Quest487:SceneLookCamera()
    print("PaimonNarrator Start : ")
    self:EnablePlayerInput(false)
    self:EnterSceneLookCamera(catData.Pos, 0, 3, true, true)
end

function Quest487:OnSubFinish48705(arg1)
    self:CreateQuestNpc(arg1, catNpcData.ID)
    self:CallDelay(3, function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, arg1.StartTalk48705)
    end)
end

function Quest487:StartTalk48705()
    self:CreateQuestNpcById(48705, paimonData.ID)
    self:CallDelay(0.5, function(arg1)
        arg1:RequestInteraction(paimonData.Alias)
    end)
end

function Quest487:StartTalk48712()
    self:CreateQuestNpcById(48712, paimonData.ID)
    self:CallDelay(0.5, function(arg1)
        arg1:RequestInteraction(paimonData.Alias)
    end)
end

function Quest487:OnSubStart48706(arg1)
    self:CallDelay(3, function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, arg1.StartTalk48705)
    end)
end

function Quest487:OnSubFinish48706(arg1)
    self:PaimonVanish()
end

function Quest487:OnSubFinish48707(arg1)
    self:NarratorOnlyTaskLegacy(Q487ClientConfig.NarratorData.Story1, nil, "StoryCut")
end

function Quest487:OnSubFinish48708(arg1)
    self:NarratorOnlyTaskLegacy(Q487ClientConfig.NarratorData.Story1, nil, "StoryCut")
end

function Quest487:OnSubFinish48712(arg1)
    self:PaimonVanish()
    local actor = actorMgr:GetActor(Q487ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 48702)
    end
end

function Quest487:OnSubStart48712(arg1)
    self:CallDelay(2, function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, arg1.StartTalk48712)
    end)
end

function Quest487:StartTalk48709()
    self:CreateQuestNpcById(48705, paimonData.ID)
    self:CallDelay(1, function(arg1)
        arg1:RequestInteraction(paimonData.Alias)
    end)
end

function Quest487:OnSubFinish48709(arg1) end
function Quest487:Start() end
function Quest487:OnDestroySelf() end
return Quest487
