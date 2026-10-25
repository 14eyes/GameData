require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q480Marks = class("Q480Marks", GadgetActorProxy)
Q480Marks.defaultAlias = "Q480Marks"

local function func()
    if q480Cfg.TriggerNum < q480Cfg.TotalNum then
        local n = q480Cfg.TriggerNum + 1
        actorMgr:CreateActorWithPos("Q480Marks" .. tostring(n), "Actor/Gadget/Q480Marks", 70300064, 0, q480Cfg.FlyMarks[n].pos, q480Cfg.FlyMarks[n].rot, true, false)
    end
end

function Q480Marks:OnPostDataPrepare() end

function Q480Marks:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0, 0), self.TriggerIn, self.TriggerOut)
end

function Q480Marks:TriggerIn()
    q480Cfg.TriggerNum = q480Cfg.TriggerNum + 1
    print("NowTrigger is", q480Cfg.TriggerNum)
    if q480Cfg.TriggerNum == 1 then
        self:CountNumUIStart()
    end

    self:CountNumUIUpdate(q480Cfg.TriggerNum)
    local pos = self:GetPos()
    if q480Cfg.TriggerNum < q480Cfg.TotalNum then
        self:PlayEffect("Eff_FlyRace_Marker_Active_AS_Task", pos, nil, M.Pos(2, 2, 2))
        func()
        self:DestroySelf()
    else
        self:PlayEffect("Eff_FlyRace_Marker_Active_AS_Task", pos, nil, M.Pos(2, 2, 2))
        self:CountNumUITerminate()
        local actor = actorMgr:GetActor(q480Cfg.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 48002)
        end

        self:DestroySelf()
    end
end

function Q480Marks:TriggerOut() end
return Q480Marks
