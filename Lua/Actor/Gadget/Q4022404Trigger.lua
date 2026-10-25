require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022404Trigger = class("Q4022404Trigger", GadgetActorProxy)
Q4022404Trigger.defaultAlias = "Q4022404Trigger"
local Q40224ClientConfig = require("Quest/Client/Q40224ClientConfig")

local this
local subIDs = Q40224ClientConfig.SubIDs
local datas = Q40224ClientConfig.Datas
local npcs = Q40224ClientConfig.Npcs
local points = Q40224ClientConfig.Points

function Q4022404Trigger:OnPostDataPrepare()
    print("Q4022404Trigger - OnPostDataPrepare")
    this = self
end

function Q4022404Trigger:OnPostComponentPrepare()
    print("Q4022404Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40224)
end

function Q4022404Trigger:TriggerIn()
    print("Q4022404Trigger - TriggerIn")
    actorMgr:GetActor("40224"):PlayIndexedEffect("4022402", "Eff_Quest_SpaceRifts_Portal_01", {x = 1545.645, y = 231.507, z = 718.176}, nil, nil)
end

function Q4022404Trigger:PreTriggerIn()
    print("Q4022404Trigger - PreTriggerIn")
end

function Q4022404Trigger:LightUpTriggerIn()
    print("Q4022404Trigger - LightUpTriggerIn")
end

function Q4022404Trigger:TriggerOut()
    print("Q4022404Trigger - TriggerOut")
    actorMgr:GetActor("40224"):RemoveIndexedEffect("4022402")
end

return Q4022404Trigger
