require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7617602Trigger = class("Q7617602Trigger", GadgetActorProxy)
Q7617602Trigger.defaultAlias = "Q7617602Trigger"
local Q76176ClientConfig = require("Quest/Client/Q76176ClientConfig")

local this
local subIDs = Q76176ClientConfig.SubIDs
local npcs = Q76176ClientConfig.Npcs
local points = Q76176ClientConfig.Points

function Q7617602Trigger:OnPostDataPrepare()
    print("Q7617602Trigger - OnPostDataPrepare")
    this = self
end

function Q7617602Trigger:OnPostComponentPrepare()
    print("Q7617602Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76176)
end

function Q7617602Trigger:TriggerIn()
    print("Q7617602Trigger - TriggerIn")
    local finishQuestWithParam = actorUtils.FinishQuestWithParam
    local tbl = {}
    local flag = false
    tbl[1] = false
    tbl[2] = flag
    local v = {}
    local n = 7617601
    v[1] = 7617602
    v[2] = n
    finishQuestWithParam(tbl, v)
end

function Q7617602Trigger:PreTriggerIn()
    print("Q7617602Trigger - PreTriggerIn")
end

function Q7617602Trigger:LightUpTriggerIn()
    print("Q7617602Trigger - LightUpTriggerIn")
end

function Q7617602Trigger:TriggerOut()
    print("Q7617602Trigger - TriggerOut")
    actorUtils.FinishQuestWithParam({false}, {7617603})
    this:DestroySelf()
end

return Q7617602Trigger
