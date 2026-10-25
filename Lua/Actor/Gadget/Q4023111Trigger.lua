require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4023111Trigger = class("Q4023111Trigger", GadgetActorProxy)
Q4023111Trigger.defaultAlias = "Q4023111Trigger"
local Q40231ClientConfig = require("Quest/Client/Q40231ClientConfig")

local this
local subIDs = Q40231ClientConfig.SubIDs
local datas = Q40231ClientConfig.Datas
local npcs = Q40231ClientConfig.Npcs
local points = Q40231ClientConfig.Points

function Q4023111Trigger:OnPostDataPrepare()
    print("Q4023111Trigger - OnPostDataPrepare")
    this = self
end

function Q4023111Trigger:OnPostComponentPrepare()
    print("Q4023111Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(150, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40231)
end

function Q4023111Trigger:TriggerIn()
    print("Q4023111Trigger - TriggerIn")
    actorMgr:GetActor("40231"):PlayerEnterDungeonWithData(7, 1304, 4023111, 1, datas.PlayerEnterDungeonData_BB, nil, nil)
    this:DestroySelf()
end

function Q4023111Trigger:PreTriggerIn()
    print("Q4023111Trigger - PreTriggerIn")
end

function Q4023111Trigger:LightUpTriggerIn()
    print("Q4023111Trigger - LightUpTriggerIn")
end

function Q4023111Trigger:TriggerOut()
    print("Q4023111Trigger - TriggerOut")
end

return Q4023111Trigger
