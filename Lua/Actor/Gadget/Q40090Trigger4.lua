require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40090Trigger4 = class("Q40090Trigger4", GadgetActorProxy)
Q40090Trigger4.defaultAlias = "Q40090Trigger4"
local Q40090ClientConfig = require("Quest/Client/Q40090ClientConfig")

local this
local subIDs = Q40090ClientConfig.SubIDs
local npcs = Q40090ClientConfig.Npcs
local datas = Q40090ClientConfig.Datas

function Q40090Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40090Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40090Trigger4:TriggerIn()
    print("TriggerIn")
    this:DestroySelf()
end

function Q40090Trigger4:PreTriggerIn()
    print("PreTriggerIn")
end

function Q40090Trigger4:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q40090Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q40090Trigger4
