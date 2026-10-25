require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40211Trigger_18 = class("Q40211Trigger_18", GadgetActorProxy)
Q40211Trigger_18.defaultAlias = "Q40211Trigger_18"
local Q40211ClientConfig = require("Quest/Client/Q40211ClientConfig")

local this
local subIDs = Q40211ClientConfig.SubIDs
local datas = Q40211ClientConfig.Datas
local npcs = Q40211ClientConfig.Npcs
local points = Q40211ClientConfig.Points

function Q40211Trigger_18:OnPostDataPrepare()
    print("Q40211Trigger_18 - OnPostDataPrepare")
    this = self
end

function Q40211Trigger_18:OnPostComponentPrepare()
    print("Q40211Trigger_18 - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40211)
end

function Q40211Trigger_18:TriggerIn()
    print("Q40211Trigger_18 - TriggerIn")
    actorMgr:GetActor("40211"):RequestInteraction(npcs.Npc1050.alias, "", true)
    this:DestroySelf()
end

function Q40211Trigger_18:PreTriggerIn()
    print("Q40211Trigger_18 - PreTriggerIn")
end

function Q40211Trigger_18:LightUpTriggerIn()
    print("Q40211Trigger_18 - LightUpTriggerIn")
end

function Q40211Trigger_18:TriggerOut()
    print("Q40211Trigger_18 - TriggerOut")
end

return Q40211Trigger_18
