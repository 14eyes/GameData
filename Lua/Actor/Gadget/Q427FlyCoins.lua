require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q427FlyCoins = class("Q427FlyCoins", GadgetActorProxy)
Q427FlyCoins.defaultAlias = "Q427FlyCoins"

local function func()
    if q427Cfg.NowBatchNum <= q427Cfg.BatchNum then
        for i = 1, #q427Cfg.FlyCoins[q427Cfg.NowBatchNum] do
            local n = i + q427Cfg.TotalGetNum
            actorMgr:CreateActorWithPos("Q427FlyCoins" .. tostring(n), "Actor/Gadget/Q427FlyCoins", 70300064, 0, q427Cfg.FlyCoins[q427Cfg.NowBatchNum][i].pos, q427Cfg.FlyCoins[q427Cfg.NowBatchNum][i].rot, true, false)
        end
    end
end

function Q427FlyCoins:OnPostDataPrepare() end

function Q427FlyCoins:OnPostComponentPrepare()
    self:AddComponentTrigger(3, DistType.EULER, M.Pos(0, 0, 0), self.TriggerIn, self.TriggerOut)
end

function Q427FlyCoins:TriggerIn()
    print("TotalGetNum is", q427Cfg.TotalGetNum)
    print("CoinNum is", q427Cfg.CoinNum)
    print("NowBatchNum is", q427Cfg.NowBatchNum)
    q427Cfg.TotalGetNum = q427Cfg.TotalGetNum + 1
    if q427Cfg.TotalGetNum == 1 then
        self:CountNumUIStart()
    end

    self:CountNumUIUpdate(q427Cfg.TotalGetNum)
    q427Cfg.EachGetNum = q427Cfg.EachGetNum + 1
    if q427Cfg.EachGetNum == #q427Cfg.FlyCoins[q427Cfg.NowBatchNum] then
        q427Cfg.EachGetNum = 0
        q427Cfg.NowBatchNum = q427Cfg.NowBatchNum + 1
        func()
    else
    end

    local pos = self:GetPos()
    if q427Cfg.TotalGetNum < q427Cfg.CoinNum then
        self:PlayEffect("Eff_FlyRace_Marker_Active_AS_Task", pos)
    else
        self:PlayEffect("Eff_FlyRace_Marker_Active_AS_Task", pos)
        self:CountNumUITerminate()
        local actor = actorMgr:GetActor(q427Cfg.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 42702)
        end
    end

    self:DestroySelf()
end

function Q427FlyCoins:TriggerOut() end
return Q427FlyCoins
