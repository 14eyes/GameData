require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022316Trigger = class("Q4022316Trigger", GadgetActorProxy)
Q4022316Trigger.defaultAlias = "Q4022316Trigger"
local Q40223ClientConfig = require("Quest/Client/Q40223ClientConfig")

local this
local subIDs = Q40223ClientConfig.SubIDs
local datas = Q40223ClientConfig.Datas
local npcs = Q40223ClientConfig.Npcs
local points = Q40223ClientConfig.Points

function Q4022316Trigger:OnPostDataPrepare()
    print("Q4022316Trigger - OnPostDataPrepare")
    this = self
end

function Q4022316Trigger:OnPostComponentPrepare()
    print("Q4022316Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40223)
end

function Q4022316Trigger:TriggerIn()
    print("Q4022316Trigger - TriggerIn")
    actorMgr:GetActor("40223"):PlayerEnterDungeonWithData(1775, 1284, 4022316, 1, datas.PlayerEnterDungeonData4022208, nil, nil)
end

function Q4022316Trigger:PreTriggerIn()
    print("Q4022316Trigger - PreTriggerIn")
end

function Q4022316Trigger:LightUpTriggerIn()
    print("Q4022316Trigger - LightUpTriggerIn")
end

function Q4022316Trigger:TriggerOut()
    print("Q4022316Trigger - TriggerOut")
end

return Q4022316Trigger
