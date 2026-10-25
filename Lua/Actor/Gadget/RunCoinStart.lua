require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local RunCoinStart = class("RunCoinStart", GadgetActorProxy)
RunCoinStart.defaultAlias = "RunCoinStart"
local Q416ClientConfig = require("Quest/Client/Q416ClientConfig")

local function func()
    globalActor:CountNumUITerminate()
    local actor = actorMgr:GetActor("RunCoinStart")
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor(Q416ClientConfig.ActorAlias)
    if v ~= nil then
        v:FinishQuestID(false, 41602)
    end

    Q416ClientConfig.NextNum = 1
end

local function v()
    if Q416ClientConfig.NextNum < Q416ClientConfig.CoinNum + 1 then
        actorMgr:CreateActorWithPos("RunCoinStart", "Actor/Gadget/RunCoinStart", 70300004, 0, Q416ClientConfig.CoinPos[Q416ClientConfig.NextNum].pos, Q416ClientConfig.CoinPos[Q416ClientConfig.NextNum].rot, true, false)
        local actor = actorMgr:GetActor("RunCoinStart")
        if actor ~= nil then
            actor:CallDelay(3, func)
        end
    else
        local actor = actorMgr:GetActor(Q416ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 41603)
        end
    end
end

function RunCoinStart:OnPostDataPrepare() end

function RunCoinStart:OnPostComponentPrepare()
    self:AddComponentTrigger(1, DistType.EULER, M.Pos(0, 0, 0), self.TriggerIn, self.TriggerOut)
end

function RunCoinStart:TriggerIn()
    if Q416ClientConfig.NextNum == 1 then
        local actor = actorMgr:GetActor(Q416ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end

        self:CountNumUIStart()
    else
        self:UnCallFunc(func)
    end

    local pos = self:GetPos()
    if Q416ClientConfig.NextNum < Q416ClientConfig.CoinNum then
        self:PlayEffect("Eff_FlyRace_Marker_Active_AS", pos)
    else
        self:PlayEffect("Eff_FlyRace_Goal_Marker_AS", pos)
        self:CountNumUITerminate()
    end

    self:CountNumUIUpdate(Q416ClientConfig.NextNum)
    Q416ClientConfig.NextNum = Q416ClientConfig.NextNum + 1
    self:DestroySelf()
    v()
end

function RunCoinStart:TriggerOut() end
return RunCoinStart
