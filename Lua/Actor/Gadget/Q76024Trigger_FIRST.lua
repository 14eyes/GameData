require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76024Trigger_FIRST = class("Q76024Trigger_FIRST", GadgetActorProxy)
Q76024Trigger_FIRST.defaultAlias = "Q76024Trigger_FIRST"
local Q76024ClientConfig = require("Quest/Client/Q76024ClientConfig")

local this
local subIDs = Q76024ClientConfig.SubIDs
local datas = Q76024ClientConfig.Datas
local npcs = Q76024ClientConfig.Npcs
local points = Q76024ClientConfig.Points

function Q76024Trigger_FIRST:OnPostDataPrepare()
    print("Q76024Trigger_FIRST - OnPostDataPrepare")
    this = self
end

function Q76024Trigger_FIRST:OnPostComponentPrepare()
    print("Q76024Trigger_FIRST - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76024)
end

function Q76024Trigger_FIRST:TriggerIn()
    print("Q76024Trigger_FIRST - TriggerIn")
    actorUtils.FinishQuestID(false, 7602421)
    this:DestroySelf()
end

function Q76024Trigger_FIRST:PreTriggerIn()
    print("Q76024Trigger_FIRST - PreTriggerIn")
end

function Q76024Trigger_FIRST:LightUpTriggerIn()
    print("Q76024Trigger_FIRST - LightUpTriggerIn")
end

function Q76024Trigger_FIRST:TriggerOut()
    print("Q76024Trigger_FIRST - TriggerOut")
end

return Q76024Trigger_FIRST
