require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11043Marks = class("Q11043Marks", GadgetActorProxy)
Q11043Marks.defaultAlias = "Q11043Marks"

local function func()
    if q11043Cfg.TriggerNum < q11043Cfg.TotalNum then
        local n = q11043Cfg.TriggerNum + 1
        actorMgr:CreateActorWithPos("Q11043Marks" .. tostring(n), "Actor/Gadget/Q11043Marks", 70300064, 0, q11043Cfg.FlyMarks[n].pos, q11043Cfg.FlyMarks[n].rot, true, false)
    end
end

function Q11043Marks:OnPostDataPrepare() end

function Q11043Marks:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0, 0), self.TriggerIn, self.TriggerOut)
end

function Q11043Marks:TriggerIn()
    q11043Cfg.TriggerNum = q11043Cfg.TriggerNum + 1
    print("NowTrigger is", q11043Cfg.TriggerNum)
    if q11043Cfg.TriggerNum == 1 then
        self:CountNumUIStart()
    end

    self:CountNumUIUpdate(q11043Cfg.TriggerNum)
    local pos = self:GetPos()
    if q11043Cfg.TriggerNum < q11043Cfg.TotalNum then
        self:PlayEffect("Eff_FlyRace_Marker_Active_AS_Task", pos, nil, M.Pos(2, 2, 2))
        func()
        self:DestroySelf()
    else
        self:PlayEffect("Eff_FlyRace_Marker_Active_AS_Task", pos, nil, M.Pos(2, 2, 2))
        self:CountNumUITerminate()
        local actor = actorMgr:GetActor(q11043Cfg.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1104302)
        end

        self:DestroySelf()
    end
end

function Q11043Marks:TriggerOut() end
return Q11043Marks
