require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400104_NarratorTrigger = class("Q400104_NarratorTrigger", GadgetActorProxy)
Q400104_NarratorTrigger.defaultAlias = "Q400104_NarratorTrigger"
local Q4001ClientConfig = require("Quest/Client/Q4001ClientConfig")

local this
local subIDs = Q4001ClientConfig.SubIDs
local npcs = Q4001ClientConfig.Npcs
local points = Q4001ClientConfig.Points

function Q400104_NarratorTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q400104_NarratorTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400104_NarratorTrigger:TriggerIn()
    print("TriggerIn")
    this:DestroySelf()
end

function Q400104_NarratorTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q400104_NarratorTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q400104_NarratorTrigger:TriggerOut()
    print("TriggerOut")
end

return Q400104_NarratorTrigger
