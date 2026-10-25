require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503210Trigger = class("Q7503210Trigger", GadgetActorProxy)
Q7503210Trigger.defaultAlias = "Q7503210Trigger"
local Q75032ClientConfig = require("Quest/Client/Q75032ClientConfig")

local this
local subIDs = Q75032ClientConfig.SubIDs
local npcs = Q75032ClientConfig.Npcs
local datas = Q75032ClientConfig.Datas

function Q7503210Trigger:OnPostDataPrepare()
    print("[MainId: 75032][Trigger: Q7503210Trigger] OnPostDataPrepare")
    this = self
end

function Q7503210Trigger:OnPostComponentPrepare()
    print("[MainId: 75032][Trigger: Q7503210Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75032)
end

function Q7503210Trigger:TriggerIn()
    print("[MainId: 75032][Trigger: Q7503210Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7503210)
    this:DestroySelf()
end

function Q7503210Trigger:PreTriggerIn()
    print("[MainId: 75032][Trigger: Q7503210Trigger] PreTriggerIn")
end

function Q7503210Trigger:LightUpTriggerIn()
    print("[MainId: 75032][Trigger: Q7503210Trigger] LightUpTriggerIn")
end

function Q7503210Trigger:TriggerOut()
    print("[MainId: 75032][Trigger: Q7503210Trigger] TriggerOut")
end

return Q7503210Trigger
