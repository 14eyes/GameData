require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500420Trigger = class("Q7500420Trigger", GadgetActorProxy)
Q7500420Trigger.defaultAlias = "Q7500420Trigger"
local Q75004ClientConfig = require("Quest/Client/Q75004ClientConfig")

local v
local subIDs = Q75004ClientConfig.SubIDs
local npcs = Q75004ClientConfig.Npcs
local datas = Q75004ClientConfig.Datas

function Q7500401NewTrigger.OnPostDataPrepare(arg1)
    print("[MainId: 75004][Trigger: Q7500420Trigger] OnPostDataPrepare")
    v = arg1
end

function Q7500401NewTrigger:OnPostComponentPrepare()
    print("[MainId: 75004][Trigger: Q7500420Trigger] OnPostComponentPrepare")
    v:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75004)
end

function Q7500401NewTrigger.TriggerIn(arg1)
    print("[MainId: 75004][Trigger: Q7500420Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500401)
    v:DestroySelf()
end

function Q7500401NewTrigger.PreTriggerIn(arg1)
    print("[MainId: 75004][Trigger: Q7500420Trigger] PreTriggerIn")
end

function Q7500401NewTrigger.LightUpTriggerIn(arg1)
    print("[MainId: 75004][Trigger: Q7500420Trigger] LightUpTriggerIn")
end

function Q7500401NewTrigger.TriggerOut(arg1)
    print("[MainId: 75004][Trigger: Q7500420Trigger] TriggerOut")
end

return Q7500420Trigger
