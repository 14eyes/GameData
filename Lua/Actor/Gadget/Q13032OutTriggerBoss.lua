require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13032OutTriggerBoss = class("Q13032OutTriggerBoss", GadgetActorProxy)
Q13032OutTriggerBoss.defaultAlias = "Q13032OutTriggerBoss"
local Q13032ClientConfig = require("Quest/Client/Q13032ClientConfig")

local this
local subIDs = Q13032ClientConfig.SubIDs
local npcs = Q13032ClientConfig.Npcs
local datas = Q13032ClientConfig.Datas

function Q13032OutTriggerBoss:OnPostDataPrepare()
    print("[MainId: 13032][Trigger: Q13032OutTriggerBoss] OnPostDataPrepare")
    this = self
end

function Q13032OutTriggerBoss:OnPostComponentPrepare()
    print("[MainId: 13032][Trigger: Q13032OutTriggerBoss] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13032OutTriggerBoss:TriggerIn()
    print("[MainId: 13032][Trigger: Q13032OutTriggerBoss] TriggerIn")
    actorUtils.FinishQuestID(true, 1303202)
    actorUtils.FinishQuestID(true, 1303203)
    actorUtils.FinishQuestID(true, 1303204)
    actorUtils.FinishQuestID(true, 1303205)
end

function Q13032OutTriggerBoss:PreTriggerIn()
    print("[MainId: 13032][Trigger: Q13032OutTriggerBoss] PreTriggerIn")
end

function Q13032OutTriggerBoss:LightUpTriggerIn()
    print("[MainId: 13032][Trigger: Q13032OutTriggerBoss] LightUpTriggerIn")
end

function Q13032OutTriggerBoss:TriggerOut()
    print("[MainId: 13032][Trigger: Q13032OutTriggerBoss] TriggerOut")
end

return Q13032OutTriggerBoss
