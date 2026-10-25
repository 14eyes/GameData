require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500618_EnterTrigger = class("Q7500618_EnterTrigger", GadgetActorProxy)
Q7500618_EnterTrigger.defaultAlias = "Q7500618_EnterTrigger"
local Q75006ClientConfig = require("Quest/Client/Q75006ClientConfig")

local this
local subIDs = Q75006ClientConfig.SubIDs
local npcs = Q75006ClientConfig.Npcs
local datas = Q75006ClientConfig.Datas

function Q7500618_EnterTrigger:OnPostDataPrepare()
    print("[MainId: 75006][Trigger: Q7500618_EnterTrigger] OnPostDataPrepare")
    this = self
end

function Q7500618_EnterTrigger:OnPostComponentPrepare()
    print("[MainId: 75006][Trigger: Q7500618_EnterTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75006)
end

function Q7500618_EnterTrigger:TriggerIn()
    print("[MainId: 75006][Trigger: Q7500618_EnterTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500618)
end

function Q7500618_EnterTrigger:PreTriggerIn()
    print("[MainId: 75006][Trigger: Q7500618_EnterTrigger] PreTriggerIn")
end

function Q7500618_EnterTrigger:LightUpTriggerIn()
    print("[MainId: 75006][Trigger: Q7500618_EnterTrigger] LightUpTriggerIn")
end

function Q7500618_EnterTrigger:TriggerOut()
    print("[MainId: 75006][Trigger: Q7500618_EnterTrigger] TriggerOut")
end

return Q7500618_EnterTrigger
