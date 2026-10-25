require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q427FlyCoins2 = class("Q427FlyCoins2", GadgetActorProxy)
Q427FlyCoins2.defaultAlias = "Q427FlyCoins2"

local function func()
    if q427Cfg.NowBatchNum2 <= q427Cfg.BatchNum2 then
        for i = 1, #q427Cfg.FlyCoins2[q427Cfg.NowBatchNum2] do
            local n = i + q427Cfg.TotalGetNum2
            actorMgr:CreateActorWithPos("Q427FlyCoins2" .. tostring(n), "Actor/Gadget/Q427FlyCoins2", 70300064, 0, q427Cfg.FlyCoins2[q427Cfg.NowBatchNum2][i].pos, q427Cfg.FlyCoins2[q427Cfg.NowBatchNum2][i].rot, true, false)
        end
    end
end

function Q427FlyCoins2:OnPostDataPrepare() end

function Q427FlyCoins2:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0, 0), self.TriggerIn, self.TriggerOut)
end

function Q427FlyCoins2:TriggerIn()
    print("TotalGetNum2 is", q427Cfg.TotalGetNum2)
    print("CoinNum2 is", q427Cfg.CoinNum2)
    print("NowBatchNum2 is", q427Cfg.NowBatchNum2)
    q427Cfg.TotalGetNum2 = q427Cfg.TotalGetNum2 + 1
    if q427Cfg.TotalGetNum2 == 1 then
        self:CountNumUIStart()
    end

    self:CountNumUIUpdate(q427Cfg.TotalGetNum2)
    q427Cfg.EachGetNum2 = q427Cfg.EachGetNum2 + 1
    if q427Cfg.EachGetNum2 == #q427Cfg.FlyCoins2[q427Cfg.NowBatchNum2] then
        q427Cfg.EachGetNum2 = 0
        q427Cfg.NowBatchNum2 = q427Cfg.NowBatchNum2 + 1
        func()
    else
    end

    local pos = self:GetPos()
    if q427Cfg.TotalGetNum2 < q427Cfg.CoinNum2 then
        self:PlayEffect("Eff_FlyRace_Marker_Active_AS_Task", pos)
    else
        self:PlayEffect("Eff_FlyRace_Marker_Active_AS_Task", pos)
        self:CountNumUITerminate()
        local actor = actorMgr:GetActor(q427Cfg.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 42705)
        end
    end

    self:DestroySelf()
end

function Q427FlyCoins2:TriggerOut() end
return Q427FlyCoins2
