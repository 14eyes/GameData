require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest378 = class("Quest378", QuestActorProxy)
Quest378.defaultAlias = "Quest378"
local Q378ClientConfig = require("Quest/Client/Q378ClientConfig")

local barbaraData = Q378ClientConfig.BarbaraData
local qinData = Q378ClientConfig.QinData

function Quest378:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["37801"] = self.OnSubStart37801
    self.subStartHandlers["37802"] = self.OnSubStart37802
    self.subStartHandlers["37803"] = self.OnSubStart37803
    self.subStartHandlers["37804"] = self.OnSubStart37804
    self.subStartHandlers["37805"] = self.OnSubStart37805
end

function Quest378:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["37801"] = self.OnSubFinish37801
    self.subFinishHandlers["37802"] = self.OnSubFinish37802
    self.subFinishHandlers["37803"] = self.OnSubFinish37803
    self.subFinishHandlers["37804"] = self.OnSubFinish37804
    self.subFinishHandlers["37805"] = self.OnSubFinish37805
end

Quest378.warningTask = nil
Quest378.stayWarningTask = nil

function Quest378:OnSubStart37801(arg1)
    print("37801 start")
end

function Quest378:OnSubStart37802(arg1)
    print("37802 start")
    actorMgr:CreateActorWithPos("Q378Trigger", "Actor/Gadget/Q378Trigger", 70900002, 0, qinData.bornPos1, qinData.bornDir1, true)
end

function Quest378:OnSubStart37803(arg1)
    print("37803 start ")
    if self.warningTask ~= nil then
        self.warningTask:FinishTask()
    end

    if self.stayWarningTask ~= nil then
        self.stayWarningTask:FinishTask()
    end
end

function Quest378:OnSubStart37804(arg1)
    self:CreateQuestNpc(arg1, barbaraData.BarbaraID)
    print("37804 start:...")
    local actor = actorMgr:GetActor(qinData.Qin)
    if actor ~= nil then
        actor.NarratorTask(actor, Q378ClientConfig.NarratorFlow, Q378ClientConfig.FollowLen, Q378ClientConfig.FollowLen, nil)
        actor.BeFollowTaskByRoutePoints(actor, Q378ClientConfig.RoutePoints, Q378ClientConfig.FollowLen, Q378ClientConfig.FailLen, function(arg1, arg2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                local actor = actorMgr:GetActor(Q378ClientConfig.ActorAlias)
                if actor ~= nil then
                    actor:FinishQuest(true, nil)
                    print("37804 Follow UnFinish...")
                end

                arg1:StopPerformNarrator()
            else
                if arg1.BeFollowState == BeFollowState.SUCCESS then
                    arg1:Standby()
                    arg1:TurnTo(M.Euler2DirXZ(Q378ClientConfig.QinData.bornDir2))
                    local actor = actorMgr:GetActor(Q378ClientConfig.ActorAlias)
                    if actor ~= nil then
                        actor:FinishQuest(false, nil)
                        print("37804 Follow Success...")
                    end
                end
            end
        end, function(arg1, arg2)
            arg1:Standby()
        end, nil, nil, nil, function(arg1, arg2)
            local actor = actorMgr:GetActor(Q378ClientConfig.ActorAlias)
            if actor ~= nil then
                print("37804 Follow Failed...")
                actor:FinishQuest(true, nil)
            end
        end)

        self.stayWarningTask = actor.WarningNarratorTask(actor, 0, Q378ClientConfig.NarratorStayWarning, function(arg1)
            local distFromAvatarToSelf = arg1:GetDistFromAvatarToSelf()
            local n = Q378ClientConfig.FollowLen + 5
            local v = Q378ClientConfig.FollowLen + 15
            local isInIdle = actor.IsInIdle
            return distFromAvatarToSelf > isInIdle and isInIdle
        end, nil, "StoryWarning", self.mainQuestConfigID)

        self.warningTask = actor.WarningNarratorTask(actor, 1, Q378ClientConfig.NarratorWarning, function(arg1)
            return arg1:GetDistFromAvatarToSelf() > Q378ClientConfig.FollowLen + 15
        end, nil, "StoryWarning", self.mainQuestConfigID)
    end
end

function Quest378:OnSubStart37805(arg1)
    print("37805 start:...")
end

function Quest378:OnSubFinish37801(arg1)
    print("OnFinished 37801")
end

function Quest378:OnSubFinish37802(arg1)
    print("OnFinished 37802")
    self:ShowBlackScreen(1.0, 0.5, 0.0, self.CreateQin, self.Interaction)
    local actor = actorMgr:GetActor("Q378Trigger")
    if actor ~= nil then
        actor:Destroy(false)
    end
end

function Quest378:OnSubFinish37803(arg1)
    print("OnFinished 37803")
end

function Quest378:OnSubFinish37804(arg1)
    print("OnFinished 37804")
    if self.warningTask ~= nil then
        self.warningTask:FinishTask()
    end

    if self.stayWarningTask ~= nil then
        self.stayWarningTask:FinishTask()
    end
end

function Quest378:OnSubFinish37805(arg1)
    print("OnFinished 37805")
    self:ActionSafeCall(function(arg1)
        local actor = actorMgr:GetActor("Paimon")
        if actor ~= nil then
            actor:DestroyWithDisappear(false)
        end
    end)
end

function Quest378:CreateQin()
    self:CreateQuestNpcById(37803, qinData.QinID)
    print("Qin Born")
end

function Quest378:Interaction()
    self:RequestInteraction(qinData.Qin)
    print("Black Callback NOW")
end

function Quest378:Start() end
function Quest378:OnDestroy() end
return Quest378
