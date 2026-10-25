require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4009218FailTrigger = class("Q4009218FailTrigger", GadgetActorProxy)
Q4009218FailTrigger.defaultAlias = "Q4009218FailTrigger"
local Q40092ClientConfig = require("Quest/Client/Q40092ClientConfig")

local this
local subIDs = Q40092ClientConfig.SubIDs
local npcs = Q40092ClientConfig.Npcs
local gadgets = Q40092ClientConfig.Gadgets
local datas = Q40092ClientConfig.Datas

function Q4009218FailTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4009218FailTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(140, 40, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4009218FailTrigger:TriggerIn()
    print("TriggerIn")
end

function Q4009218FailTrigger:TriggerOut()
    print("TriggerOut")
    this:DestroySelf()
    actorUtils.FinishQuestID(true, 4009218)
end

return Q4009218FailTrigger
