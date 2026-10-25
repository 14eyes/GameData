require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022214Trigger = class("Q4022214Trigger", GadgetActorProxy)
Q4022214Trigger.defaultAlias = "Q4022214Trigger"
local Q40222ClientConfig = require("Quest/Client/Q40222ClientConfig")

local this
local subIDs = Q40222ClientConfig.SubIDs
local datas = Q40222ClientConfig.Datas
local npcs = Q40222ClientConfig.Npcs
local points = Q40222ClientConfig.Points

function Q4022214Trigger:OnPostDataPrepare()
    print("Q4022214Trigger - OnPostDataPrepare")
    this = self
end

function Q4022214Trigger:OnPostComponentPrepare()
    print("Q4022214Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40222)
end

function Q4022214Trigger:TriggerIn()
    print("Q4022214Trigger - TriggerIn")
    actorMgr:GetActor("40222"):PlayerEnterDungeonWithData(1779, 1286, 4022214, 2, datas.PlayerEnterDungeonData4022208, nil, nil)
    this:DestroySelf()
end

function Q4022214Trigger:PreTriggerIn()
    print("Q4022214Trigger - PreTriggerIn")
end

function Q4022214Trigger:LightUpTriggerIn()
    print("Q4022214Trigger - LightUpTriggerIn")
end

function Q4022214Trigger:TriggerOut()
    print("Q4022214Trigger - TriggerOut")
end

return Q4022214Trigger
