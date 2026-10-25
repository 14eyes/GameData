require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4018622Trigger = class("Q4018622Trigger", GadgetActorProxy)
Q4018622Trigger.defaultAlias = "Q4018622Trigger"
local Q40186ClientConfig = require("Quest/Client/Q40186ClientConfig")

local this
local subIDs = Q40186ClientConfig.SubIDs
local datas = Q40186ClientConfig.Datas
local npcs = Q40186ClientConfig.Npcs
local points = Q40186ClientConfig.Points

function Q4018622Trigger:OnPostDataPrepare()
    print("Q4018622Trigger - OnPostDataPrepare")
    this = self
end

function Q4018622Trigger:OnPostComponentPrepare()
    print("Q4018622Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40186)
end

function Q4018622Trigger:TriggerIn()
    print("Q4018622Trigger - TriggerIn")
    actorMgr:GetActor("40186"):PlayerEnterDungeonPointWithDialogs(1483, 1231, 4018622, 1, nil, 3, nil, nil)
    this:DestroySelf()
end

function Q4018622Trigger:PreTriggerIn()
    print("Q4018622Trigger - PreTriggerIn")
end

function Q4018622Trigger:LightUpTriggerIn()
    print("Q4018622Trigger - LightUpTriggerIn")
end

function Q4018622Trigger:TriggerOut()
    print("Q4018622Trigger - TriggerOut")
end

return Q4018622Trigger
