require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13032OutTriggerLeft = class("Q13032OutTriggerLeft", GadgetActorProxy)
Q13032OutTriggerLeft.defaultAlias = "Q13032OutTriggerLeft"
local Q13032ClientConfig = require("Quest/Client/Q13032ClientConfig")

local this
local subIDs = Q13032ClientConfig.SubIDs
local npcs = Q13032ClientConfig.Npcs
local datas = Q13032ClientConfig.Datas

function Q13032OutTriggerLeft:OnPostDataPrepare()
    print("[MainId: 13032][Trigger: Q13032OutTriggerLeft] OnPostDataPrepare")
    this = self
end

function Q13032OutTriggerLeft:OnPostComponentPrepare()
    print("[MainId: 13032][Trigger: Q13032OutTriggerLeft] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(231.7267, 317.0552, 285.4422, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13032OutTriggerLeft:TriggerIn()
    print("[MainId: 13032][Trigger: Q13032OutTriggerLeft] TriggerIn")
    actorUtils.FinishQuestID(true, 1303202)
    actorUtils.FinishQuestID(true, 1303203)
    actorUtils.FinishQuestID(true, 1303204)
    actorUtils.FinishQuestID(true, 1303205)
end

function Q13032OutTriggerLeft:PreTriggerIn()
    print("[MainId: 13032][Trigger: Q13032OutTriggerLeft] PreTriggerIn")
end

function Q13032OutTriggerLeft:LightUpTriggerIn()
    print("[MainId: 13032][Trigger: Q13032OutTriggerLeft] LightUpTriggerIn")
end

function Q13032OutTriggerLeft:TriggerOut()
    print("[MainId: 13032][Trigger: Q13032OutTriggerLeft] TriggerOut")
end

return Q13032OutTriggerLeft
