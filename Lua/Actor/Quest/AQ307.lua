require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest307 = class("Quest307", QuestActorProxy)
Quest307.defaultAlias = "Quest307"
local Q307ClientConfig = require("Quest/Client/Q307ClientConfig")
local Q359ClientConfig = require("Quest/Client/Q359ClientConfig")

local gaiaData = Q307ClientConfig.GaiaData

function Quest307:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["30700"] = self.OnSubStart30700
    self.subStartHandlers["30701"] = self.OnSubStart30701
    self.subStartHandlers["30702"] = self.OnSubStart30702
    self.subStartHandlers["30703"] = self.OnSubStart30703
    self.subStartHandlers["30704"] = self.OnSubStart30704
    self.subStartHandlers["30707"] = self.OnSubStart30707
    self.subStartHandlers["30708"] = self.OnSubStart30708
    self.subStartHandlers["30709"] = self.OnSubStart30709
    self.subStartHandlers["30710"] = self.OnSubStart30710
    self.subStartHandlers["30711"] = self.OnSubStart30711
    self.subStartHandlers["30712"] = self.OnSubStart30712
    self.subStartHandlers["30713"] = self.OnSubStart30713
    self.subStartHandlers["30715"] = self.OnSubStart30715
end

function Quest307:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["30700"] = self.OnSubFinish30700
    self.subFinishHandlers["30701"] = self.OnSubFinish30701
    self.subFinishHandlers["30702"] = self.OnSubFinish30702
    self.subFinishHandlers["30703"] = self.OnSubFinish30703
    self.subFinishHandlers["30704"] = self.OnSubFinish30704
    self.subFinishHandlers["30707"] = self.OnSubFinish30707
    self.subFinishHandlers["30708"] = self.OnSubFinish30708
    self.subFinishHandlers["30709"] = self.OnSubFinish30709
    self.subFinishHandlers["30710"] = self.OnSubFinish30710
    self.subFinishHandlers["30711"] = self.OnSubFinish30711
    self.subFinishHandlers["30712"] = self.OnSubFinish30712
    self.subFinishHandlers["30713"] = self.OnSubFinish30713
    self.subFinishHandlers["30715"] = self.OnSubFinish30715
end

function Quest307:ShowTutorial1(arg1)
    self:ShowTutorialDialog(106)
end

function Quest307:ShowTutorial2(arg1)
    self:ShowTutorialDialog(107)
end

function Quest307:ShowTutorial3(arg1)
    self:ShowTutorialDialog(108)
end

function Quest307:On30713CutsceneFinish()
    local actor = actorMgr:GetActor(Q307ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest307:GaiaDestroy()
    local questNpcActor = self:GetQuestNpcActor(gaiaData.Gaia)
    questNpcActor:EnableHeadCtrl(true)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest307:OnSubFinish30700(arg1)
    self:CreateQuestNpc(arg1, gaiaData.GaiaID, 0)
end

function Quest307:OnSubStart30702(arg1)
    print("30701 Start : Creat Gaia & Environment")
    local questNpcActor = self.GetQuestNpcActor(self, gaiaData.Gaia)
    questNpcActor.RunToTask(questNpcActor, self.clientData.GaiaData.DoorPos, function(arg1, arg2)
        actorUtils.ClearCacheCmdExternal(arg1.alias, ActorCommandType.MOVE)
        arg1:ClearFollowTask()
        arg1:Standby()
        arg1:TurnTo(M.Euler2DirXZ(self.clientData.GaiaData.DoorDir))
    end, function()
        questNpcActor:Standby()
    end)

    self.ActionSafeCall(self, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest307:OnSubStart30704(arg1)
    self:TransmitPlayerById(arg1, 1, function()
        local actor = actorMgr:GetActor(Q307ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end)
end

function Quest307:OnSubStart30710(arg1)
    print("30710 Start : Creat Gaia In Dungeon")
    self:CreateQuestNpc(arg1, gaiaData.GaiaID, 0)
    self:GetQuestNpcActor(gaiaData.Gaia):EnableHeadCtrl(false)
end

function Quest307:OnSubStart30713(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(30701, arg1.On30713CutsceneFinish, nil, nil, true)
    end)
end

function Quest307:OnSubStart30715(arg1)
    print("30715 Start : talk to NPC")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({gaiaData.Gaia})
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, gaiaData.GaiaID, 0)
        arg1_2:CallDelay(0.5, function(arg1)
            arg1:RequestInteraction(gaiaData.Gaia)
        end)
    end, nil, questNpcCreateTask)
end

function Quest307:OnSubFinish30710(arg1)
    print("30710 Finish : Destroy Gaia")
    self:ActionSafeCall(self.GaiaDestroy)
end

function Quest307:OnSubFinish30707(arg1)
    print("30707 Finish: Tutorial 1")
    self:ShowTutorialDialog(106)
end

function Quest307:OnSubFinish30708(arg1)
    print("30707 Finish: Tutorial 2")
    self:ShowTutorialDialog(107)
end

function Quest307:OnSubFinish30709(arg1)
    print("30707 Finish: Tutorial 3")
    self:ShowTutorialDialog(108)
end

function Quest307:OnSubFinish30712(arg1)
    print("30712 Finish: Tutorial 4")
    self:ShowTutorialDialog(183)
end

function Quest307:OnSubFinish30713(arg1)
    print("30713 Finish : Cutscene")
end

function Quest307:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("show black screen")
        self:ShowBlackScreen(0.5, 1, 0.5)
    end
end

function Quest307:Start() end
function Quest307:OnDestroy() end
return Quest307
