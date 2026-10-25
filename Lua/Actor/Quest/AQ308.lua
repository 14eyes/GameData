require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest308 = class("Quest308", QuestActorProxy)
Quest308.defaultAlias = "Quest308"
local Q308ClientConfig = require("Quest/Client/Q308ClientConfig")
local Q359ClientConfig = require("Quest/Client/Q359ClientConfig")

local lisaData = Q308ClientConfig.LisaData
local bookData = Q308ClientConfig.BookData

function Quest308:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["30800"] = self.OnSubStart30800
    self.subStartHandlers["30801"] = self.OnSubStart30801
    self.subStartHandlers["30802"] = self.OnSubStart30802
    self.subStartHandlers["30803"] = self.OnSubStart30803
    self.subStartHandlers["30804"] = self.OnSubStart30804
    self.subStartHandlers["30807"] = self.OnSubStart30807
    self.subStartHandlers["30808"] = self.OnSubStart30808
    self.subStartHandlers["30809"] = self.OnSubStart30809
    self.subStartHandlers["30810"] = self.OnSubStart30810
    self.subStartHandlers["30811"] = self.OnSubStart30811
    self.subStartHandlers["30812"] = self.OnSubStart30812
    self.subStartHandlers["30814"] = self.OnSubStart30814
end

function Quest308:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["30800"] = self.OnSubFinish30800
    self.subFinishHandlers["30801"] = self.OnSubFinish30801
    self.subFinishHandlers["30802"] = self.OnSubFinish30802
    self.subFinishHandlers["30803"] = self.OnSubFinish30803
    self.subFinishHandlers["30804"] = self.OnSubFinish30804
    self.subFinishHandlers["30807"] = self.OnSubFinish30807
    self.subFinishHandlers["30808"] = self.OnSubFinish30808
    self.subFinishHandlers["30809"] = self.OnSubFinish30809
    self.subFinishHandlers["30810"] = self.OnSubFinish30810
    self.subFinishHandlers["30811"] = self.OnSubFinish30811
    self.subFinishHandlers["30812"] = self.OnSubFinish30812
    self.subFinishHandlers["30814"] = self.OnSubFinish30814
end

function Quest308:LisaDestroy(arg1)
    local questNpcActor = self:GetQuestNpcActor(lisaData.Lisa)
    questNpcActor:EnableHeadCtrl(true)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest308:OnSubFinish30800(arg1)
    self:CreateQuestNpc(arg1, lisaData.LisaID, 0)
end

function Quest308:OnSubFinish30801(arg1)
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end

        local v = self:GetQuestNpcActor(lisaData.Lisa)
        v.RunToRouteTask(v, Q308ClientConfig.RoutePoints, function(arg1, arg2)
            actorUtils.ClearCacheCmdExternal(arg1.alias, ActorCommandType.MOVE_ROUTE)
            arg1:ClearFollowTask()
            arg1:Standby()
            arg1:TurnTo(M.Euler2DirXZ(self.clientData.LisaData.DoorDir))
        end, function()
            v:Standby()
        end, function()
            v:ResumeMove()
        end)
    end)
end

function Quest308:OnSubStart30802(arg1)
    print("30801 Start : Creat Lisa & Environment")
end

function Quest308:OnSubStart30810(arg1)
    print("30810 Start : Creat Lisa In Dungeon")
    self:CreateQuestNpc(arg1, lisaData.LisaID, 0)
    self:GetQuestNpcActor(lisaData.Lisa):EnableHeadCtrl(false)
end

function Quest308:OnSubStart30814(arg1)
    print("30814 Start : talk to NPC")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({lisaData.Lisa})
    self:CallDelay(5, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, lisaData.LisaID, 0)
            arg1_2:CallDelay(0.5, function(arg1)
                arg1:RequestInteraction(lisaData.Lisa)
            end)
        end, nil, questNpcCreateTask)
    end)
end

function Quest308:OnSubFinish30810(arg1)
    print("30810 Finish : Destroy Lisa")
    self:ActionSafeCall(self.LisaDestroy)
end

function Quest308:OnSubFinish30807(arg1)
    print("30807 Finish: Tutorial 1")
end

function Quest308:OnSubFinish30808(arg1)
    print("30807 Finish: Tutorial 2")
end

function Quest308:OnSubFinish30809(arg1)
    print("30807 Finish: Tutorial 3")
end

function Quest308:OnSubFinish30812(arg1)
    print("30812 Finish: Tutorial 4")
    self:ShowTutorialDialog(149)
end

function Quest308:OnSubFinish30804(arg1)
    print("30804 Finish: Tutorial 5")
    globalActor:StartGuide("GuideGoddessMapUnlock")
end

function Quest308:OnSubFinish30814(arg1)
    print("30814 Finish: Destroy Lisa")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(lisaData.Lisa)
        local v = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest308:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Talk30811:destory paimon")
        self:ActionSafeCall(function(arg1)
            local questNpcActor = arg1:GetQuestNpcActor("Paimon")
            if questNpcActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end)
    end

    if arg1 == 2 then
        print("show black screen")
        self:ShowBlackScreen(0.5, 1, 0.5)
    end
end

function Quest308:Start() end
function Quest308:OnDestroy() end
return Quest308
