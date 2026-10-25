require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701250Trigger = class("Q701250Trigger", GadgetActorProxy)
Q701250Trigger.defaultAlias = "Q701250Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701250Trigger:OnPostDataPrepare()
    print("Q701250Trigger - OnPostDataPrepare")
    this = self
end

function Q701250Trigger:OnPostComponentPrepare()
    print("Q701250Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(26, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701250Trigger:TriggerIn()
    print("Q701250Trigger - TriggerIn")
    local finishQuestWithParam = actorUtils.FinishQuestWithParam
    local tbl = {}
    local flag = false
    tbl[1] = false
    tbl[2] = flag
    local v = {}
    local n = 701251
    v[1] = 701250
    v[2] = n
    finishQuestWithParam(tbl, v)
    this:DestroySelf()
end

function Q701250Trigger:PreTriggerIn()
    print("Q701250Trigger - PreTriggerIn")
end

function Q701250Trigger:LightUpTriggerIn()
    print("Q701250Trigger - LightUpTriggerIn")
end

function Q701250Trigger:TriggerOut()
    print("Q701250Trigger - TriggerOut")
end

return Q701250Trigger
