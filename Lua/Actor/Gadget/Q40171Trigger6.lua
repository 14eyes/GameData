require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40171Trigger6 = class("Q40171Trigger6", GadgetActorProxy)
Q40171Trigger6.defaultAlias = "Q40171Trigger6"
local Q40171ClientConfig = require("Quest/Client/Q40171ClientConfig")

local this
local subIDs = Q40171ClientConfig.SubIDs
local datas = Q40171ClientConfig.Datas
local npcs = Q40171ClientConfig.Npcs
local points = Q40171ClientConfig.Points

function Q40171Trigger6:OnPostDataPrepare()
    print("Q40171Trigger6 - OnPostDataPrepare")
    this = self
end

function Q40171Trigger6:OnPostComponentPrepare()
    print("Q40171Trigger6 - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40171)
end

function Q40171Trigger6:TriggerIn()
    print("Q40171Trigger6 - TriggerIn")
    actorMgr:GetActor("40171"):RequestInteraction(npcs.Npc1094.alias, "", true)
    this:DestroySelf()
end

function Q40171Trigger6:PreTriggerIn()
    print("Q40171Trigger6 - PreTriggerIn")
end

function Q40171Trigger6:LightUpTriggerIn()
    print("Q40171Trigger6 - LightUpTriggerIn")
end

function Q40171Trigger6:TriggerOut()
    print("Q40171Trigger6 - TriggerOut")
end

return Q40171Trigger6
