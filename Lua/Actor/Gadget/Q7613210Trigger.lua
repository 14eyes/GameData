require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613210Trigger = class("Q7613210Trigger", GadgetActorProxy)
Q7613210Trigger.defaultAlias = "Q7613210Trigger"
local Q76132ClientConfig = require("Quest/Client/Q76132ClientConfig")

local this
local subIDs = Q76132ClientConfig.SubIDs
local datas = Q76132ClientConfig.Datas
local npcs = Q76132ClientConfig.Npcs
local points = Q76132ClientConfig.Points

function Q7613210Trigger:OnPostDataPrepare()
    print("Q7613210Trigger - OnPostDataPrepare")
    this = self
end

function Q7613210Trigger:OnPostComponentPrepare()
    print("Q7613210Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(37.60289, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76132)
end

function Q7613210Trigger:TriggerIn()
    print("Q7613210Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7613210)
    this:DestroySelf()
end

function Q7613210Trigger:PreTriggerIn()
    print("Q7613210Trigger - PreTriggerIn")
end

function Q7613210Trigger:LightUpTriggerIn()
    print("Q7613210Trigger - LightUpTriggerIn")
end

function Q7613210Trigger:TriggerOut()
    print("Q7613210Trigger - TriggerOut")
end

return Q7613210Trigger
