require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610121Trigger_N7180 = class("Q7610121Trigger_N7180", GadgetActorProxy)
Q7610121Trigger_N7180.defaultAlias = "Q7610121Trigger_N7180"
local Q76101ClientConfig = require("Quest/Client/Q76101ClientConfig")

local this
local subIDs = Q76101ClientConfig.SubIDs
local datas = Q76101ClientConfig.Datas
local npcs = Q76101ClientConfig.Npcs
local points = Q76101ClientConfig.Points

function Q7610121Trigger_N7180:OnPostDataPrepare()
    print("Q7610121Trigger_N7180 - OnPostDataPrepare")
    this = self
end

function Q7610121Trigger_N7180:OnPostComponentPrepare()
    print("Q7610121Trigger_N7180 - OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76101)
end

function Q7610121Trigger_N7180:TriggerIn()
    print("Q7610121Trigger_N7180 - TriggerIn")
    actorMgr:GetActor("76101"):RequestInteraction(npcs.Npc7181.alias, "", true)
    this:DestroySelf()
end

function Q7610121Trigger_N7180:PreTriggerIn()
    print("Q7610121Trigger_N7180 - PreTriggerIn")
end

function Q7610121Trigger_N7180:LightUpTriggerIn()
    print("Q7610121Trigger_N7180 - LightUpTriggerIn")
end

function Q7610121Trigger_N7180:TriggerOut()
    print("Q7610121Trigger_N7180 - TriggerOut")
end

return Q7610121Trigger_N7180
