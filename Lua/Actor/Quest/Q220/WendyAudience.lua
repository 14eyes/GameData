require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local WendyAudience = class("WendyAudience", NpcActorProxy)
WendyAudience.defaultAlias = "WendyAudience"
WendyAudience.seatPos = nil
WendyAudience.seatDir = nil
WendyAudience.returnCallback = nil
local Q220Config = require("Actor/Quest/Q220/Config/Q220Config")

local wendyData = Q220Config.WendyData
local audienceInter = Q220Config.AudienceInter
local extrasData = Q220Config.ExtrasData

function WendyAudience:MoveToSeat()
    print("move to seat ")
    print(self.seatPos)
    self:AddPriorityInter(InterTimingType.BTN, audienceInter)
    self:WalkToTask(self.seatPos, function(arg1, arg2)
        arg1:TurnTo(M.Euler2DirXZ(arg1.seatDir))
        arg1:Standby()
    end, function(arg1, arg2)
        arg1:Standby()
    end)
end

function WendyAudience:ReturnToNormal()
    print("ai return " .. tostring(self.configID))
    self:ClearPriorityInter(InterTimingType.BTN)
    self:WalkToTask(extrasData.ExtrasOriginPos[self.extrasIndex], function(arg1, arg2)
        arg1:TurnTo(M.Euler2DirXZ(extrasData.ExtrasOriginDir[arg1.extrasIndex]))
        arg1:Standby()
        if arg1.returnCallback ~= nil then
            arg1:returnCallback()
        end
    end, function(arg1, arg2)
        arg1:Standby()
    end)
end

function WendyAudience:OnEvent(arg1)
    if arg1.evtType == wendyData.EvtFinishDance then
        self:ReturnToNormal()
    end
end

function WendyAudience:Start()
    print("start!wendy audience " .. self.configID)
    self:RegisterActorEvent(self.OnEvent)
    self:MoveToSeat()
end

function WendyAudience:OnDestroy()
    print("wendy audience " .. self.configID .. " destroied")
end

return WendyAudience
