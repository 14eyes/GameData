require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13032OutTriggerHole = class("Q13032OutTriggerHole", GadgetActorProxy)
Q13032OutTriggerHole.defaultAlias = "Q13032OutTriggerHole"
local Q13032ClientConfig = require("Quest/Client/Q13032ClientConfig")

local this
local subIDs = Q13032ClientConfig.SubIDs
local npcs = Q13032ClientConfig.Npcs
local datas = Q13032ClientConfig.Datas

function Q13032OutTriggerHole:OnPostDataPrepare()
    print("[MainId: 13032][Trigger: Q13032OutTriggerHole] OnPostDataPrepare")
    this = self
end

function Q13032OutTriggerHole:OnPostComponentPrepare()
    print("[MainId: 13032][Trigger: Q13032OutTriggerHole] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13032OutTriggerHole:TriggerIn()
    print("[MainId: 13032][Trigger: Q13032OutTriggerHole] TriggerIn")
    actorUtils.FinishQuestID(true, 1303202)
    actorUtils.FinishQuestID(true, 1303203)
    actorUtils.FinishQuestID(true, 1303204)
    actorUtils.FinishQuestID(true, 1303205)
end

function Q13032OutTriggerHole:PreTriggerIn()
    print("[MainId: 13032][Trigger: Q13032OutTriggerHole] PreTriggerIn")
end

function Q13032OutTriggerHole:LightUpTriggerIn()
    print("[MainId: 13032][Trigger: Q13032OutTriggerHole] LightUpTriggerIn")
end

function Q13032OutTriggerHole:TriggerOut()
    print("[MainId: 13032][Trigger: Q13032OutTriggerHole] TriggerOut")
end

return Q13032OutTriggerHole
