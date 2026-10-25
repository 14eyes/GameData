require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13032OutTriggerBossTop = class("Q13032OutTriggerBossTop", GadgetActorProxy)
Q13032OutTriggerBossTop.defaultAlias = "Q13032OutTriggerBossTop"
local Q13032ClientConfig = require("Quest/Client/Q13032ClientConfig")

local this
local subIDs = Q13032ClientConfig.SubIDs
local npcs = Q13032ClientConfig.Npcs
local datas = Q13032ClientConfig.Datas

function Q13032OutTriggerBossTop:OnPostDataPrepare()
    print("[MainId: 13032][Trigger: Q13032OutTriggerBossTop] OnPostDataPrepare")
    this = self
end

function Q13032OutTriggerBossTop:OnPostComponentPrepare()
    print("[MainId: 13032][Trigger: Q13032OutTriggerBossTop] OnPostComponentPrepare")
    this:AddComponentTrigger(88.76807, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13032OutTriggerBossTop:TriggerIn()
    print("[MainId: 13032][Trigger: Q13032OutTriggerBossTop] TriggerIn")
    actorUtils.FinishQuestID(true, 1303202)
    actorUtils.FinishQuestID(true, 1303203)
    actorUtils.FinishQuestID(true, 1303204)
    actorUtils.FinishQuestID(true, 1303205)
end

function Q13032OutTriggerBossTop:PreTriggerIn()
    print("[MainId: 13032][Trigger: Q13032OutTriggerBossTop] PreTriggerIn")
end

function Q13032OutTriggerBossTop:LightUpTriggerIn()
    print("[MainId: 13032][Trigger: Q13032OutTriggerBossTop] LightUpTriggerIn")
end

function Q13032OutTriggerBossTop:TriggerOut()
    print("[MainId: 13032][Trigger: Q13032OutTriggerBossTop] TriggerOut")
end

return Q13032OutTriggerBossTop
