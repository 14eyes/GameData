require("Actor/ActorCommon")
local BaseActorProxy = require("Actor/BaseActorProxy")

local SubGlobalActorProxy = class("SubGlobalActorProxy", BaseActorProxy)
SubGlobalActorProxy.actorType = ActorType.SUB_GLOBAL_ACTOR
SubGlobalActorProxy.defaultAlias = "SubGlobal"
local super

function SubGlobalActorProxy:OnPreInit()
    super = self.__super
    super:OnPreInit()
end

function SubGlobalActorProxy:OnInit(alias)
    self.alias = alias
    self.uActor = self:CreateUActor(alias)
end

function SubGlobalActorProxy:OnPostInit()
    self:Register()
end

function SubGlobalActorProxy:OnDestroy()
    self:Unregister()
end

function SubGlobalActorProxy:CreateLimitRegion(arg1)
    return self.uActor:CreateLimitRegion(arg1)
end

function SubGlobalActorProxy:DestroyLimitRegion(arg1)
    self.uActor:DestroyLimitRegion(arg1)
end

function SubGlobalActorProxy:CheckNeedTrans(arg1, arg2)
    return self.uActor:CheckNeedTrans(arg1, arg2)
end

function SubGlobalActorProxy:GetLimitRegionDis(arg1, arg2)
    return self.uActor:GetLimitRegionDis(arg1, arg2)
end

function SubGlobalActorProxy:CreateUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.SUB_GLOBAL_ACTOR, arg1, self.metaPath)
    local globalActor = actorUtils.CreateGlobalActor(actor)
    return globalActor
end

function SubGlobalActorProxy:Register() end
function SubGlobalActorProxy:Unregister() end

function SubGlobalActorProxy:RegisterDayCallback(arg1)
    self.uActor:RegisterDayCallback(arg1)
end

function SubGlobalActorProxy:UnregisterDayCallback(arg1)
    self.uActor:UnregisterDayCallback(arg1)
end

function SubGlobalActorProxy:RegisterNightCallback(arg1)
    self.uActor:RegisterNightCallback(arg1)
end

function SubGlobalActorProxy:UnregisterNightCallback(arg1)
    self.uActor:UnregisterNightCallback(arg1)
end

function SubGlobalActorProxy:RegisterHourCallback(arg1)
    self.uActor:RegisterHourCallback(arg1)
end

function SubGlobalActorProxy:UnregisterHourCallback(arg1)
    self.uActor:UnregisterHourCallback(arg1)
end

function SubGlobalActorProxy:RegisterWeatherCallback(arg1) end
function SubGlobalActorProxy:UnregisterWeatherCallback(arg1) end

function SubGlobalActorProxy:ChangeWeather(arg1)
    self.uActor:ChangeWeather(arg1)
end

function SubGlobalActorProxy:LeaveWeather()
    self.uActor:LeaveWeather()
end

function SubGlobalActorProxy:LeaveAllWeather()
    self.uActor:LeaveAllWeather()
end

return SubGlobalActorProxy
