require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701125Trigger = class("Q701125Trigger", GadgetActorProxy)
Q701125Trigger.defaultAlias = "Q701125Trigger"
local Q7011ClientConfig = require("Quest/Client/Q7011ClientConfig")

local this
local subIDs = Q7011ClientConfig.SubIDs
local datas = Q7011ClientConfig.Datas
local npcs = Q7011ClientConfig.Npcs
local points = Q7011ClientConfig.Points

function Q701125Trigger:OnPostDataPrepare()
    print("Q701125Trigger - OnPostDataPrepare")
    this = self
end

function Q701125Trigger:OnPostComponentPrepare()
    print("Q701125Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5.4963126, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7011)
end

function Q701125Trigger:TriggerIn()
    print("Q701125Trigger - TriggerIn")
    local finishQuestWithParam = actorUtils.FinishQuestWithParam
    local tbl = {}
    local flag = false
    tbl[1] = false
    tbl[2] = flag
    local v = {}
    local n = 701131
    v[1] = 701125
    v[2] = n
    finishQuestWithParam(tbl, v)
    this:DestroySelf()
end

function Q701125Trigger:PreTriggerIn()
    print("Q701125Trigger - PreTriggerIn")
end

function Q701125Trigger:LightUpTriggerIn()
    print("Q701125Trigger - LightUpTriggerIn")
end

function Q701125Trigger:TriggerOut()
    print("Q701125Trigger - TriggerOut")
end

return Q701125Trigger
