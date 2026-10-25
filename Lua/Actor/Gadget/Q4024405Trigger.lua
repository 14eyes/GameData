require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4024405Trigger = class("Q4024405Trigger", GadgetActorProxy)
Q4024405Trigger.defaultAlias = "Q4024405Trigger"
local Q40244ClientConfig = require("Quest/Client/Q40244ClientConfig")

local this
local subIDs = Q40244ClientConfig.SubIDs
local datas = Q40244ClientConfig.Datas
local npcs = Q40244ClientConfig.Npcs
local points = Q40244ClientConfig.Points

function Q4024405Trigger:OnPostDataPrepare()
    print("Q4024405Trigger - OnPostDataPrepare")
    this = self
end

function Q4024405Trigger:OnPostComponentPrepare()
    print("Q4024405Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40244)
end

function Q4024405Trigger:TriggerIn()
    print("Q4024405Trigger - TriggerIn")
    actorMgr:GetActor("40244"):PlayerEnterDungeonWithData(2, 1327, 4024405, 1, datas.PlayerEnterDungeonDataNormal, nil, nil)
    this:DestroySelf()
end

function Q4024405Trigger:PreTriggerIn()
    print("Q4024405Trigger - PreTriggerIn")
end

function Q4024405Trigger:LightUpTriggerIn()
    print("Q4024405Trigger - LightUpTriggerIn")
end

function Q4024405Trigger:TriggerOut()
    print("Q4024405Trigger - TriggerOut")
end

return Q4024405Trigger
