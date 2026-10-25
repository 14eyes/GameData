require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4018621Trigger = class("Q4018621Trigger", GadgetActorProxy)
Q4018621Trigger.defaultAlias = "Q4018621Trigger"
local Q40186ClientConfig = require("Quest/Client/Q40186ClientConfig")

local this
local subIDs = Q40186ClientConfig.SubIDs
local datas = Q40186ClientConfig.Datas
local npcs = Q40186ClientConfig.Npcs
local points = Q40186ClientConfig.Points

function Q4018621Trigger:OnPostDataPrepare()
    print("Q4018621Trigger - OnPostDataPrepare")
    this = self
end

function Q4018621Trigger:OnPostComponentPrepare()
    print("Q4018621Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40186)
end

function Q4018621Trigger:TriggerIn()
    print("Q4018621Trigger - TriggerIn")
    actorMgr:GetActor("40186"):PlayerEnterDungeonWithData(1, 1234, 4018621, 1, nil, nil, nil)
    this:DestroySelf()
end

function Q4018621Trigger:PreTriggerIn()
    print("Q4018621Trigger - PreTriggerIn")
end

function Q4018621Trigger:LightUpTriggerIn()
    print("Q4018621Trigger - LightUpTriggerIn")
end

function Q4018621Trigger:TriggerOut()
    print("Q4018621Trigger - TriggerOut")
end

return Q4018621Trigger
