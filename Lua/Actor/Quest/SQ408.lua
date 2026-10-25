require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest408 = class("Quest408", QuestActorProxy)
Quest408.defaultAlias = "Quest408"
local this
local super
local uActor
local mainQuestID = 0

function Quest408:OnPreInit()
    this = self
    super = self.__super
    mainQuestID = this.mainQuestID
    super:OnPreInit()
end

function Quest408:OnPostInit()
    uActor = self.uActor
    super:OnPostInit()
end

local Q408Config = require("Actor/Quest/Q408/Q408Config")

local subIDs = Q408Config.SubIDs
local judgeData = Q408Config.JudgeData

function Quest408:CreateUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.QUEST_ACTOR, arg1)
    local questActor = actorUtils.CreateQuestActor(mainQuestID, actor)
    return questActor
end

local function func()
    print("BoardSeperatePrepare")
    this:SpawnGadget(Q408Config.BoardSeperateGadgetID, Q408Config.BoardPos, Q408Config.BoardDir, "BoardSeperate")
end

local function v()
    print("BoardTogetherPrepare")
    this:SpawnGadget(Q408Config.BoardTogetherGadgetID, Q408Config.BoardPos, Q408Config.BoardDir, "BoardTogether")
end

local function func2()
    print("BoardDestroy")
    globalActor:UnSpawn("BoardSeperate")
    globalActor:UnSpawn("BoardTogether")
end

local function func3()
    print("CountDown Finished")
    if Q408Config.gotKey == false then
        local actor = actorMgr:GetActor("GoalMarker408")
        if actor ~= nil then
            actor:DestroySelf()
        end

        local v = actorMgr:GetActor(Q408Config.ActorAlias)
        if v ~= nil then
            print("isFinished == false")
            v:FinishQuest(true, nil)
        end

        this:ActionSafeCall(function(arg1)
            arg1:TransmitPlayer(0, Q408Config.PlayerPos, Q408Config.PlayerDir)
        end)
    end
end

local function func4(arg1)
    this:CountDownUIStart(Q408Config.MatchTime, 5, 3)
    this:CallDelay(Q408Config.MatchTime + 4, func3)
end

local function func5(arg1)
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos(judgeData.Judge, judgeData.JudgeScript, judgeData.JudgeID, 0, judgeData.JudgePos, judgeData.JudgeDir, true, false)
    end)
end

local function func6()
    v()
end

local function func7()
    func()
end

local function func8()
    func2()
end

local function func9()
    print("40805 start: fail the task")
    local actor = actorMgr:GetActor(Q408Config.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(true, nil)
    end
end

local function func10(arg1)
    print("40807 start: Spawn Key")
    Q408Config.gotKey = false
    actorMgr:CreateActorWithPos("GoalMarker408", "Actor/Gadget/GoalMarker408", 70300004, 0, Q408Config.KeyPos, Q408Config.KeyDir, true, false)
    this:ActionSafeCall(func4)
end

local function func11()
    Q408Config.gotKey = true
    this:CountDownUITerminate()
    this:UnCallFunc(func3)
    func2()
end

local function func12()
    func2()
end

local function func13()
    print("40810 start: fail the task")
    local actor = actorMgr:GetActor(Q408Config.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(true, nil)
    end
end

local function func14() end
local function func15() end
function Quest408:OnMainStart(arg1) end

function Quest408:OnSubStart(arg1)
    local questConfigId = arg1.QuestConfigId
    if questConfigId == subIDs.q40807 then
        func10(arg1)
    else
        if questConfigId == subIDs.q40805 then
            func9()
        else
            if questConfigId == subIDs.q40810 then
                func13()
            else
                if questConfigId == subIDs.q40801 then
                    func5()
                end
            end
        end
    end
end

function Quest408:OnSubFinished(arg1)
    local questConfigId = arg1.QuestConfigId
    if questConfigId == subIDs.q40802 then
        func6()
    else
        if questConfigId == subIDs.q40803 then
            func7()
        else
            if questConfigId == subIDs.q40804 then
                func8()
            else
                if questConfigId == subIDs.q40807 then
                    func11()
                else
                    if questConfigId == subIDs.q40808 then
                        func12()
                    end
                end
            end
        end
    end
end

function Quest408:OnRewind(arg1)
    local questConfigId = arg1.QuestConfigId
    if questConfigId == subIDs.q40801 then
        func14()
    else
        if questConfigId == subIDs.q40804 then
            func15()
        end
    end
end

function Quest408:OnMainFinished(arg1) end
function Quest408:Start() end
function Quest408:OnDestroy() end
return Quest408
