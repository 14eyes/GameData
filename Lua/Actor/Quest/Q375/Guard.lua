require("Actor/ActorCommon")
local ConfigNpcActorProxy = require("Actor/Npc/ConfigNpcActorProxy")

local Guard = class("Guard", ConfigNpcActorProxy)
Guard.defaultAlias = "Guard"
local tbl = {}
tbl.StayPos = sceneData:GetDummyPoint(1008, "Q374Guard").pos
tbl.StayDir = sceneData:GetDummyPoint(1008, "Q374Guard").rot
tbl.DisPos = sceneData:GetDummyPoint(1008, "Q374GuardDis").pos
tbl.DisDir = sceneData:GetDummyPoint(1008, "Q374GuardDis").rot
tbl.AprPos = sceneData:GetDummyPoint(1008, "Q374GuardApr").pos
tbl.AprDir = sceneData:GetDummyPoint(1008, "Q374GuardApr").rot

function Guard:OnPostStart()
    self:StartDaily()
end

function Guard:StartDaily()
    self:BornOnce()
    self:RegisterSelfHour(self.HourBehave)
    print("Guard StartDaily")
end

function Guard:BornOnce()
    local levelTime = self:GetLevelTime()
    print("Now Time is", levelTime)
    if 5.985 <= levelTime and levelTime < 17.985 then
        self:StartDayNow()
    else
        self:StartNightNow()
    end
end

function Guard:StartDay()
    self:ClearFollowTask()
    self:ShowSelf()
    self:PerformDither(true, 0.1, self.GoWork)
end

function Guard:GoWork()
    self.WalkToTask(self, tbl.StayPos, function(arg1, arg2)
        self:Standby()
        self:TurnTo(M.Euler2DirXZ(tbl.StayDir))
        print("GoWork")
    end)
end

function Guard:StartNight()
    self:ClearFollowTask()
    self:GoHome()
end

function Guard:GoHome()
    self.WalkToTask(self, tbl.DisPos, function(arg1, arg2)
        self:Standby()
        self:TurnTo(M.Euler2DirXZ(tbl.DisDir))
        self:PerformDither(false, 0.1, self.HideSelf)
        print("GoHome")
    end)
end

function Guard:HourBehave(arg1)
    print("Each Time is", arg1)
    if 5.985 <= arg1 and arg1 < 6.985 then
        self:StartDay()
        print("StartDay")
    elseif 17.985 <= arg1 and arg1 < 18.985 then
        self:StartNight()
        print("StartNight")
    end
end

function Guard:StartNightNow()
    self:ClearFollowTask()
    self:PerformDither(false, 0.1, self.HideSelf)
    print("StartNightNow")
end

function Guard:StartDayNow()
    self:ShowSelf()
    self:Standby()
    self:TurnTo(M.Euler2DirXZ(tbl.StayDir))
    print("StartDayNow")
end

return Guard
