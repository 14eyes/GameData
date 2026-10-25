require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4009214FailTrigger = class("Q4009214FailTrigger", GadgetActorProxy)
Q4009214FailTrigger.defaultAlias = "Q4009214FailTrigger"
local Q40092ClientConfig = require("Quest/Client/Q40092ClientConfig")

local this
local subIDs = Q40092ClientConfig.SubIDs
local npcs = Q40092ClientConfig.Npcs
local gadgets = Q40092ClientConfig.Gadgets
local datas = Q40092ClientConfig.Datas

function Q4009214FailTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4009214FailTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4009214FailTrigger:TriggerIn()
    print("TriggerIn")
end

function Q4009214FailTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4009214FailTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4009214FailTrigger:TriggerOut()
    print("TriggerOut")
    this:DestroySelf()
    actorUtils.FinishQuestID(true, 4009214)
end

return Q4009214FailTrigger
