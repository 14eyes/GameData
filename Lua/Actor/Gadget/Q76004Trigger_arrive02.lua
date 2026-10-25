require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76004Trigger_arrive02 = class("Q76004Trigger_arrive02", GadgetActorProxy)
Q76004Trigger_arrive02.defaultAlias = "Q76004Trigger_arrive02"
local Q76004ClientConfig = require("Quest/Client/Q76004ClientConfig")

local this
local subIDs = Q76004ClientConfig.SubIDs
local datas = Q76004ClientConfig.Datas
local npcs = Q76004ClientConfig.Npcs
local points = Q76004ClientConfig.Points

function Q76004Trigger_arrive02:OnPostDataPrepare()
    print("Q76004Trigger_arrive02 - OnPostDataPrepare")
    this = self
end

function Q76004Trigger_arrive02:OnPostComponentPrepare()
    print("Q76004Trigger_arrive02 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76004)
end

function Q76004Trigger_arrive02:TriggerIn()
    print("Q76004Trigger_arrive02 - TriggerIn")
    actorUtils.FinishQuestID(false, 7600404)
    this:DestroySelf()
end

function Q76004Trigger_arrive02:PreTriggerIn()
    print("Q76004Trigger_arrive02 - PreTriggerIn")
end

function Q76004Trigger_arrive02:LightUpTriggerIn()
    print("Q76004Trigger_arrive02 - LightUpTriggerIn")
end

function Q76004Trigger_arrive02:TriggerOut()
    print("Q76004Trigger_arrive02 - TriggerOut")
end

return Q76004Trigger_arrive02
