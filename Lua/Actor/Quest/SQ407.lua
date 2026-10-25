require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest407 = class("Quest407", QuestActorProxy)
Quest407.defaultAlias = "Quest407"
local this
local super
local uActor
local mainQuestID = 0

function Quest407:OnPreInit()
    this = self
    super = self.__super
    mainQuestID = this.mainQuestID
    super:OnPreInit()
end

function Quest407:OnPostInit()
    uActor = self.uActor
    super:OnPostInit()
end

local Q407Config = require("Actor/Quest/Q407/Q407Config")

local subIDs = Q407Config.SubIDs
local judgeData = Q407Config.JudgeData

function Quest407:CreateUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.QUEST_ACTOR, arg1)
    local questActor = actorUtils.CreateQuestActor(mainQuestID, actor)
    return questActor
end

local function func(arg1)
    print("CricketDestroy" .. tostring(arg1))
    globalActor:UnSpawn("Sound" .. tostring(arg1))
    globalActor:UnSpawn("Cricket" .. tostring(arg1))
end

local v

function v(arg1, arg2)
    print(arg2)
    func(arg2)
    math.randomseed(os.time())
    if Q407Config.GameRunning == true then
        print("CricketStart" .. tostring(arg2))
        local n = math.random(1, Q407Config.HoleNum)
        local n2 = math.random(1, 4)
        local n3 = math.random(1, 100)
        local tbl = {x = 0, y = 0, z = 0}
        if 1 <= n3 and n3 < 20 then
            globalActor:SpawnGadget(Q407Config.SoundGadgetID[1], Q407Config.HolePos[n], M.Dir2Euler(tbl), "Sound" .. tostring(arg2))
            globalActor:SpawnItem(Q407Config.CricketItemID[1], Q407Config.HolePos[n], nil, "Cricket" .. tostring(arg2))
        elseif 20 <= n3 and n3 < 30 then
            globalActor:SpawnGadget(Q407Config.SoundGadgetID[1], Q407Config.HolePos[n], M.Dir2Euler(tbl), "Sound" .. tostring(arg2))
            globalActor:SpawnItem(Q407Config.CricketItemID[2], Q407Config.HolePos[n], nil, "Cricket" .. tostring(arg2))
        elseif 30 <= n3 and n3 < 40 then
            globalActor:SpawnGadget(Q407Config.SoundGadgetID[1], Q407Config.HolePos[n], M.Dir2Euler(tbl), "Sound" .. tostring(arg2))
            globalActor:SpawnItem(Q407Config.CricketItemID[3], Q407Config.HolePos[n], nil, "Cricket" .. tostring(arg2))
        elseif 40 <= n3 and n3 < 50 then
            globalActor:SpawnGadget(Q407Config.SoundGadgetID[2], Q407Config.HolePos[n], M.Dir2Euler(tbl), "Sound" .. tostring(arg2))
            globalActor:SpawnItem(Q407Config.CricketItemID[1], Q407Config.HolePos[n], nil, "Cricket" .. tostring(arg2))
        elseif 50 <= n3 and n3 < 60 then
            globalActor:SpawnGadget(Q407Config.SoundGadgetID[2], Q407Config.HolePos[n], M.Dir2Euler(tbl), "Sound" .. tostring(arg2))
            globalActor:SpawnItem(Q407Config.CricketItemID[3], Q407Config.HolePos[n], nil, "Cricket" .. tostring(arg2))
        elseif 60 <= n3 and n3 < 70 then
            globalActor:SpawnGadget(Q407Config.SoundGadgetID[2], Q407Config.HolePos[n], M.Dir2Euler(tbl), "Sound" .. tostring(arg2))
            globalActor:SpawnItem(Q407Config.CricketItemID[4], Q407Config.HolePos[n], nil, "Cricket" .. tostring(arg2))
        elseif 70 <= n3 and n3 < 80 then
            globalActor:SpawnGadget(Q407Config.SoundGadgetID[3], Q407Config.HolePos[n], M.Dir2Euler(tbl), "Sound" .. tostring(arg2))
            globalActor:SpawnItem(Q407Config.CricketItemID[1], Q407Config.HolePos[n], nil, "Cricket" .. tostring(arg2))
        elseif 80 <= n3 and n3 < 87 then
            globalActor:SpawnGadget(Q407Config.SoundGadgetID[3], Q407Config.HolePos[n], M.Dir2Euler(tbl), "Sound" .. tostring(arg2))
            globalActor:SpawnItem(Q407Config.CricketItemID[4], Q407Config.HolePos[n], nil, "Cricket" .. tostring(arg2))
        elseif 87 <= n3 and n3 < 93 then
            globalActor:SpawnGadget(Q407Config.SoundGadgetID[3], Q407Config.HolePos[n], M.Dir2Euler(tbl), "Sound" .. tostring(arg2))
            globalActor:SpawnItem(Q407Config.CricketItemID[5], Q407Config.HolePos[n], nil, "Cricket" .. tostring(arg2))
        elseif 93 <= n3 and n3 < 97 then
            globalActor:SpawnGadget(Q407Config.SoundGadgetID[4], Q407Config.HolePos[n], M.Dir2Euler(tbl), "Sound" .. tostring(arg2))
            globalActor:SpawnItem(Q407Config.CricketItemID[1], Q407Config.HolePos[n], nil, "Cricket" .. tostring(arg2))
        elseif 97 <= n3 and n3 <= 100 then
            globalActor:SpawnGadget(Q407Config.SoundGadgetID[4], Q407Config.HolePos[n], M.Dir2Euler(tbl), "Sound" .. tostring(arg2))
            globalActor:SpawnItem(Q407Config.CricketItemID[5], Q407Config.HolePos[n], nil, "Cricket" .. tostring(arg2))
        end

        print("$$$$$$$$$$" .. tostring(arg2))
        this:CallDelay(n2, v, arg2)
    end
end

local function func2()
    print("CountDown Finished")
    Q407Config.GameRunning = false
    for i = 1, Q407Config.CricketNum do
        func(i)
    end

    if Q407Config.GotCricket == false then
        local actor = actorMgr:GetActor(Q407Config.ActorAlias)
        if actor ~= nil then
            print("isFinished == false")
            actor:FinishQuest(true, nil)
        end
    end
end

local function func3(arg1)
    print("StartCount")
    this:CountDownUIStart(Q407Config.MatchTime, 10, 3)
    v(this, 1)
    this:CallDelay(15, v, 2)
    this:CallDelay(Q407Config.MatchTime + 4, func2)
end

local function func4(arg1)
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos(judgeData.Judge, judgeData.JudgeScript, judgeData.JudgeID, 0, judgeData.JudgePos, judgeData.JudgeDir, true, false)
    end)
end

local function func5(arg1)
    print("OnStart40702")
    Q407Config.GameRunning = true
    Q407Config.GotCricket = false
    this:ActionSafeCall(func3)
end

local function func6()
    Q407Config.GameRunning = false
    Q407Config.GotCricket = true
    this:CountDownUITerminate()
    this:UnCallFunc(func2)
    this:UnCallFunc(v)
    for i = 1, Q407Config.CricketNum do
        func(i)
    end
end

local function func7()
    print("40705 start: fail the task")
    local actor = actorMgr:GetActor(Q407Config.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(true, nil)
    end
end

function Quest407:OnMainStart(arg1) end

function Quest407:OnSubStart(arg1)
    local questConfigId = arg1.QuestConfigId
    if questConfigId == subIDs.q40701 then
        func4(arg1)
    else
        if questConfigId == subIDs.q40702 then
            func5(arg1)
        else
            if questConfigId == subIDs.q40705 then
                func7(arg1)
            end
        end
    end
end

function Quest407:OnSubFinished(arg1)
    if arg1.QuestConfigId == subIDs.q40702 then
        func6(arg1)
    end
end

function Quest407:OnRewind(arg1) end
function Quest407:OnMainFinished(arg1) end
function Quest407:Start() end
function Quest407:OnDestroy() end
return Quest407
