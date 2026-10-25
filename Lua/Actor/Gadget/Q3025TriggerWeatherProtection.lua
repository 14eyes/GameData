require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3025TriggerWeatherProtection = class("Q3025TriggerWeatherProtection", GadgetActorProxy)
Q3025TriggerWeatherProtection.defaultAlias = "Q3025TriggerWeatherProtection"
local Q3025ClientConfig = require("Quest/Client/Q3025ClientConfig")

local this
local subIDs = Q3025ClientConfig.SubIDs
local npcs = Q3025ClientConfig.Npcs
local datas = Q3025ClientConfig.Datas

function Q3025TriggerWeatherProtection:OnPostDataPrepare()
    print("[MainId: 3025][Trigger: Q3025TriggerWeatherProtection] OnPostDataPrepare")
    this = self
end

function Q3025TriggerWeatherProtection:OnPostComponentPrepare()
    print("[MainId: 3025][Trigger: Q3025TriggerWeatherProtection] OnPostComponentPrepare")
    this:AddComponentTrigger(130, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3025TriggerWeatherProtection:TriggerIn()
    print("[MainId: 3025][Trigger: Q3025TriggerWeatherProtection] TriggerIn")
end

function Q3025TriggerWeatherProtection:TriggerOut()
    print("[MainId: 3025][Trigger: Q3025TriggerWeatherProtection] TriggerOut")
    local actor = actorMgr:GetActor("3025")
    if actor:GetSubQuestState(302508) == 2 then
        actorUtils.FinishQuestID(true, 302508)
    else
        if actor:GetSubQuestState(302509) == 2 then
            actorUtils.FinishQuestID(true, 302509)
        else
            if actor:GetSubQuestState(302510) == 2 then
                actorUtils.FinishQuestID(true, 302510)
            end
        end
    end

    globalActor:LeaveWeather()
    this:DestroySelf()
end

return Q3025TriggerWeatherProtection
