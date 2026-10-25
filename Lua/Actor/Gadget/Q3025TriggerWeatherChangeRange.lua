require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3025TriggerWeatherChangeRange = class("Q3025TriggerWeatherChangeRange", GadgetActorProxy)
Q3025TriggerWeatherChangeRange.defaultAlias = "Q3025TriggerWeatherChangeRange"
local Q3025ClientConfig = require("Quest/Client/Q3025ClientConfig")

local this
local subIDs = Q3025ClientConfig.SubIDs
local npcs = Q3025ClientConfig.Npcs
local datas = Q3025ClientConfig.Datas

function Q3025TriggerWeatherChangeRange:OnPostDataPrepare()
    print("[MainId: 3025][Trigger: Q3025TriggerWeatherChangeRange] OnPostDataPrepare")
    this = self
end

function Q3025TriggerWeatherChangeRange:OnPostComponentPrepare()
    print("[MainId: 3025][Trigger: Q3025TriggerWeatherChangeRange] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3025TriggerWeatherChangeRange:TriggerIn()
    print("[MainId: 3025][Trigger: Q3025TriggerWeatherChangeRange] TriggerIn")
    if actorMgr:GetActor("Q3025TriggerWeatherProtection") == actorMgr.dummyActor then
        print("Q3025TriggerWeatherProtection is nil")
        actorMgr:CreateActorWithPos("Q3025TriggerWeatherProtection", "Actor/Gadget/Q3025TriggerWeatherProtection", 70900002, 0, {x = -1072.975, y = 286.839, z = 3182.443}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end

    if actorMgr:GetActor("3025"):GetSubQuestState(302509) == 2 then
        globalActor:ChangeWeather("BigWorld/Weather_Storm")
    end

    this:DestroySelf()
end

function Q3025TriggerWeatherChangeRange:TriggerOut()
    print("[MainId: 3025][Trigger: Q3025TriggerWeatherChangeRange] TriggerOut")
end

return Q3025TriggerWeatherChangeRange
