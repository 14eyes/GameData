require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40090Trigger = class("Q40090Trigger", GadgetActorProxy)
Q40090Trigger.defaultAlias = "Q40090Trigger"
local Q40090ClientConfig = require("Quest/Client/Q40090ClientConfig")

local this
local subIDs = Q40090ClientConfig.SubIDs
local npcs = Q40090ClientConfig.Npcs
local datas = Q40090ClientConfig.Datas

function Q40090Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40090Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40090Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4009005)
    this:DestroySelf()
end

function Q40090Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40090Trigger
