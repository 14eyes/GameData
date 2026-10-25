require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest409 = class("Quest409", QuestActorProxy)
Quest409.defaultAlias = "Quest409"
local this
local super
local uActor
local mainQuestID = 0
local flag = false

function Quest409:OnPreInit()
    this = self
    super = self.__super
    mainQuestID = this.mainQuestID
    super:OnPreInit()
end

function Quest409:OnPostInit()
    uActor = self.uActor
    super:OnPostInit()
end

local Q409Config = require("Actor/Quest/Q409/Q409Config")

local subIDs = Q409Config.SubIDs
local judgeData = Q409Config.JudgeData

function Quest409:CreateUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.QUEST_ACTOR, arg1)
    local questActor = actorUtils.CreateQuestActor(mainQuestID, actor)
    return questActor
end

local function func()
    print("ChallengePrepare")
    actorMgr:CreateActorWithPos("GoalMarker409", "Actor/Gadget/GoalMarker409", 70300004, 0, Q409Config.KeyPos, Q409Config.KeyDir, true, false)
    this:SpawnMonster(Q409Config.BallMonsterID, 1, Q409Config.BallPos1, nil, nil, nil, "Ball1")
    this:SpawnMonster(Q409Config.BallMonsterID, 1, Q409Config.BallPos2, nil, nil, nil, "Ball2")
    this:SpawnMonster(Q409Config.BallMonsterID, 1, Q409Config.BallPos3, nil, nil, nil, "Ball3")
end

local function v()
    local actor = actorMgr:GetActor("GoalMarker409")
    if actor ~= nil then
        actor:DestroySelf()
    end

    this:UnSpawn("Ball1")
    this:UnSpawn("Ball2")
    this:UnSpawn("Ball3")
end

local function func2()
    print("CountDown Finished")
    this:CountDownUITerminate()
    this:CountNumUITerminate()
    v()
    if Q409Config.Score < Q409Config.RequireScore then
        flag = false
        local actor = actorMgr:GetActor(Q409Config.ActorAlias)
        if actor ~= nil then
            print("success == false")
            actor:FinishQuest(true, nil)
        end
    else
        if Q409Config.Score >= Q409Config.RequireScore then
            flag = true
            local actor = actorMgr:GetActor(Q409Config.ActorAlias)
            if actor ~= nil then
                print("success == true")
                actor:FinishQuest(false, nil)
            end
        end
    end
end

local function func3(arg1)
    this:CountDownUIStart(Q409Config.MatchTime, 10, 3)
    this:CountNumUIStart()
    this:CallDelay(Q409Config.MatchTime + 4, func2)
end

local function func4(arg1)
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos(judgeData.Judge, judgeData.JudgeScript, judgeData.JudgeID, 0, judgeData.JudgePos, judgeData.JudgeDir, true, false)
    end)
end

local function func5(arg1)
    print("40902 start: chanllenge start")
    Q409Config.Score = 0
    func()
    this:ActionSafeCall(func3)
end

local function func6()
    print("Chanllenge finish")
    this:CountDownUITerminate()
    this:CountNumUITerminate()
    this:UnCallFunc(func2)
    v()
end

local function func7()
    print("OnFailed40902")
end

local function func8()
    print("40905 start: fail the task")
    local actor = actorMgr:GetActor(Q409Config.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(true, nil)
    end
end

local function func9() end
local function func10() end
function Quest409:OnMainStart(arg1) end

function Quest409:OnSubStart(arg1)
    local questConfigId = arg1.QuestConfigId
    if questConfigId == subIDs.q40901 then
        func4(arg1)
    else
        if questConfigId == subIDs.q40902 then
            func5(arg1)
        else
            if questConfigId == subIDs.q40905 then
                func8()
            end
        end
    end
end

function Quest409:OnSubFinished(arg1)
    if arg1.QuestConfigId == subIDs.q40902 then
        func6()
    end
end

function Quest409:OnSubFailed(arg1)
    if arg1.QuestConfigId == subIDs.q40902 then
        func7()
    end
end

function Quest409:OnRewind(arg1)
    local questConfigId = arg1.QuestConfigId
    if questConfigId == subIDs.q40901 then
        func9()
    else
        if questConfigId == subIDs.q40904 then
            func10()
        end
    end
end

function Quest409:OnMainFinished(arg1) end
function Quest409:Start() end
function Quest409:OnDestroy() end
return Quest409
