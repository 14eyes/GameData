require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13032SaveTrigger = class("Q13032SaveTrigger", GadgetActorProxy)
Q13032SaveTrigger.defaultAlias = "Q13032SaveTrigger"
local Q13032ClientConfig = require("Quest/Client/Q13032ClientConfig")

local this
local subIDs = Q13032ClientConfig.SubIDs
local npcs = Q13032ClientConfig.Npcs
local datas = Q13032ClientConfig.Datas

function Q13032SaveTrigger:OnPostDataPrepare()
    print("[MainId: 13032][Trigger: Q13032SaveTrigger] OnPostDataPrepare")
    this = self
end

function Q13032SaveTrigger:OnPostComponentPrepare()
    print("[MainId: 13032][Trigger: Q13032SaveTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13032SaveTrigger:TriggerIn()
    print("[MainId: 13032][Trigger: Q13032SaveTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1303203)
    this:DestroySelf()
end

function Q13032SaveTrigger:PreTriggerIn()
    print("[MainId: 13032][Trigger: Q13032SaveTrigger] PreTriggerIn")
end

function Q13032SaveTrigger:LightUpTriggerIn()
    print("[MainId: 13032][Trigger: Q13032SaveTrigger] LightUpTriggerIn")
end

function Q13032SaveTrigger:TriggerOut()
    print("[MainId: 13032][Trigger: Q13032SaveTrigger] TriggerOut")
end

return Q13032SaveTrigger
