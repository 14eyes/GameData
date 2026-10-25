require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022208Trigger = class("Q4022208Trigger", GadgetActorProxy)
Q4022208Trigger.defaultAlias = "Q4022208Trigger"
local Q40222ClientConfig = require("Quest/Client/Q40222ClientConfig")

local this
local subIDs = Q40222ClientConfig.SubIDs
local datas = Q40222ClientConfig.Datas
local npcs = Q40222ClientConfig.Npcs
local points = Q40222ClientConfig.Points

function Q4022208Trigger:OnPostDataPrepare()
    print("Q4022208Trigger - OnPostDataPrepare")
    this = self
end

function Q4022208Trigger:OnPostComponentPrepare()
    print("Q4022208Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40222)
end

function Q4022208Trigger:TriggerIn()
    print("Q4022208Trigger - TriggerIn")
    actorMgr:GetActor("40222"):PlayerEnterDungeonWithData(1773, 1283, 4022208, 1, datas.PlayerEnterDungeonData4022208, nil, nil)
    this:DestroySelf()
end

function Q4022208Trigger:PreTriggerIn()
    print("Q4022208Trigger - PreTriggerIn")
end

function Q4022208Trigger:LightUpTriggerIn()
    print("Q4022208Trigger - LightUpTriggerIn")
end

function Q4022208Trigger:TriggerOut()
    print("Q4022208Trigger - TriggerOut")
end

return Q4022208Trigger
